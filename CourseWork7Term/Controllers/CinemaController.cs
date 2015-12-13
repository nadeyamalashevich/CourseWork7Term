using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CourseWork7Term.Models;
using WebMatrix.WebData;

namespace CourseWork7Term.Controllers
{
    [Authorize(Roles = "admin")]
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
            ViewBag.Places = db.place.ToList();
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
        public ActionResult Edit(cinema cinema, int[] selectedPlaces)
        {
            if (ModelState.IsValid)
            {
                if (selectedPlaces != null)
                {
                    //get current entry from db (db is context)
                    var item = db.Entry<cinema>(cinema);

                    //change item state to modified
                    item.State = EntityState.Modified;

                    //load existing items for ManyToMany collection
                    item.Collection(x => x.place).Load();

                    //clear Student items          
                    cinema.place.Clear();

                    //add Toner items
                    foreach (var placeId in selectedPlaces)
                    {
                        var place = db.place.Find(placeId);
                        cinema.place.Add(place);
                    }
                }
                var t = db.SaveChanges();
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