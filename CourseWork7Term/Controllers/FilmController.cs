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
        public ActionResult Edit(film film)
        {
            if (ModelState.IsValid)
            {
                db.Entry(film).State = EntityState.Modified;
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