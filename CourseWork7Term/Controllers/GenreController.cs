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
    public class GenreController : Controller
    {
        private CinemaEntities db = new CinemaEntities();

        //
        // GET: /Genre/

        public ActionResult Index()
        {
            return View(db.genre.ToList());
        }

        //
        // GET: /Genre/Details/5

        public ActionResult Details(int id = 0)
        {
            genre genre = db.genre.Find(id);
            if (genre == null)
            {
                return HttpNotFound();
            }
            return View(genre);
        }

        //
        // GET: /Genre/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Genre/Create

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(genre genre)
        {
            if (ModelState.IsValid)
            {
                db.genre.Add(genre);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(genre);
        }

        //
        // GET: /Genre/Edit/5

        public ActionResult Edit(int id = 0)
        {
            genre genre = db.genre.Find(id);
            if (genre == null)
            {
                return HttpNotFound();
            }
            return View(genre);
        }

        //
        // POST: /Genre/Edit/5

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(genre genre)
        {
            if (ModelState.IsValid)
            {
                db.Entry(genre).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(genre);
        }

        //
        // GET: /Genre/Delete/5

        public ActionResult Delete(int id = 0)
        {
            genre genre = db.genre.Find(id);
            if (genre == null)
            {
                return HttpNotFound();
            }
            return View(genre);
        }

        //
        // POST: /Genre/Delete/5

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            genre genre = db.genre.Find(id);
            db.genre.Remove(genre);
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