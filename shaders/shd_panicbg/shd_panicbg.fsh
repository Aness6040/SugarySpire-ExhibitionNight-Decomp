varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float time;
uniform float panic;
//DDP You can change these values to tweak how intense the background is
#define WAVELENGTH 48.0
#define AMPLITUDE 0.005
#define TINTAMOUNT 0.5
#define TINTSPEED 2.0
uniform float fade;
void main() {
	// Wobble back and forth more with time.
	vec2 uv = v_vTexcoord;
	uv.x += sin(WAVELENGTH * uv.y + 3.0 * time ) * AMPLITUDE * panic;
	// Tint background more with time.
	vec4 texel = texture2D(gm_BaseTexture, uv);
	texel.r += (0.5 + 0.5 * sin(TINTSPEED * time )) * TINTAMOUNT * panic;
	
	// Make it Greyscale after 
	float gray = dot(texel.rgb, vec3(0.21, 0.71, 0.07));
	gl_FragColor = vec4(mix(texel.rgb,vec3(gray),fade), texel.a);	
	
	//gl_FragColor = texel;
}