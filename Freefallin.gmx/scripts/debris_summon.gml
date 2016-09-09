switch (room) {
    case fall_down:
        instance_create(5+random(room_width-10),room_height,debris);
        break;
    case fall_up:
        instance_create(5+random(room_width-10),0,debris);
        break;
    case fall_right:
        instance_create(room_width,5+random(room_height-10),debris);
        break;
    case fall_left:
        instance_create(0,5+random(room_height-10),debris);
        break;
}
