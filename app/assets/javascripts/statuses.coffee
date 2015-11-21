# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('.status').hover (event) ->
    $(this).toggleClass("hover")
#$ ->
#  $('#newstatus').hover (event) ->
#    $(this).()

#$ ->
#  $("#heading").hover (event) ->
#    $(this).fadeToggle()

$ ->
  $(":input:visible:enabled:first").focus()