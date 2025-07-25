//
// Simple passthrough fragment shader
//
#extension GL_OES_standard_derivatives : require
precision highp float;
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec2 vUv;
varying vec2 vRes;
vec4 smoothTex2D( sampler2D tex, vec2 UV ){
	
	vec2 alpha = .666 * vec2(abs(dFdx(UV.x)), abs(dFdy(UV.y)));//+0.06;
	vec2 x = fract(UV);
	vec2 x_ = clamp(.5 / alpha * x, 0., 0.5) +
				clamp(.5 / alpha * (x - 1.) + .5, 0., .5);
			
	vec2 texCoord = (floor(UV) + x_) / vRes;//vec2(vW,vH);
	return texture2D( tex, texCoord );
	
}
void main()
{
	gl_FragColor = v_vColour * smoothTex2D( gm_BaseTexture, vUv );
}