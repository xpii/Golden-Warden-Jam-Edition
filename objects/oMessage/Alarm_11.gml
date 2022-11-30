/// @description メッセージ設定

switch(type) {
	// 基本知識
	case 0:
	if(oMain.lang == LANG.JP) {
		text[0] = "あなたは みならい ぼうけんか\nこのダンジョンの おくふかくには\nオタカラが あるらしい...";
		text[1] = "アクションカードを つかって\nダンジョンをすすもう\nすうじのかずだけ まえにすすみ\nえがかれているブキをつかって こうげきする";
		text[2] = "あなたがうごいて こうげきしたあと\nあしもとの しかけがうごく\nそのあとに てきがうごく";
	}
	else {
		text[0] = "You are an adventurer.\nDeep in this dungeon\nlies the treasure...";
		text[1] = "You can explore\nusing Action Cards.\nYou walk and attack\nas per the Action Card.";
		text[2] = "After you move,\nthe tile under\nyour feet operates.\nThen the enemy moves.";
	}
	
	break;
	
	// スラッシュについて
	case 1:
	if(oMain.lang == LANG.JP) {
		maxPage = 4;
		text[0] = "てきのいるマスに すすもうとするとき\nスラッシュをおこなう\nスラッシュは のこりのすうじのかずだけ\nダメージをあたえ てきのうしろに とおりぬける";
		text[1] = "てきのHPよりすうじがおおきければ \nスラッシュのあと そのぶんだけ いどうできる";
		text[2] = "てきのうしろに てきがいたり\nてきが シールドをつかっていると\nとおりぬけ できない";
		text[3] = "そのばあいは てきをたおせたとき\nてきのいたマスにいどうする";
	}
	else {
		maxPage = 4;
		text[0] = "When moving to an \nenemy tile, you moves \nbehind the enemy after \ndealing the remaining \nwalk damage.";
		text[1] = "You can move after slash \nif remaining walk is \nlarger than enemy's HP.";
		text[2] = "You can't move \nbehind the enemy \nif enemy's back is full \nor enemy uses the shield.";
		text[3] = "If you kill the enemy \nat that time, \nyou move to \nwhere the enemy was.";
	}
	pic = sPic2;
	break;
}