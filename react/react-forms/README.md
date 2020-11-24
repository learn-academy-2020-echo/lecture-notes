# React Forms

### Important Notes
- Form is a collection of inputs
- Forms are submitted as single entity
- `Form` will be in its own component
- Content from `Form` will be passed back up the river to `App.js`

### Form Component Process
- Created a child component called `Form`
- Added state object with one key:value pair
- Key - form, value - object with inputs
- Added form tag
- 3 sets of label and input tags
- Called `Form` in `App.js` to see the content rendered
- Added a `handleChange` method to `Form` that will dynamically update each input into its corresponding state value
- Added a submit button
- Added a `handleSubmit` method to run onClick

### App.js Process
- Added a constructor with state
- Added `handleFormUpdate` method to pass to `Form` and return the form object
- Passed the `handleFormUpdate` to `Form`
- Called the method in `handleSubmit` and passed in the state object
- Set state in `handleFormUpdate`
- Render the form data in a conditional render
