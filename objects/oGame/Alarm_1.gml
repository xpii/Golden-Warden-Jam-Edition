/// @description パーク選択画面を生成 or 終了
// 生成
if(oGame.control) {
	// 操作不能状態化
	oGame.control = false;

	// タイル削除
	with(oTile) {
		instance_destroy();
	}
	// ログ削除
	with(oLog) {
		instance_destroy();
	}

	// プレイヤーの状態リセット＆非表示
	oPlayer.weapon = 0;
	oPlayer.subWeapon = 0;
	oPlayer.image_alpha = 0;

	with(pStateChange) {
		instance_destroy();
	}

	// パークの抽選
	ds_list_shuffle(oMain.perks);

	// パーク生成
	for(var _i=0; _i<3; _i++) {
		with(instance_create_layer(room_width/2 + (_i-1)*96, 6*TILESIZE, "Tile", oPerk)) {
			num = _i;
			type = ds_list_find_value(oMain.perks, _i);
		}
	}
}

// 終了
else {
	// 操作不能状態解除
	oGame.control = true;
	
	// パーク削除
	with(oPerk) {
		instance_destroy();
	}

	// プレイヤーの表示
	oPlayer.image_alpha = 1;
	
	// ステージ生成
	oMain.level++;
	generate();
}

