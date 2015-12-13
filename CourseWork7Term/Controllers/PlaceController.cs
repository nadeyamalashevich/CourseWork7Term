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
    public class PlaceController : Controller
    {
        private CinemaEntities db = new CinemaEntities();

        //
        // GET: /Place/

        public ActionResult Index()
        {
            return View(db.place.ToList());
        }

        //
        // GET: /Place/Details/5

        public ActionResult Details(int id = 0)
        {
            place place = db.place.Find(id);
            if (place == null)
            {
                return HttpNotFound();
            }
            return View(place);
        }

        //
        // GET: /Place/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Place/Create

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(place place)
        {
            if (ModelState.IsValid)
            {
                db.place.Add(place);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(place);
        }

        //
        // GET: /Place/Edit/5

        public ActionResult Edit(int id = 0)
        {
            place place = db.place.Find(id);
            if (place == null)
            {
                return HttpNotFound();
            }
            return View(place);
        }

        //
        // POST: /Place/Edit/5

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(place place)
        {
            if (ModelState.IsValid)
            {
                db.Entry(place).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(place);
        }

        //
        // GET: /Place/Delete/5

        public ActionResult Delete(int id = 0)
        {
            place place = db.place.Find(id);
            if (place == null)
            {
                return HttpNotFound();
            }
            return View(place);
        }

        //
        // POST: /Place/Delete/5

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            place place = db.place.Find(id);
            db.place.Remove(place);
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