# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  $('.post-something').click ->
    $.ajax '/statuses',
      type: 'POST'
      data: status: {status_update: $('.post-something').data('post'), user_id: $('.post-something').data('user')}
      success: (data) ->
        $('#status-table').prepend("<tr><td>" + $('.post-something').data('post') + "</td></tr>")
      error: (data) ->
        console.log data
