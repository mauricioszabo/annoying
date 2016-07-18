{CompositeDisposable, Disposable} = require 'atom'
Annoyances = require './annoyances'

module.exports = Annoying =
  activate: (state) ->
    @subscriptions = new CompositeDisposable
    @subscriptions.add atom.commands.add 'atom-workspace', 'annoying:toggle': => @toggle()

  deactivate: ->
    @subscriptions.dispose()

  consumeClippyService: (service) ->
    @clippy = service
    window.c = @clippy
    new Disposable => @clippy = null

  toggle: ->
