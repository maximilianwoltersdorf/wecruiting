jQuery ->

  $(".ui-dialog-content").live "reposition", ->
    $(this).dialog("option", "position", "center")

  $('a.popup').click ->
    container = $("<div />").attr("id", "popup_content")
    container.appendTo('body')
    container.dialog
      title: $(this).text()
      autoResize:true,
      modal: true
      position: "center"
    $.ajax
      url: $(this).attr("href")
      type: "GET"
      dataType: "html"
      success: (data)->
        container.html data
        container.trigger("reposition")
      error: (error, error_event, error_type)->
        container.addClass("failure")
        container.html "An error occurred: #{error.statusText}"
