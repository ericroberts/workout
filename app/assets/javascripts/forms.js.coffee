$ ->
  setFilledState = ->
    if $(this).val()
      $(this).closest(".input").addClass("filled")
    else
      $(this).closest(".input").removeClass("filled")

  $("input").each setFilledState

  $("input").change setFilledState

  $("input").focus ->
    $(this).closest(".input").addClass("focused")

  $("input").blur ->
    $(this).closest(".input").removeClass("focused")
