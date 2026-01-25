/// Draw Score

draw_text(10, 10, global.score)

//draw red when game over
if(global.game_over){
	// Make screen red
	var _alpha = 0.3; // Intensity of the red (0.0 to 1.0)
	draw_set_alpha(_alpha);
	draw_set_color(c_red);
	draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
	draw_set_alpha(1); // Reset alpha to default
	draw_set_color(c_white); // Reset color to default
	// Draw Game Over message
	draw_text(100, 200, "GAME OVER!")
	draw_text(80, 250, "Press Spacebar to restart.")
}
