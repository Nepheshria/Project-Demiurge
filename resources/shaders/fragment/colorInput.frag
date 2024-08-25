#version 330 core
out vec4 FragColor;
in vec3 changingColor;

void main()
{
    FragColor = vec4(changingColor, 1.0);
}