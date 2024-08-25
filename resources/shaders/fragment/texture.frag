#version 330 core

out vec4 FragColor;

in vec3 changingColor;
in vec2 TexCoord;

uniform sampler2D texture1;
uniform sampler2D texture2;

uniform float ratioTexture;

void main()
{
    FragColor = mix(texture(texture1, TexCoord), texture(texture2, TexCoord), ratioTexture) * vec4(changingColor, 1.0);
}