"use strict";
(function () {
	angular.module("peopleApp", ["ngRoute"])
		.config(["$routeProvider", function ($routeProvider) {
		$routeProvider.when("/", {
			templateUrl: "/SiteAssets/People/templates/people/all.html",
			controller: "allPeopleCtrl"
		}).when("/addPerson", {
			templateUrl: "/SiteAssets/People/templates/people/add.html",
			controller: "addPersonCtrl"
		}).when("/editPerson/:personId", {
			templateUrl: "/SiteAssets/People/templates/people/edit.html",
			controller: "editPersonCtrl"
		});
	}]);
})();