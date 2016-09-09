if (room == menu) {
   room_goto(controls);
} else {
  global.level = 1;
  score = 0;
  global.i_frames = 0;
  lives = 3;
  global.life_gain_frames = 0;
  global.room_end_pos = 384/2;
  if (room == controls) {
     timeline_index = anim_intro;
     timeline_position = 0;
     timeline_running = true;
     return false;
  }
  room_goto(fall_down);
}
