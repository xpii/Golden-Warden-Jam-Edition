/// @description Insert description here
// You can write your code in this editor

num = 0;	// 自分が何マス目のタイルなのか

type = choose("coin", "hp", "boom","enemy");

if(type == "enemy") {
	with(instance_create_layer(x,y,"Mobs",oEnemy)) {
		follow = other;	
	}
}