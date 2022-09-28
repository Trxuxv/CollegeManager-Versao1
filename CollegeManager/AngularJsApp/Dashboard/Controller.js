dashboardApp.controller('dashboardCtrl', function ($scope, dashboardService) {

    loadData();

    $scope.getNumber = function (num) {
        return new Array(num);
    }

    function loadData() {
        var list = dashboardService.getData();

        list.then(function (d) {
            console.log(d.data)
            $scope.Data = d.data;
            $scope.Students = d.data[0].Students;
            $scope.Teachers = d.data[0].Teachers;
            $scope.GradeAVG = d.data[0].GradeAVG;
            $scope.Courses = d.data[0].Courses;
        },
            function (erro) {
                console.log(erro)
                alert("Error: get data");
            });
    }
});