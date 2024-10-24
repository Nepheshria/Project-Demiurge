#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aColor; // the color variable has attribute position 1
layout (location = 2) in vec2 aTexCoord;

out vec3 changingColor; // output a color to the fragment shader
out vec2 TexCoord;

uniform mat4 transform;

void main()
{
    gl_Position = transform * vec4(aPos, 1.0f);
    changingColor = aColor; // set ourColor to the input color we got from the vertex data
    TexCoord = vec2(aTexCoord.x, aTexCoord.y);
}