switch (room) {
       case fall_down:
            x = player.x+32;
            break;
       case fall_up:
            x = player.x-32;
            break;
       case fall_left:
            y = player.y+32;
            break;
       case fall_right:
            y = player.y-32;
            break;
}
