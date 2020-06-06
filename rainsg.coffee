class Dashing.Rainsg extends Dashing.Widget

  ready: ->
    @index = 0
    setInterval(@updateBackground, 500)

  updateBackground: =>
    if @index > 10
      @index = 0
    rainimage = $(@node).find("#rainimage")
    rainimage.css("background-image", @images[@index])
    datetime = $(@node).find("#datetime")
    datetime.html (@datetimetext[@index])
    @index++
    return

  onData: (data) ->
    @datetimetext = data.datetimetext
    @images = data.images