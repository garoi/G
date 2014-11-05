vec4 red = vec4(1, 0, 0, 1);
vec4 green = vec4(0, 1, 0, 1);
vec4 blue = vec4(0, 0, 1, 1);
vec4 cyan = vec4(0, 1, 1, 1);
vec4 yellow = vec4(1, 1, 0, 1);
uniform float MINY;
uniform float MAXY;

void main()
{
	gl_Position    = gl_ModelViewProjectionMatrix * gl_Vertex;
	float lambda = (gl_Vertex.y - MINY)/(MAXY -MINY);
	lambda *= 4.0; 
	if (lambda <= 4.0 && lambda >3.0) gl_FrontColor  = mix(cyan, blue, fract(lambda));
	else if (lambda <= 3.0 && lambda > 2.0)gl_FrontColor  = mix(green, cyan, fract(lambda));
	else if (lambda <= 2.0 && lambda > 1.0) gl_FrontColor  = mix(yellow, green, fract(lambda));
	else if (lambda <= 1.0 && lambda > 0.0)	gl_FrontColor  = mix(red, yellow, fract(lambda));
	//gl_Vertex.y * red + (1.0-gl_Vertex.y) * green;
	gl_TexCoord[0] = gl_MultiTexCoord0;
}