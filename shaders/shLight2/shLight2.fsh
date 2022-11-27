//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 texColor = texture2D(gm_BaseTexture, v_vTexcoord);
    float gray = (texColor.r + texColor.g + texColor.b) / 3.0;

    if (gray >= 0.9) {
    gl_FragColor = v_vColour * vec4(0.86, 0.91, 0.96, texColor.a);
    } else if(gray >= 0.6){
    gl_FragColor = v_vColour * vec4(0.62, 0.7, 0.8, texColor.a);
    } else if(gray >= 0.4){
    gl_FragColor = v_vColour * vec4(0.43, 0.51, 0.6, texColor.a);
    } else {
    gl_FragColor = v_vColour * vec4(0.2, 0.26, 0.32, texColor.a);
    }
}
