uniform float stripLength;
uniform vec2 spriteSize;
uniform float baseUvs[8];

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	vec2 norm_texcoord = vec2((v_vTexcoord.x - baseUvs[0]) / (baseUvs[2] - baseUvs[0]),
							  (v_vTexcoord.y - baseUvs[1]) / (baseUvs[3] - baseUvs[1]));
	vec2 pixelCoords = norm_texcoord * spriteSize;
	
	float threshold = stripLength - pow(norm_texcoord.x - 0.5, 2.0) * spriteSize.x;
	
	if (pixelCoords.y <= threshold)
	{
		gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	}
	else
	{
		gl_FragColor = vec4(0.);
	}
}
