.<%= prefix %> {\n
    background: url(<%= backgroundImage %>) no-repeat;\n
    display: block;\n
}\n
\n
.stitches-<%= prefix %>(@x: 0, @y: 0, @width: 0, @height: 0) {\n
    width: @width;\n
    height: @height;\n
    background-position: @x @y;\n
}\n
\n
.stitches-<%= prefix %>-addons(@name, @x: 0, @y: 0, @width: 0, @height: 0) {\n
    //User defined selectors accesible from html.\n
}\n

<% $.map(sprites, function (sprite) { %>
\n
<% var left = sprite.left() === 0 ? 0 : (-sprite.left()) + "px"; %>
<% var top = sprite.top() === 0 ? 0 : (-sprite.top()) + "px"; %>
<% var width = sprite.image.width === 0 ? 0 : sprite.image.width + "px"; %>
<% var height = sprite.image.height === 0 ? 0 : sprite.image.height + "px"; %>
.<%= prefix %>-<%= sprite.name %> {\n
    .stitches-<%= prefix %>(<%= left %>, <%= top %>, <%= width %>, <%= height %>);\n
}\n
.stitches-<%= prefix %>-addons(<%= sprite.name %>, <%= left %>, <%= top %>, <%= width %>, <%= height %>);\n
<% }); %>