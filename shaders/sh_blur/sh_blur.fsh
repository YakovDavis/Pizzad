//
// Simple passthrough fragment shader
//

uniform bool isVertical;
uniform vec2 texelSize;

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	vec4 result = vec4(0.0);
	
	vec2 offset = vec2(1.0, 0.0);
	
	if (isVertical)
	{
		offset = vec2(0.0, 1.0);
	}
	
	result = texture2D(gm_BaseTexture, v_vTexcoord) + texture2D(gm_BaseTexture, v_vTexcoord + offset * texelSize) + texture2D(gm_BaseTexture, v_vTexcoord - offset * texelSize);
	
    gl_FragColor = v_vColour * result;
}
