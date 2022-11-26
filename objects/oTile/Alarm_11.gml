/// @description ステータス設定

// エリア最後のマスは階段
if(num >= oGame.max_depth) {
	type = "stair";
}

// 敵マスなら敵を配置
if(type == "enemy") {
	with(instance_create_layer(x,y,"Mobs",oEnemy)) {
		follow = other;
	}
}