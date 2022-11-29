/// @description inclease sound volume

if(volume >= 3) {
	volume = 0;	
}
else {
	volume ++;	
}

audio_group_set_gain(audiogroup_default,volume/3,1);
