/// @description 

// カードが3枚切ったら補充
if(nums_of_cards < nums_of_reusable_cards) {
	while(nums_of_cards < nums_of_reusable_cards) {
		addCard();	
	}
}

