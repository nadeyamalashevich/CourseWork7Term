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
    public class ProducerController : Controller
    {
        private CinemaEntities db = new CinemaEntities();

        //
        // GET: /Producer/

        public ActionResult Index()
        {
            return View(db.producer.ToList());
        }

        //
        // GET: /Producer/Details/5

        public ActionResult Details(int id = 0)
        {
            producer producer = db.producer.Find(id);
            if (producer == null)
            {
                return HttpNotFound();
            }
            return View(producer);
        }

        //
        // GET: /Producer/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Producer/Create

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(producer producer)
        {
            if (ModelState.IsValid)
            {
                db.producer.Add(producer);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(producer);
        }

        //
        // GET: /Producer/Edit/5

        public ActionResult Edit(int id = 0)
        {
            producer producer = db.producer.Find(id);
            if (producer == null)
            {
                return HttpNotFound();
            }
            return View(producer);
        }

        //
        // POST: /Producer/Edit/5

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(producer producer)
        {
            if (ModelState.IsValid)
            {
                db.Entry(producer).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(producer);
        }

        //
        // GET: /Producer/Delete/5

        public ActionResult Delete(int id = 0)
        {
            producer producer = db.producer.Find(id);
            if (producer == null)
            {
                return HttpNotFound();
            }
            return View(producer);
        }

        //
        // POST: /Producer/Delete/5

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            producer producer = db.producer.Find(id);
            db.producer.Remove(producer);
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