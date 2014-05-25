#ui-input
This is a text input element, with a couple additional bits of awesome:

* `multiline` support, no need to worry about `<input>` vs `<textarea>`
* FontAwesome prefix icons
* `esc` clears the input.


##Events
Blur, focus, and change apparently don't bubble by default. So, this input
will normalized that behavior and merrily bubble them.

















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
Number of rows to show in a multiline input.

##Methods

##Event Handlers

##Polymer Lifecycle





