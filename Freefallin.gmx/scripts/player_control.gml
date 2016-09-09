var horizontal_move;
var inverted;

switch (room) {
    case fall_down:
        horizontal_move = true;
        inverted = false;
        break;
    case fall_up:
        horizontal_move = true;
        inverted = true;
        break;
    case fall_right:
        horizontal_move = false;
        inverted = false;
        break;
    case fall_left:
        horizontal_move = false;
        inverted = true;
        break;
}
if (horizontal_move) { //falling vertically
    if (keyboard_check(vk_left) || keyboard_check(ord('A'))) {
        if (inverted) {
            if (x < room_width-MOVE_SPEED) {
                x += MOVE_SPEED;
            }
        } else {
            if (x >  MOVE_SPEED) {
                x -= MOVE_SPEED;
            }
        }
    }
    if (keyboard_check(vk_right) || keyboard_check(ord('D'))) {
        if (inverted) {
            if (x >  MOVE_SPEED+32) {
                x -= MOVE_SPEED;
            }
        } else {
            if (x < room_width-32-MOVE_SPEED) {
                x += MOVE_SPEED;
            }
        }
   }
} else { //falling horizontally
    if (keyboard_check(vk_up) || keyboard_check(ord('W'))) {
        if (inverted) {
            if (y < room_height-32-MOVE_SPEED) {
                y += MOVE_SPEED;
            }
        } else {
            if (y > MOVE_SPEED+32) {
                y -= MOVE_SPEED;
            }
        }
    }
    if (keyboard_check(vk_down) || keyboard_check(ord('S'))) {
        if (inverted) {
            if (y > MOVE_SPEED) {
                y -= MOVE_SPEED;
            }
        } else {
            if (y < room_height-MOVE_SPEED) {
                y += MOVE_SPEED;
            }
        }
   }
}
