/// @description Insert description here
// You can write your code in this editor
randomize();

current_depth = 0;	// 現在のダンジョン深度
nums_of_tiles = 11;	// タイルの同時描画枚数

nums_of_cards = 3;						// カードの所持数
nums_of_reusable_cards = nums_of_cards;	// 再利用可能なカードの所持数

control = true;		// 操作可能時間かどうか
turn_statement = 0;	// ターン全体の処理変数(
combo = 0;

// ダンジョン生成
repeat(7) {
	move();
}

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
	with(instance_create_layer(6*TILESIZE+_i*96, 9*TILESIZE, "Tile", oCard)) {
		num = _i;
	}
}