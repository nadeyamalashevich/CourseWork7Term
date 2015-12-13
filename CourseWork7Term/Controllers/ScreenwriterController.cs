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
    public class ScreenwriterController : Controller
    {
        private CinemaEntities db = new CinemaEntities();

        //
        // GET: /Screenwriter/

        public ActionResult Index()
        {
            return View(db.screenwriter.ToList());
        }

        //
        // GET: /Screenwriter/Details/5

        public ActionResult Details(int id = 0)
        {
            screenwriter screenwriter = db.screenwriter.Find(id);
            if (screenwriter == null)
            {
                return HttpNotFound();
            }
            return View(screenwriter);
        }

        //
        // GET: /Screenwriter/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Screenwriter/Create

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(screenwriter screenwriter)
        {
            if (ModelState.IsValid)
            {
                db.screenwriter.Add(screenwriter);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(screenwriter);
        }

        //
        // GET: /Screenwriter/Edit/5

        public ActionResult Edit(int id = 0)
        {
            screenwriter screenwriter = db.screenwriter.Find(id);
            if (screenwriter == null)
            {
                return HttpNotFound();
            }
            return View(screenwriter);
        }

        //
        // POST: /Screenwriter/Edit/5

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(screenwriter screenwriter)
        {
            if (ModelState.IsValid)
            {
                db.Entry(screenwriter).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(screenwriter);
        }

        //
        // GET: /Screenwriter/Delete/5

        public ActionResult Delete(int id = 0)
        {
            screenwriter screenwriter = db.screenwriter.Find(id);
            if (screenwriter == null)
            {
                return HttpNotFound();
            }
            return View(screenwriter);
        }

        //
        // POST: /Screenwriter/Delete/5

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            screenwriter screenwriter = db.screenwriter.Find(id);
            db.screenwriter.Remove(screenwriter);
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