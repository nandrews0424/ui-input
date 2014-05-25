#ui-input
*TODO* tell me all about your element.


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
        @value = evt.target.value
        @bubble evt

      keyup: (evt) ->
        @value = evt.target.value

##Attributes and Change Handlers

##Methods

##Event Handlers

##Polymer Lifecycle

      created: ->

      ready: ->

      attached: ->

      domReady: ->

      detached: ->
