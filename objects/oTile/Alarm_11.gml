/// @description ステータス設定

// エリア最後のマスは階段
if(num >= oGame.max_depth) {
	if(oMain.level < 4) type = TILE_STAIR;
	else type = TILE_BOX;
}

// 敵マスなら敵を配置
if(type == TILE_ENEMY) {
	with(instance_create_layer(x,y,"Mobs",oEnemy)) {
		follow = other;
	}
}

// 宝箱マスなら箱を配置
if(type == TILE_BOX) {
	with(instance_create_layer(x,y,"Mobs",oBox)) {
		follow = other;
	}
}