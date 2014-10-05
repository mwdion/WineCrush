$(document).ready(function() {
$(".search_wines").click( function() {
    console.log("hola");
    console.log($('.wine_search').val())
    $.ajax({
      url: "/wines_search",
      dataType: "script",
      type: "GET",
      data: {q: $('.wine_search').val()}
    })
  })
  })