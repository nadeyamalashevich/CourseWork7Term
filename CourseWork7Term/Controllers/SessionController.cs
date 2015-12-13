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
    public class SessionController : Controller
    {
        private CinemaEntities db = new CinemaEntities();

        //
        // GET: /Session/

        public ActionResult Index()
        {
            var session = db.session.Include(s => s.cinema).Include(s => s.film);
            return View(session.ToList());
        }

        //
        // GET: /Session/Details/5

        public ActionResult Details(int cinema_id = 0, int film_id = 0)
        {
            session session = db.session.Find(cinema_id, film_id);
            if (session == null)
            {
                return HttpNotFound();
            }
            return View(session);
        }

        //
        // GET: /Session/Create

        public ActionResult Create()
        {
            ViewBag.cinema_id = new SelectList(db.cinema, "id", "name");
            ViewBag.film_id = new SelectList(db.film, "id", "name");
            return View();
        }

        //
        // POST: /Session/Create

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(session session)
        {
            if (ModelState.IsValid)
            {
                var cinemas = db.cinema.Where(x => x.id == session.cinema_id).ToList();
                if(cinemas != null && cinemas.Any())
                {
                    var cinema = cinemas.First();
                    var item = db.Entry<cinema>(cinema);
                    item.Collection(x => x.place).Load();
                    foreach(var place in cinema.place)
                    {
                        db.Entry(place).State = EntityState.Modified;
                        db.ticket.Add(new ticket()
                        {
                            session = session,
                            place = place,
                            is_bought = false,
                            place_id = place.id,
                            cinema_id = session.cinema_id,
                            film_id = session.film_id
                        });
                    }
                    
                }
                db.session.Add(session);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.cinema_id = new SelectList(db.cinema, "id", "name", session.cinema_id);
            ViewBag.film_id = new SelectList(db.film, "id", "name", session.film_id);
            return View(session);
        }

        //
        // GET: /Session/Edit/5

        public ActionResult Edit(int cinema_id = 0, int film_id = 0)
        {
            session session = db.session.Find(cinema_id, film_id);
            if (session == null)
            {
                return HttpNotFound();
            }
            ViewBag.cinema_id = new SelectList(db.cinema, "id", "name", session.cinema_id);
            ViewBag.film_id = new SelectList(db.film, "id", "name", session.film_id);
            return View(session);
        }

        //
        // POST: /Session/Edit/5

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(session session)
        {
            if (ModelState.IsValid)
            {
                db.Entry(session).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.cinema_id = new SelectList(db.cinema, "id", "name", session.cinema_id);
            ViewBag.film_id = new SelectList(db.film, "id", "name", session.film_id);
            return View(session);
        }

        //
        // GET: /Session/Delete/5

        public ActionResult Delete(int cinema_id = 0, int film_id = 0)
        {
            session session = db.session.Find(cinema_id, film_id);
            if (session == null)
            {
                return HttpNotFound();
            }
            return View(session);
        }

        //
        // POST: /Session/Delete/5

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int cinema_id, int film_id)
        {
            session session = db.session.Find(cinema_id, film_id);
            db.session.Remove(session);
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