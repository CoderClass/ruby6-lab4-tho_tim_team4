// app/assets/javascripts/messages.js
window.updateMessagesViaJSON = function() {
  console.log("inside updateMessagesViaJSON");
  $.getJSON("path to messages json here", function(messages) {
    // this is the data you receive from http://localhost:3000/rooms/1/messages.json
    // loop through the messages and render them
    // you can use $(".messages").append("blah")
    // to add blah to the <div class="messages">...</div> element
  })
}
