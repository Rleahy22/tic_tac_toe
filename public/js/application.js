$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them
  var player1 = "<img src=\"/images/O.jpg\">";
  var player2 = "<img src=\"/images/X.png\">";

  $('li').click(function(){
    $(this).html(player2);
  });
});
