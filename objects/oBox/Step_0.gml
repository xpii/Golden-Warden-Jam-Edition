/// @description 

event_inherited();

// 倒された場合コンボ数のコイン、強力なサポートカード1枚を得る
if(hp <= 0 && image_speed != 1) {
	with(instance_create_depth(x,y,depth,oBoxOpened)) {
		follow = other.follow;	
	}
	instance_destroy();
	oGame.combo++;
	
	// コイン
	repeat(oGame.combo) {
		instance_create_layer(x,y,"Mobs",oCoin);
	}

	// 強力なサポートカード
	addCardSup();
}


