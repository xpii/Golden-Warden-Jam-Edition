/// @description 

event_inherited();

// 倒された場合コンボ数のコイン、アクションカード、コンボ数-1のサポートカードを得る 
if(hp <= 0) {
	instance_destroy();
	oGame.combo++;
	
	// コイン
	repeat(oGame.combo) {
		instance_create_layer(x,y,"Mobs",oCoin);
	}
	// アクションカード
	repeat(oGame.combo) {
		addCard();
	}
	// サポートカード
	repeat(oGame.combo-1) {
		addCardSup();
	}
}