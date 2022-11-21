/// @description ステージ生成

// ダンジョン生成
generate();

start_x = 0;
start_y = 0;

// 一枚目のタイル座標を取得
with(oTile) {
	if(num == 1) {
		other.start_x = x;
		other.start_y = y;
	}
}
// プレイヤーを配置
instance_create_layer(start_x, start_y, "Mobs", oPlayer);


// カード生成
for(var _i=0; _i<nums_of_cards; _i++) {
	with(instance_create_layer(6*TILESIZE+_i*48, 9*TILESIZE, "Tile", oCard)) {
		num = _i;
	}
}


