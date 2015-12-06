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
    public class CinemaController : Controller
    {
        private CinemaEntities db = new CinemaEntities();

        //
        // GET: /Cinema/

        public ActionResult Index()
        {
            return View(db.cinema.ToList());
        }

        //
        // GET: /Cinema/Details/5

        public ActionResult Details(int id = 0)
        {
            cinema cinema = db.cinema.Find(id);
            if (cinema == null)
            {
                return HttpNotFound();
            }
            return View(cinema);
        }

        //
        // GET: /Cinema/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Cinema/Create

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(cinema cinema)
        {
            if (ModelState.IsValid)
            {
                db.cinema.Add(cinema);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(cinema);
        }

        //
        // GET: /Cinema/Edit/5

        public ActionResult Edit(int id = 0)
        {
            cinema cinema = db.cinema.Find(id);
            if (cinema == null)
            {
                return HttpNotFound();
            }
            return View(cinema);
        }

        //
        // POST: /Cinema/Edit/5

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(cinema cinema)
        {
            if (ModelState.IsValid)
            {
                db.Entry(cinema).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(cinema);
        }

        //
        // GET: /Cinema/Delete/5

        public ActionResult Delete(int id = 0)
        {
            cinema cinema = db.cinema.Find(id);
            if (cinema == null)
            {
                return HttpNotFound();
            }
            return View(cinema);
        }

        //
        // POST: /Cinema/Delete/5

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            cinema cinema = db.cinema.Find(id);
            db.cinema.Remove(cinema);
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