/// @description ステータス設定

if(oMain.level < 2) maxHp = irandom_range(1,3);
else if(oMain.level < 3) maxHp = irandom_range(2,4);
else if(oMain.level < 4) maxHp = irandom_range(3,5);
else maxHp = irandom_range(4,6);
	
hp = maxHp;

