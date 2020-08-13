window.onload = function() {
  var elements = document.getElementsByClassName("upcoming-session-date");
  for (var i = 0; i < elements.length; i++) {
    var utcDateString = elements[i].innerHTML;
    var date = new Date(utcDateString);
    localDate = moment(date).format("MMM DD h:mma (UTCZ)");
    elements[i].innerHTML = localDate;
  }
}
