///@desc move()	ゲームマップを一マス進める
function move(){
	
	// 深度+1
	if(instance_exists(oPlayer)) {
		if(oPlayer.current_depth < oGame.max_depth) {
			oPlayer.current_depth++;
	
			// マップ全体を一マス分横にずらす
			with(oTile) {
				x -= TILESIZE;
			}
			with(oLog) {
				x -= TILESIZE;
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
			x += TILESIZE;
		}
		with(oLog) {
			x += TILESIZE;
		}
	}
}

///@desc generate() 1エリアを生成する
function generate(){
	for(var _i=1; _i<=oGame.max_depth; _i++) {
		// 新しいタイルの生成
		with(instance_create_layer(GEN_START_X+TILESIZE*_i, GEN_START_Y, "Tile", oTile)) {
			num = _i
			if(num < 4) type = 0;
		}
	}
	
	// 敵の生成
	repeat(10+oMain.level*3) {
		var _num = irandom_range(4, oGame.max_depth-1);
		with(oTile) {
			if(num == _num) type = TILE_ENEMY;
		}
	}
	
	// ショップの生成（ステージの真ん中あたりに一つ）
	var _num = irandom_range(oGame.max_depth/2-5, oGame.max_depth/2+5);
	with(oTile) {
		if(num == _num) type = TILE_SHOP;
	}
	
	// 初期化
	if(instance_exists(oPlayer)) oPlayer.current_depth = 1;
}