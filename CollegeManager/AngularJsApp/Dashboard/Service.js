dashboardApp.service('dashboardService', function ($http) {

    this.getData = function () {
        return $http.get("/Dashboard/GetData");
    }
});