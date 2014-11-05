uniform float SPEED;
uniform float time;

float PI = 3.14159;

void main()
{
	vec4 vertex = gl_Vertex;
	vertex.x = gl_Vertex.x * cos(time * SPEED * 2.0 * PI) + gl_Vertex.z * sin(time * SPEED * 2.0 * PI);
	vertex.z = -gl_Vertex.x * sin(time * SPEED * 2.0 * PI) + gl_Vertex.z * cos(time * SPEED * 2.0 * PI);
	gl_Position = gl_ModelViewProjectionMatrix * gl_Vertex;
	gl_FrontColor = gl_Color;
	gl_TexCoord[0] = gl_MultiTexCoord0;
}
