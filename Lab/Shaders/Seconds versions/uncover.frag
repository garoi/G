// simple fragment shader

// 'time' contains seconds since the program was linked.
uniform float time;
varying vec4 pos;


void main()
{
	if (pos.x < time - 1) {
		gl_FragColor = vec4(0.0,0.0,1.0,0.0);
	}
	else {
		discard;	
	}
}
