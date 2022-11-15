// マップ生成関連
#macro TILESIZE 64

#macro GEN_START_X 15*TILESIZE
#macro GEN_START_Y 7*TILESIZE

///@desc move()	ゲームマップを一マス進める
function move(){
	// 深度+1
	oGame.current_depth++;	
	if(instance_exists(oPlayer)) oPlayer.current_depth++;
	
	// マップ全体を一マス分横にずらす
	with(oTile) {
		x -= sprite_width;
		if(num < oGame.current_depth - oGame.nums_of_tiles) instance_destroy();
	}
	// 新しいタイルの生成
	with(instance_create_layer(GEN_START_X, GEN_START_Y, "Tile", oTile)) {
		num = oGame.current_depth;
		if(num < 4) type = "";
	}
}

///@desc back()	ゲームマップを一マス戻す
function back(){
	// 深度-1
	oGame.current_depth--;	
	if(instance_exists(oPlayer)) oPlayer.current_depth--;
	
	// マップ全体を一マス分横にずらす
	with(oTile) {
		x += sprite_width;
		if(num > oGame.current_depth) instance_destroy();
	}
	// 新しいタイルの生成
	with(instance_create_layer(GEN_START_X-oGame.nums_of_tiles*TILESIZE, GEN_START_Y, "Tile", oTile)) {
		num = oGame.current_depth-oGame.nums_of_tiles;
	}
}