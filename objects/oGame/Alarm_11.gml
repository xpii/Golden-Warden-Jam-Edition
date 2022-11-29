/// @description ステージ生成と初回処理

// ダンジョン生成
generate();


// 初回生成時の処理
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
	with(instance_create_layer(room_width/2+(_i-1)*48, CARD_START_Y, "Info", oCard)) {
		num = 0;
	}
}

// サポートカード生成
repeat(2) addCardSup();
with(oCardSup) type = SUP_REROLL;

// カードバック生成
for(var _i=0; _i<3; _i++) {
	instance_create_layer(room_width/2+(_i-1)*48, CARD_START_Y, "Tile", oCardBack);
}
for(var _i=1; _i<5; _i++) {
	instance_create_layer(room_width/2+72 + _i*36, CARD_START_Y, "Tile", oCardBack);
	instance_create_layer(room_width/2-72 - _i*36, CARD_START_Y, "Tile", oCardBack);
}


with(oMessage) {
	if(type == 0) enable = true;
}
