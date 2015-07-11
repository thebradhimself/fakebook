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
        $('#status-table').prepend('<tr><td><img src="' + $('.post-something').data('image') + '"/></td><td><a href="/' + $('.post-something').data('username') + '">' + $('.post-something').data('username') + "</a> says: <br> " + data.post + "</td></tr>")
      error: (data) ->
        console.log data

  $('.post-something-smart').click ->
    $.ajax '/statuses',
      type: 'POST'
      data: status: {status_update: $('.post-something-smart').data('post'), user_id: $('.post-something-smart').data('user')}
      success: (data) ->
        $('#status-table').prepend('<tr><td><img src="' + $('.post-something-smart').data('image') + '"/></td><td><a href="/' + $('.post-something-smart').data('username') + '">' + $('.post-something-smart').data('username') + "</a> says: <br> " + data.post + "</td></tr>")
      error: (data) ->
        console.log data

  $('.post-something-short').click ->
    $.ajax '/statuses',
      type: 'POST'
      data: status: {status_update: $('.post-something-short').data('post'), user_id: $('.post-something-short').data('user')}
      success: (data) ->
        $('#status-table').prepend('<tr><td><img src="' + $('.post-something-short').data('image') + '"/></td><td><a href="/' + $('.post-something-short').data('username') + '">' + $('.post-something-short').data('username') + "</a> says: <br> " + data.post + "</td></tr>")
      error: (data) ->
        console.log data

  $('.post-something-long').click ->
    $.ajax '/statuses',
      type: 'POST'
      data: status: {status_update: $('.post-something-long').data('post'), user_id: $('.post-something-long').data('user')}
      success: (data) ->
        $('#status-table').prepend('<tr><td><img src="' + $('.post-something-long').data('image') + '"/></td><td><a href="/' + $('.post-something-long').data('username') + '">' + $('.post-something-long').data('username') + "</a> says: <br> " + data.post + "</td></tr>")
      error: (data) ->
        console.log data

  $('.post-something-latin').click ->
    $.ajax '/statuses',
      type: 'POST'
      data: status: {status_update: $('.post-something-latin').data('post'), user_id: $('.post-something-latin').data('user')}
      success: (data) ->
        $('#status-table').prepend('<tr><td><img src="' + $('.post-something-latin').data('image') + '"/></td><td><a href="/' + $('.post-something-latin').data('username') + '">' + $('.post-something-latin').data('username') + "</a> says: <br> " + data.post + "</td></tr>")
      error: (data) ->
        console.log data
