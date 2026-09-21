#version 150

in vec4 Position;

uniform mat4 ProjMat;
uniform vec2 InSize;
uniform vec2 OutSize;
uniform vec2 BlurDir;
uniform float Radius;

out vec2 texCoord;
out vec2 oneTexel;
out vec2 blurDir;
out float radius;

void main() {
    gl_Position = ProjMat * vec4(Position.xy, 0.0, 1.0);
    oneTexel = 1.0 / InSize;
    texCoord = Position.xy / OutSize;
    blurDir = BlurDir;
    radius = Radius;
}
