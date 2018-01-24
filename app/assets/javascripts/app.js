angular.module('todoList', ['ui.router', 'templates', 'Devise', 'ngFlash',
'angular-loading-bar', '720kb.datepicker', 'angularFileUpload']).config([
'$stateProvider',
'$urlRouterProvider',
function($stateProvider, $urlRouterProvider) {
  $stateProvider
    .state('home', {
      url: '/',
      templateUrl: 'assets/templates/home/home.html',
      controller: 'ProjectCtrl',
      onEnter: ['$state', 'Auth', function($state, Auth) {
        Auth.currentUser().then(function (){},
          function (){
           $state.go('login');
         })
      }]
    })
    .state('login', {
      url: '/login',
      templateUrl: 'assets/templates/auth/login.html',
      controller: 'AuthCtrl',
      onEnter: ['$state', 'Auth', function($state, Auth) {
        Auth.currentUser().then(function (){
          $state.go('home');
        })
      }]
    })
    .state('register', {
      url: '/signup',
      templateUrl: 'assets/templates/auth/register.html',
      controller: 'AuthCtrl',
      onEnter: ['$state', 'Auth', function($state, Auth) {
        Auth.currentUser().then(function (){
          $state.go('home');
        })
      }]
    });

  $urlRouterProvider.otherwise('/');
}]);
