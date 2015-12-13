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
    public class MarkController : Controller
    {
        private CinemaEntities db = new CinemaEntities();

        //
        // GET: /Mark/

        public ActionResult Index()
        {
            return View(db.mark.ToList());
        }

        //
        // GET: /Mark/Details/5

        public ActionResult Details(int id = 0)
        {
            mark mark = db.mark.Find(id);
            if (mark == null)
            {
                return HttpNotFound();
            }
            return View(mark);
        }

        //
        // GET: /Mark/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Mark/Create

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(mark mark)
        {
            if (ModelState.IsValid)
            {
                db.mark.Add(mark);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(mark);
        }

        //
        // GET: /Mark/Edit/5

        public ActionResult Edit(int id = 0)
        {
            mark mark = db.mark.Find(id);
            if (mark == null)
            {
                return HttpNotFound();
            }
            return View(mark);
        }

        //
        // POST: /Mark/Edit/5

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(mark mark)
        {
            if (ModelState.IsValid)
            {
                db.Entry(mark).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(mark);
        }

        //
        // GET: /Mark/Delete/5

        public ActionResult Delete(int id = 0)
        {
            mark mark = db.mark.Find(id);
            if (mark == null)
            {
                return HttpNotFound();
            }
            return View(mark);
        }

        //
        // POST: /Mark/Delete/5

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            mark mark = db.mark.Find(id);
            db.mark.Remove(mark);
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