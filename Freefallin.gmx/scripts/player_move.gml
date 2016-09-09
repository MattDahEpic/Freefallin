switch (room) {
    case fall_down:
        y = 10+(((score mod LEVEL_LENGTH)/LEVEL_LENGTH)*(room_height-40));
        break;
    case fall_up:
        y = room_height-(10+(((score mod LEVEL_LENGTH)/LEVEL_LENGTH)*(room_height-40)));
        break;
    case fall_right:
        x = 10+(((score mod LEVEL_LENGTH)/LEVEL_LENGTH)*(room_width-40));
        break;
    case fall_left:
        x = room_width-(10+(((score mod LEVEL_LENGTH)/LEVEL_LENGTH)*(room_width-40)));
        break;
}
