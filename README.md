# CSS Property Order

Regardless of whether you are writing in CSS, SCSS, or SASS, you should adopt
the following order of properties when working on this project:

``` scss
// Positioning
position: absolute;
right: 0;
top: 0;
z-index: 10;

// Display & Box Model
border: 10px solid #333;
box-sizing: border-box;
display: inline-block;
height: 100px;
margin: 10px;
overflow: hidden;
padding: 10px;
width: 100px;

// Background
background: #000;

// Text
color: #fff;
font-family: sans-serif;
font-size: 16px;
line-height: 1.4;
text-align: right;

// Other
cursor: pointer;
```

Within each section, properties should be ordered alphabetically by name.
