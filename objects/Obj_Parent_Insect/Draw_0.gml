/// @description Shadow and Combo Text

//Shadow
draw_sprite_ext(sprite_index, -1, x+30, y+150, image_xscale*1.2, image_yscale*1.2, image_angle, c_black, .5);

shader_set(shOutline);
shader_set_uniform_f(upixelW, texelW);
shader_set_uniform_f(upixelH, texelH);

draw_self();
shader_reset();

if dead
	{
	var _combo = "+ " + string(addScore);
		
	dead_y -= 10; //Go up
	draw_text_transformed_color(dead_x, dead_y, _combo, 7, 7, 0, c_white, c_white, c_yellow, c_yellow, 1);
	image_speed = 0;
	}






