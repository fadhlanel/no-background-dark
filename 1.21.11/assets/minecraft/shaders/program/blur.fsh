#version 150

uniform sampler2D DiffuseSampler;

in vec2 texCoord;
in vec2 oneTexel;

out vec4 fragColor;

void main() {
    fragColor = texture(DiffuseSampler, texCoord);
    fragColor.a = 0.0; // Force transparent
}
