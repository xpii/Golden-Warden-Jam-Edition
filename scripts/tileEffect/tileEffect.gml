///@desc tileEffect()	足元のタイルの効果を発動する	oPlayer

function tileEffect(){
	if(object_index != oPlayer) return;

	
	// 足元のタイルの効果を発動
	with(oTile) {
		if(num == other.current_depth) {
			if(type == TILE_COIN) {
				// 表示
				with(instance_create_layer(x,y-16,"info",oLog)) {
					text = "+1 coin"
				}
				instance_create_layer(other.x,other.y,"Mobs",oCoin);
				audio_play_sound(snCoin,1,false);
			}
			else if(type == TILE_HP) {
				other.hp = min(other.hp+1, other.maxHp);
				audio_play_sound(snHeal,1,false);
				
				// 表示
				with(instance_create_layer(x,y-16,"info",oLog)) {
					if(oPlayer.hp == oPlayer.maxHp) text = "MAX HP"
					else text = "+1 HP"
				}
			}
			else if(type == TILE_BOMB) boom();
			
			// パーク選択
			else if(type == TILE_STAIR || type == TILE_SHOP) {
				// ターン終了
				oGame.turn_statement = 5;
				oGame.alarm[0] = 1;
				
				// パーク生成
				oGame.alarm[1] = 2;
				type = 0;
				return;
			}
			
			else {
				// 次は敵の行動処理
				oGame.turn_statement = 3;
				oGame.alarm[0] = 1;
				return;
			}
			
			type = 0;
		}
	}
	
	// 次は敵の行動処理
	oGame.turn_statement = 3;
	oGame.alarm[0] = TURNSTEP*2;
	
}

///@desc boom()		その場と前後一マスにダメージを与える	oTile
function boom() {
	if(object_index != oTile) return;
	
	// エフェクト
	with(oTile) {
		if(num == other.num) instance_create_layer(x, y, "Mobs", oBoom);
		if(num == other.num + 1 || num == other.num - 1) instance_create_layer(x, y, "Mobs", oBoom);
	}
	// ダメージ
	with(pEnemy) {
		if(follow.num == other.num + 1 || follow.num == other.num - 1) damage(self, 2);
	}
	
	damage(oPlayer, 2);
	audio_play_sound(snExplode, 1, false);
}
