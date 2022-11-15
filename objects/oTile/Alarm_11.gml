/// @description ステータス設定

if(type == "enemy") {
	with(instance_create_layer(x,y,"Mobs",oEnemy)) {
		follow = other;
	}
}

