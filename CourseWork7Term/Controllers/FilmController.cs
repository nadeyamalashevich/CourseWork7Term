using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CourseWork7Term.Models;

namespace CourseWork7Term.Controllers
{
    [Authorize(Roles = "admin")]
    public class FilmController : Controller
    {
        private CinemaEntities db = new CinemaEntities();

        //
        // GET: /Film/

        public ActionResult Index()
        {
            return View(db.film.ToList());
        }

        //
        // GET: /Film/Details/5

        public ActionResult Details(int id = 0)
        {
            film film = db.film.Find(id);
            if (film == null)
            {
                return HttpNotFound();
            }
            return View(film);
        }

        //
        // GET: /Film/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Film/Create

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(film film)
        {
            if (ModelState.IsValid)
            {
                db.film.Add(film);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(film);
        }

        //
        // GET: /Film/Edit/5

        public ActionResult Edit(int id = 0)
        {
            ViewBag.Actor = db.actor.ToList();
            ViewBag.Genre = db.genre.ToList();
            ViewBag.Producer = db.producer.ToList();
            ViewBag.Screenwriter = db.screenwriter.ToList();
            ViewBag.Country = db.country.ToList();
            film film = db.film.Find(id);
            if (film == null)
            {
                return HttpNotFound();
            }
            return View(film);
        }

        //
        // POST: /Film/Edit/5

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(film film, 
            int[] selectedActors, 
            int[] selectedGenres, 
            int[] selectedProducers, 
            int[] selectedScreenwriters, 
            int[] selectedCountry)
        {
            if (ModelState.IsValid)
            {
                //get current entry from db (db is context)
                var item = db.Entry<film>(film);

                //change item state to modified
                item.State = EntityState.Modified;

                //load existing items for ManyToMany collection
                item.Collection(x => x.actor).Load();
                item.Collection(x => x.genre).Load();
                item.Collection(x => x.producer).Load();
                item.Collection(x => x.screenwriter).Load();
                item.Collection(x => x.country).Load();

                //clear Student items          
                film.actor.Clear();
                film.genre.Clear();
                film.producer.Clear();
                film.screenwriter.Clear();
                film.country.Clear();

                //add Toner items
                foreach (var actorId in selectedActors)
                {
                    var actor = db.actor.Find(actorId);
                    film.actor.Add(actor);
                }

                foreach (var genreId in selectedGenres)
                {
                    var genre = db.genre.Find(genreId);
                    film.genre.Add(genre);
                }

                foreach (var producerId in selectedProducers)
                {
                    var producer = db.producer.Find(producerId);
                    film.producer.Add(producer);
                }

                foreach (var screenwriterId in selectedScreenwriters)
                {
                    var screenwriter = db.screenwriter.Find(screenwriterId);
                    film.screenwriter.Add(screenwriter);
                }

                foreach (var countryId in selectedCountry)
                {
                    var country = db.country.Find(countryId);
                    film.country.Add(country);
                }


                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(film);
        }

        //
        // GET: /Film/Delete/5

        public ActionResult Delete(int id = 0)
        {
            film film = db.film.Find(id);
            if (film == null)
            {
                return HttpNotFound();
            }
            return View(film);
        }

        //
        // POST: /Film/Delete/5

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            film film = db.film.Find(id);
            db.film.Remove(film);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}