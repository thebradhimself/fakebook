# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  $('.post-something').click ->
    $.ajax '/statuses',
      type: 'POST'
      data: status: {status_update: $('.post-something').data('post'), user_id: $('.post-something').data('user')}
      success: (data) ->
        console.log data
        $('#status-table').prepend("<tr><td>" + $('.post-something').data('username') + " says: <br> " + data.post + "</td></tr>")
      error: (data) ->
        console.log data

  $('.post-something-smart').click ->
    $.ajax '/statuses',
      type: 'POST'
      data: status: {status_update: $('.post-something-smart').data('post'), user_id: $('.post-something-smart').data('user')}
      success: (data) ->
        $('#status-table').prepend("<tr><td>" + $('.post-something-smart').data('username') + " says: <br> " + data.post + "</td></tr>")
      error: (data) ->
        console.log data

  $('.post-something-short').click ->
    $.ajax '/statuses',
      type: 'POST'
      data: status: {status_update: $('.post-something-short').data('post'), user_id: $('.post-something-short').data('user')}
      success: (data) ->
        $('#status-table').prepend("<tr><td>" + $('.post-something-short').data('username') + " says: <br> " + data.post + "</td></tr>")
      error: (data) ->
        console.log data

  $('.post-something-long').click ->
    $.ajax '/statuses',
      type: 'POST'
      data: status: {status_update: $('.post-something-long').data('post'), user_id: $('.post-something-long').data('user')}
      success: (data) ->
        $('#status-table').prepend("<tr><td>" + $('.post-something-long').data('username') + " says: <br> " + data.post + "</td></tr>")
      error: (data) ->
        console.log data

  $('.post-something-latin').click ->
    $.ajax '/statuses',
      type: 'POST'
      data: status: {status_update: $('.post-something-latin').data('post'), user_id: $('.post-something-latin').data('user')}
      success: (data) ->
        $('#status-table').prepend("<tr><td>" + $('.post-something-latin').data('username') + " says: <br> " + data.post + "</td></tr>")
      error: (data) ->
        console.log data
