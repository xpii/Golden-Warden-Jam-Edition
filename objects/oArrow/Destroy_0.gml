
if(follow == oPlayer) {
	// 攻撃が残っていれば次の攻撃準備
	with(oPlayer) {
		if(subWeapon != 0) {
			weapon = subWeapon;
			subWeapon = 0;
			
			alarm[0] = TURNSTEP;
		}
		
		else alarm[0] = TURNSTEP*2;
	}
}