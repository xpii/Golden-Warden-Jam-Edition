/// @description 

event_inherited();

// 倒された場合5コイン、強力なサポートカード1枚を得る
if(hp <= 0) {
	with(instance_create_depth(x,y,depth,oBoxOpened)) {
		follow = other.follow;	
	}
	instance_destroy();
	oGame.combo++;
	
	if(oMain.level != 4) {
		// コイン
		repeat(5) {
			instance_create_layer(x,y,"Mobs",oCoin);
		}

		// 強力なサポートカード
		addCardSup();
	}
}


