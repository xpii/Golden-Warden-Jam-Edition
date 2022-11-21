// マップ生成関連
#macro TILESIZE 32

#macro GEN_START_X 6*TILESIZE
#macro GEN_START_Y 7*TILESIZE

///@desc move()	ゲームマップを一マス進める
function move(){
	
	// 深度+1
	if(instance_exists(oPlayer)) {
		if(oPlayer.current_depth < oGame.max_depth) {
			oPlayer.current_depth++;
	
			// マップ全体を一マス分横にずらす
			with(oTile) {
				x -= sprite_width;
			}
		}
	}
}

///@desc back()	ゲームマップを一マス戻す
function back(){
	// 深度-1
	if(instance_exists(oPlayer)) {
		oPlayer.current_depth--;
	
		// マップ全体を一マス分横にずらす
		with(oTile) {
			x += sprite_width;
		}
	}
}

///@desc generate() 1エリアを生成する
function generate(){
	for(var _i=1; _i<=40; _i++) {
		// 新しいタイルの生成
		with(instance_create_layer(GEN_START_X+TILESIZE*_i, GEN_START_Y, "Tile", oTile)) {
			num = _i
			if(num < 4) type = "";
		}
	}
}