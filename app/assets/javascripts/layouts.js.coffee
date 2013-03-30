window.WTJ ||= {}

WTJ.Layout = {}

WTJ.Layout.initialize = ->
  window.WTJ.Layout.setToolbar()

WTJ.Layout.setToolbar = ->
  pathname = window.location.pathname
  if pathname.match(/new/)
    $("#submitbtn").addClass("active")
  else if pathname.match(/tags/)
    $("#tagsbtn").addClass("active")
  else if pathname.match(/info/)
    $("#infobtn").addClass("active")
  else if pathname.match(/random/)
    $("#randombtn").addClass("active")
  else
    $("#homebtn").addClass("active")

$(document).ready ->
  WTJ.Layout.initialize()
