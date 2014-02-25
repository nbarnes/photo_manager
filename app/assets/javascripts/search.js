$(document).ready(function() {
  $('#search_button').click(function() {
    search( $('#search_term_field').val() )
  });
});

function search(search_term) {
  $.post('/searches.json', { search: search_term })
    .done(function(data) {
      insert_search_results_page(data)
    })
    .fail(function() {
      alert('Error executing search JSON request, bob');
    });
}

function insert_search_results_page(data) {
  $('body').empty()
  $('body').html(data.html)
  alert("Success! " + data);
}