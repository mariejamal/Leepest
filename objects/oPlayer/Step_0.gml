ysp += 0.1;
var _walk_speed = 1;
var _move = keyboard_check(vk_right) - keyboard_check(vk_left);
xsp = _move * _walk_speed;

if (place_meeting(x, y + 1, oPlatform)) {
    ysp = 0;
    if (keyboard_check_pressed(vk_space)) {
        ysp = -2;
    }
}

move_and_collide(xsp, ysp, oPlatform);

if (place_meeting(x, y, oFlag)) {
    global.flag_count += 1;
    x = xstart;
    y = ystart;
    ysp = 0;
    
    if (global.flag_count >= 10) {
        room_goto(rm_End);
    }
}

if (place_meeting(x, y, oSpikes)) {
    x = xstart;
    y = ystart;
    ysp = 0;
}