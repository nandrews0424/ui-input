#ui-input
This is a text input element, with a couple additional bits of awesome:

* `multiline` support, no need to worry about `<input>` vs `<textarea>`
* FontAwesome prefix icons
* `esc` clears the input.


    Polymer 'ui-input',

##Events
Blur, focus, and change apparently don't bubble by default. So, this input
will normalized that behavior and merrily bubble them.

      bubble: (evt) ->
        @fire evt.type, null, this, false

      blur: (evt) ->
        @$.field.classList.remove 'focused'
        @bubble evt

      focus: (evt) ->
        @$.field.classList.add 'focused'
        @bubble evt

      change: (evt) ->
        @resize() if @multiline and @rows is 'fit'
        @value = evt.target.value
        @bubble evt

      keyup: (evt) ->
        @value = evt.target.value

      keydown: (evt) ->
        @resize() if @multiline and @rows is 'fit'
        if evt.keyCode is 27
          @value = null

      cut: (evt) ->
        @resize() if @multiline and @rows is 'fit'

      paste: (evt) ->
        @resize() if @multiline and @rows is 'fit'

      drop: (evt) ->
        @resize() if @multiline and @rows is 'fit'

##Attributes and Change Handlers
###multiline
Set this to true to allow multiple lines of input.
###value
This will contain the user's typed text, and will be updated live with each
keypress.
###placeholder
Text to prompt the user before they start to input.
###disabled
When true, the field won't take a focus.
###rows
Number of rows to show in a multiline input, if not specified this will default to
`fit`, which will autogrow. Which is almost certainly what you want.
###icon
A [FontAwesome](http://fontawesome.io/) icon, just put it in like `fa-eye`.

      rows: 'fit'

##Methods
###resize
Resize to the content, eliminating pesky scrolling. This only works when
`multiline="true"`.

      resize: ->
        textarea = @shadowRoot.querySelector 'textarea'
        setTimeout ->
          textarea.style.height = 'auto'
          textarea.style.height = "#{textarea.scrollHeight}px"


##Event Handlers

##Polymer Lifecycle

      created: ->

      ready: ->

      attached: ->

      domReady: ->

      detached: ->
