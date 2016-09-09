switch (irandom(3)) {
    case 0:
        if (room == fall_down) {
            room_switch();
            break;
        }
        window_set_size(384,1056);
        room_goto(fall_down);
        break;
    case 1:
        if (room == fall_up) {
            room_switch();
            break;
        }
        window_set_size(384,1056);
        room_goto(fall_up);
        break;
    case 2:
        if (room == fall_left) {
            room_switch();
            break;
        }
        window_set_size(1056,384);
        room_goto(fall_left);
        break;
    case 3:
        if (room == fall_right) {
            room_switch();
            break;
        }
        window_set_size(1056,384);
        room_goto(fall_right);
        break;
}
