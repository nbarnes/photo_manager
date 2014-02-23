# Place all the behaviors and hooks related to the matching controller here.

$ ->
  $('#photo_tag_list').select2({tags:[], 'width':'resolve', tokenSeparators: [",", " "]})
