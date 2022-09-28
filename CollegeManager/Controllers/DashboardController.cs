using CollegeManager.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CollegeManager.Controllers
{
    public class DashboardController : Controller
    {
        // GET: Dashboard
        public ActionResult Index()
        {
            return View();
        }


        [HttpGet]
        public JsonResult GetData()
        {
            using (var db = new Database())
            {
                var students = db.Students.Count();
                var grades = db.Grades.Average(x => x.GradeDescription);
                var teachers = db.Teachers.Count();
                var courses = db.Courses.Count();

                var res = db.Courses.Select(x => new
                {
                    Name = x.Name,
                    StudentsInCourses = x.Students.Count(),
                    TeachersInCourses = 2,
                    Students = students,
                    GradeAVG = grades,
                    Teachers = teachers,
                    Courses = courses
                }).ToList();

                return Json(res, JsonRequestBehavior.AllowGet);
            }
        }
    }
}