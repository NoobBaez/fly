if confety 
	{
		part_emitter_burst(confety_system, confety_emmiter, confety_part, 150);
		confety = false;
		audio_play_sound(Son_Success, 1, false);//Success EFX
		alarm[0] = room_speed*2;
	}

var half_view_wport =  view_wport[0]/2;

if state = states.Success && show_button
	{
		//Virtual key for next lvl
		key_next_or_try = virtual_key_add(half_view_wport-120, 420, 240, 70, ord("N"));
		//virtual_key_show(key_next_or_try);

		//Virtual key for next home
		key_home = virtual_key_add(25, 25, 50, 50, ord("H"));
		//virtual_key_show(key_home);
		counter = 1;
	}



	