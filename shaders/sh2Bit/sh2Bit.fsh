//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 texColor = texture2D(gm_BaseTexture, v_vTexcoord);
    float gray = (texColor.r + texColor.g + texColor.b) / 3.0;

    if (gray >= 0.8) {
    gl_FragColor = v_vColour * vec4(1, 1, 1, texColor.a);
    } else if(gray >= 0.5){
    gl_FragColor = v_vColour * vec4(0.27, 0.69, 0.72, texColor.a);
    } else if(gray >= 0.3){
    gl_FragColor = v_vColour * vec4(0.66, 0.25, 0.53, texColor.a);
    } else {
    gl_FragColor = v_vColour * vec4(0.13, 0.14, 0.26, texColor.a);
    }
}
