courseApp.controller('courseCtrl', function ($scope, courseService) {

    loadCourses();

    function loadCourses() {
        var listCourses = courseService.getAllCourses();

        listCourses.then(function (d) {
            $scope.Courses = d.data;
        },
            function () {
                alert("Ocorreu um erro ao tentar listar todos os curs!");
            });
    }

    $scope.addCourse = function () {

        var course = {
            courseId: $scope.courseId,
            name: $scope.name,
            duration: $scope.duration,
            category: $scope.category,
            teacherId: $scope.teacherId,
        };

        var adicionarInfos = courseService.addCourse(course);

        adicionarInfos.then(function (d) {
            if (d.data.success === true) {
                loadCourses();
                alert("Curso Adicionado com Sucesso!");

                $scope.limparDados();
            } else { alert("Curso não Adicionado!"); }
        },
            function () {
                alert("Ocorreu um erro ao tentar adicionar um novo Curso!");
            });
    }

    $scope.clearData = function () {
        $scope.courseId = "";
        $scope.name = "";
        $scope.duration = "";
        $scope.category = "";
        $scope.teacherId = "";
    }

    $scope.updateCourseById = function (course) {
        $scope.UpdatedCourseId = course.CourseId,
        $scope.UpdatedName = course.Name;
        $scope.UpdatedDuration = course.Duration;
        $scope.UpdatedCategory = course.Category;
        $scope.UpdatedTeacherId = course.TeacherId;
    }

    $scope.updateCourse = function () {
        var course = {
            CourseId: $scope.UpdatedCourseId,
            Name: $scope.UpdatedName,
            Duration: $scope.UpdatedDuration,
            Category: $scope.UpdatedCategory,
            TeacherId: $scope.UpdatedTeacherId,
        };
        var refreshInfos = courseService.updateCourse(course);
        refreshInfos.then(function (d) {
            if (d.data.success === true) {
                loadCourses();
                alert("Course updated successfuly!");
                $scope.clearUpdatedData();
            }
            else {
                alert("Curso não Atualizado");
            }
        },
            function () {
                alert("Ocorreu um erro ao tentar atualizar o Curso!");
            });
    }

    $scope.clearUpdatedData = function () {
        $scope.UpdatedCourseId = '';
        $scope.UpdatedName = '';
        $scope.UpdatedDuration = '';
        $scope.UpdatedCategory = '';
        $scope.UpdatedTeacherId = '';
    }

    $scope.deleteCourseById = function (course) {
        $scope.UpdatedCourseId = course.CourseId;
        $scope.UpdatedName = course.Name;
    }

    $scope.deleteCourse = function (UpdatedCourseId) {

        var deleteInfos = courseService.deleteCourse($scope.UpdatedCourseId);
        deleteInfos.then(function (d) {

            if (d.data.success === true) {
                loadCourses();

                alert("Curso excluído com Sucesso!");
            }
            else {
                alert("Curso não excluído!");
            }
        });
    }
});