#version 150
// Modified by nuel

in vec3 Position;
in vec4 Color;

uniform mat4 ModelViewMat;
uniform mat4 ProjMat;

out vec4 vertexColor;

void main() {
    gl_Position = ProjMat * ModelViewMat * vec4(Position, 1.0);

    vertexColor = Color;
	if(vertexColor.r <= 0.1 && vertexColor.g <= 0.1 && vertexColor.b <= 0.1 && vertexColor.a >= 0.5) {
		vertexColor.a = 0.0;
	}
}
