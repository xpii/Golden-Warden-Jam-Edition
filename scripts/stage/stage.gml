///@desc move()	ゲームマップを一マス進める
function move(){
	
	// 深度+1
	if(instance_exists(oPlayer)) {
		if(oPlayer.current_depth < oGame.max_depth) {
			oPlayer.current_depth++;
	
			// マップ全体を一マス分横にずらす
			with(oTile) {
				x_goto -= TILESIZE;
			}
			with(oLog) {
				x_goto -= TILESIZE;
			}
			
			with(oSmoke) x -= TILESIZE;

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
			x_goto += TILESIZE;
		}
		with(oLog) {
			x_goto += TILESIZE;
		}
		with(oSmoke) x += TILESIZE;
	}
}

///@desc generate() 1エリアを生成する
function generate(){
	for(var _i=1; _i<=oGame.max_depth; _i++) {
		// 新しいタイルの生成
		with(instance_create_layer(GEN_START_X+TILESIZE*_i, GEN_START_Y, "Tile", oTile)) {
			num = _i
			if(num < 4 || num > 40) type = 0;
		}
	}
	
	// 敵の生成
	repeat(10+oMain.level*2) {
		var _num = irandom_range(4, 39);
		with(oTile) {
			if(num == _num) type = TILE_ENEMY;
		}
	}
	
	if(oMain.level < 4) {
		// ショップの生成（ステージの中盤あたりに一つ）
		var _num = irandom_range(20, 30);
		with(oTile) {
			if(num == _num) type = TILE_SHOP;
		}
	
		// 宝箱の生成 (ステージ序盤に一つ)
		var _num = irandom_range(11, 17);
		with(oTile) {
			if(num == _num) type = TILE_BOX;
		}
	}
	
	// 初期化
	if(instance_exists(oPlayer)) oPlayer.current_depth = 1;
}