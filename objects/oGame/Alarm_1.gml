/// @description パーク選択画面を生成 or 終了
// 生成
if(oGame.control) {
	// 操作不能状態化
	oGame.control = false;

	// プレイヤーの非表示
	oPlayer.y += room_height;
	
	// 画面上の邪魔なもの非表示
	with(oTile) y += room_height;
	with(oLog) instance_destroy();
	
	// カードの位置ずらす
	with(pCard) y += 1.5*TILESIZE;
	with(oCardBack) y += 1.5*TILESIZE;
	
	// パークの抽選
	ds_list_shuffle(oMain.perks);

	// パーク生成
	for(var _i=0; _i<4; _i++) {
		with(instance_create_layer(room_width/2 + (_i-1)*96, 4*TILESIZE, "Tile", oPerk)) {
			num = _i;
			if(_i != 3) type = ds_list_find_value(oMain.perks, _i);
			// 何も買わない固定
			else {
				type = 0;
				image_xscale = 1;
				image_yscale = 1;
			}
		}
	}
}

// 終了
else {
	// 操作不能状態解除
	oGame.control = true;
	
	// パーク削除
	with(oPerk) instance_destroy();

	// プレイヤーの再表示
	oPlayer.y -= room_height;
	
	// カードの位置戻す
	with(pCard) {
		if(y >= 7.5*TILESIZE) y -= 1.5*TILESIZE;
	}
	with(oCardBack) y -= 1.5*TILESIZE;
	
	// ステージ最後なら、次のステージ生成
	if(oPlayer.current_depth >= oGame.max_depth) {
		// 削除
		with(oTile) instance_destroy();
		with(pStateChange) instance_destroy();
		
		// プレイヤーの武装解除
		oPlayer.weapon = 0;
		oPlayer.subWeapon = 0;

		// ステージ生成
		oMain.level++;
		generate();
	}
	
	// 途中なら再表示
	else {
		// 画面の再表示
		with(oTile) {
			y -= room_height;
		}
	}
}

