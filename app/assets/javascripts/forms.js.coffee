$ ->
  inputs = "input, textarea"

  setFilledState = ->
    if $(this).val()
      $(this).closest(".input").addClass("filled")
    else
      $(this).closest(".input").removeClass("filled")

  $(inputs).each setFilledState

  $(inputs).change setFilledState

  $(inputs).focus ->
    $(this).closest(".input").addClass("focused")

  $(inputs).blur ->
    $(this).closest(".input").removeClass("focused")
