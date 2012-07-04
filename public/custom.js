$(document).ready = function() {
  setInterval(function() {
    helpers.fetchNewMessages(function(messages) {
      for(index in messages) {
        helpers.renderMessage(messages[index]);
      }
    });
  }, 1000);
}();

$(document).on("keypress", "#input_message", function(e) {
  var message = $("#input_message").val();
  if(e.keyCode == 13) {
    e.preventDefault();
    helpers.sendMessage(message);
    $("#input_message").val('');
  }
});
