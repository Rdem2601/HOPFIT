//= require jquery
//= require jquery_ujs
//= require components/swipebox.js
//= require bootstrap-sprockets
//= require underscore
//= require gmaps/google
//= require_tree .

 // $(function() {
 //   $(window).scroll(function() {
 //     var bottom_without_offre = $(window).height() - $(".navbar-wagon").height() - $(".gym-banner").height();
 //     var bottom_with_offre = $(window).height() - $(".navbar-wagon").height() - $(".gym-banner").height() - $(".offre").height();
//     if($(window).scrollTop() > bottom_without_offre) {
//       $("#mobilecta").removeClass("btn-mobile");
//       $("#mobilecta").addClass("btn-mobile-fixed");
//     } else if($(window).scrollTop() < bottom_with_offre) {
//       $("#mobilecta").removeClass("btn-mobile-fixed");
//       $("#mobilecta").addClass("btn-mobile");
//     };
//   });
// });

;( function( $ ) {

    $( '.swipebox' ).swipebox();

} )( jQuery );
