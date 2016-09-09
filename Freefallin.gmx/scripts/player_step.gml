player_control();
player_move();
global.i_frames--;
global.life_gain_frames--;
//reset invulnerable animation
if (sprite_index == spr_player_hurt && global.i_frames <= 0) {
   sprite_index = spr_player;
}
//summon debris
if (random(8*exp(0.0156*(score mod LEVEL_LENGTH))) <= 1) {
   debris_summon();
}
//advance level
if (score mod LEVEL_LENGTH == 0 && score != 0) {
   audio_play_sound(portal_woosh,1,false);
   global.level++;
   score++;
   lives++;
   global.life_gain_frames = 60;
   switch (room) {
          case fall_down:
               global.room_end_pos = x;
               break;
          case fall_up:
               global.room_end_pos = room_width-x;
               break;
          case fall_right:
               global.room_end_pos = room_height-y;
               break;
          case fall_left:
               global.room_end_pos = y;
               break;
   }
   room_switch();
}
