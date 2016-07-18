module.exports = class Annoyances
  constructor: (@clippy) ->

  blurEditor: ->
    @clippy.speak "It seems you're trying to concentrate. I've done a little something
    to help you in your process", prompt:
      "Ok, keep like this": =>
      "WHAT??? Stop it!": => @cancelBlur()

  cancelBlur: ->
    alert("BAR")

  newFunction: ->
    @clippy.speak "It seems like you're trying to define a function. Do you want some help with that?", prompt:
      "Ok, help me!": => alert("FOO")
      "No, stop annoying me!": =>

window.A = Annoyances
