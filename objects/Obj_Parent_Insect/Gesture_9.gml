/// @description Check for Pinch at the insect

spawn = random_range(40, 60);

for(i=0; i<spawn; i++)
	{
	instance_create_depth(mouse_x, mouse_y, depth, Obj_Color_Splash);
	}

//Bubble EFX
audio_play_sound(Son_Bubble, 1, false);

color_random(); //Update splash color

//Update X and Y position at the moment of dead
dead_x = x;
dead_y = y;

Obj_Game_Control.combo++; //Increase combo counter

//Shake the phone
if ( ex_patch_device_vibration_supported() ) {
    ex_patch_device_vibrate(50); // time argument is not supported for iOS (vibration effect is always 2s)
} else {
    show_message("Vibration not supported on this target!"); //Debug
}

//Explotion FX
part_emitter_region(global.explotion_system, global.explotion_emmiter, x-20, x+20, y-20, y+20, pt_shape_sphere, ps_distr_gaussian);
part_emitter_burst(global.explotion_system, global.explotion_emmiter, global.explotion_part, 100);

//Dead animation
dead = true;