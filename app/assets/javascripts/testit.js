
function test_via_button() {
  $.post('/testit.json', { photo: "foo"})
    .done(function(data) {
      alert("Success! " + data);
    })
    .fail(function(a, b, c) {
      alert("Error: " + a + ", " + b + ", " + c);
    });
}