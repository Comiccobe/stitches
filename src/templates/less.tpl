.<%= prefix %> {\n
    background: url(<%= backgroundImage %>) no-repeat;\n
    display: block;\n
}\n
\n
.stitches-<%= prefix %>(@name, @x: 0, @y: 0, @width: 0, @height: 0) {\n
    width: @width;\n
    height: @height;\n
    background-position: @x @y;\n
    .<%= prefix %>-@{name} {\n
        width: @width;\n
        height: @height;\n
        background-position: @x @y;\n
    }\n
}\n

<% $.map(sprites, function (sprite) { %>
\n
.<%= prefix %>-<%= sprite.name %> {\n
    .stitches-sprite(<%= sprite.name %>, -<%= sprite.left() %>px, -<%= sprite.top() %>px, <%= sprite.image.width %>px, <%= sprite.image.height %>px);\n
}\n
<% }); %>