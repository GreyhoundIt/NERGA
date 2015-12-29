# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  now = new Date
  $('ul li time').each ->
    dateTime = Date.parse($(this).attr('datetime'))
    startdate = new Date(dateTime)
    startdate.setDate startdate.getDate() - 14
    enddate = new Date(dateTime)
    enddate.setDate enddate.getDate() - 2
    if now > startdate and now < enddate
      $(this).next('a.datelink').show()
    return
  return
