/// @description 

y -= spd;
spd = max(0.5, spd-1);

// x_gotoの位置に移動させる
var _diff = x_goto - x;
x += (_diff*0.7);


