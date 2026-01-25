/// Draw Score

draw_text(10, 10, score)

//draw red when game over
if(global.game_over){
	draw_text(room_width / 2, room_height / 2, "GAME OVER")
}
