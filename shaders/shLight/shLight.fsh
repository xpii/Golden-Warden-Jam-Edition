//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	 // テクスチャの色を取得.
	  vec4 colour = texture2D( gm_BaseTexture, v_vTexcoord );

	  // 頂点カラーで RGBを置き換える.
	  colour.rgb = v_vColour.rgb;

	  // アルファ値のみ合成する.
	  colour.a *= v_vColour.a;

	  // 計算結果をフラグメントカラーに設定する.
	  gl_FragColor = colour;
}
