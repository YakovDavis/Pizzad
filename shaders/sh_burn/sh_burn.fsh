uniform sampler2D perlinNoise;
uniform vec4 burnColor;
uniform float burnTime;
uniform float baseUvs[8];
uniform float noiseUvs[8];

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	float normalized_x = (v_vTexcoord.x - baseUvs[0]) / (baseUvs[2] - baseUvs[0]);
	float normalized_y = (v_vTexcoord.y - baseUvs[1]) / (baseUvs[3] - baseUvs[1]);
	vec2 noiseTexcoord = vec2(noiseUvs[0] + normalized_x * (noiseUvs[2] - noiseUvs[0]),
		noiseUvs[1] + normalized_y * (noiseUvs[3] - noiseUvs[1]));
	float noise = texture2D(perlinNoise, noiseTexcoord).r;
	vec4 base_color = texture2D(gm_BaseTexture, v_vTexcoord);
	vec4 col = mix(burnColor, base_color * v_vColour, clamp(10.0 * noise / (1.0 + burnTime), 0.0, 1.0));
	float alpha = clamp((1.0 - noise) / (1.0 + burnTime) * 5.0, 0.0, 1.0);
	if (alpha < 0.2)
	{
		gl_FragColor = vec4(0.0);
	}
	else
	{
		gl_FragColor = vec4(col.r, col.g, col.b, base_color.a);
	}
}
