using CourseWork7Term.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebMatrix.WebData;

namespace CourseWork7Term.Controllers
{
    public class HomeController : Controller
    {
        private CinemaEntities db = new CinemaEntities();

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Услуги сервиса:";

            return View();
        }

        public ActionResult Contact()
        {
            return View();
        }

        [Authorize]
        public ActionResult Search(int Films = -1, int Actors = -1, int Producers = -1, int Screenwriters = -1, int Cinemas = -1)
        {
            ViewBag.Cinemas = new SelectList(db.cinema, "id", "name");
            ViewBag.Films = new SelectList(db.film, "id", "name");
            ViewBag.Actors = new SelectList(db.actor, "id", "name");
            ViewBag.Producers = new SelectList(db.producer, "id", "name");
            ViewBag.Screenwriters = new SelectList(db.screenwriter, "id", "name");
            var res = db.session.Where(x => true);
            if (Films != -1)
            {
                var films = db.film.Where(x=>x.id == Films).ToArray();
                if(films != null && films.Any())
                {
                    var film = films.First();
                    res = res.Where(x => x.film_id == film.id);
                }                
            }

            if (Actors != -1)
            {
                var actors = db.actor.Where(x => x.id == Actors).ToArray();
                if (actors != null && actors.Any())
                {
                    var curActor = actors.First();
                    var filmIds = db.film.ToArray().Where(x => x.actor.Contains(curActor)).Select(x => x.id);
                    res = res.Where(x => filmIds.Contains(x.film_id));
                }
            }

            if (Producers != -1)
            {
                var producers = db.producer.Where(x => x.id == Producers).ToArray();
                if (producers != null && producers.Any())
                {
                    var producer = producers.First();
                    var filmIds = db.film.ToArray().Where(x => x.producer.Contains(producer)).Select(x => x.id);
                    res = res.Where(x => filmIds.Contains(x.film_id));
                }
            }

            if (Screenwriters != -1)
            {
                var screenwriters = db.screenwriter.Where(x => x.id == Screenwriters).ToArray();
                if (screenwriters != null && screenwriters.Any())
                {
                    var screenwriter = screenwriters.First();
                    var filmIds = db.film.ToArray().Where(x => x.screenwriter.Contains(screenwriter)).Select(x => x.id);
                    res = res.Where(x => filmIds.Contains(x.film_id));
                }
            }

            if(Cinemas != -1)
            {
                var cinemas = db.film.Where(x => x.id == Cinemas).ToArray();
                if (cinemas != null && cinemas.Any())
                {
                    var cinema = cinemas.First();
                    res = res.Where(x => x.cinema_id == cinema.id);
                }  
            }

            return View(res.ToList());
        }

        [Authorize]
        [HttpGet]
        public ActionResult Buy(int cinema_id, int film_id)
        {
            session session = db.session.Find(cinema_id, film_id);
            return View(session);
        }

        [Authorize]
        [HttpPost]
        public ActionResult Buy(string[] tickets)
        {
            if(tickets != null && tickets.Any())
            {
                var profiles = db.profile.Where(x => WebSecurity.CurrentUserName == x.login.Trim()).ToArray();
                if (profiles != null && profiles.Any())
                {
                    var array = db.ticket.ToList().Where(x => tickets
                    .Contains(string.Concat(x.cinema_id, ".", x.film_id, ".", x.place_id)))
                    .ToArray();
                    foreach (var ticket in array)
                    {
                        ticket.buy_date = DateTime.Now;
                        ticket.is_bought = true;
                        ticket.profile_id = profiles.First().id;
                    }

                    db.SaveChanges();
                }                
            }

            return RedirectToAction("Basket", "Home");
        }

        [Authorize]
        public ActionResult Basket()
        {
            var profiles = db.profile.Where(x => WebSecurity.CurrentUserName == x.login.Trim()).ToArray();
            if (profiles != null && profiles.Any())
            {
                var tickets = db.ticket.ToList().Where(x => x.profile_id == profiles.First().id).ToList();
                return View(tickets);
            }

            return View();
        }

        [Authorize]
        public ActionResult Marks(int film_id = -1)
        {
            ViewBag.Marks = db.mark.ToList();
            ViewBag.currentId = db.profile.Where(x => x.login == WebSecurity.CurrentUserName).First().id;
            var res = db.film.Where(x => true);
            if(film_id > -1)
            {
                res = res.Where(x => x.id == film_id);
            }
            
            return View(res.ToList());
        }

        [Authorize]
        [HttpPost]
        public ActionResult Marks(int film_id = -1, int mark = -1)
        {
            mark -= 1;
            if (film_id != -1 && mark != -1 && mark < 5)
            {
                var currectId = db.profile.Where(x => x.login == WebSecurity.CurrentUserName).First().id;
                var marked = db.film_profile_mark.Where(x => x.profile_id == currectId && x.film_id == film_id).ToList();
                if (marked != null && !marked.Any())
                {
                    db.film_profile_mark.Add(new film_profile_mark()
                    {
                        film_id = film_id,
                        mark_id = mark,
                        profile_id = db.profile.Where(x => x.login == WebSecurity.CurrentUserName).First().id
                    });

                    db.SaveChanges();
                }                
            }

            return RedirectToAction("Marks", "Home");
        }

        [Authorize(Roles = "admin")]
        public ActionResult Admin()
        {
            return View();
        }
    }
}
