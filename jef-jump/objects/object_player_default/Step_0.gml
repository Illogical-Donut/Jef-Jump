// Horizontal input
hsp = (keyboard_check(vk_right) - keyboard_check(vk_left)) * walk_speed;

// Apply gravity
vsp += grv;

// Jump
if (keyboard_check_pressed(vk_space)) {
    vsp = jump_speed;
}

/* Horizontal movement with collision */
if (place_meeting(x + hsp, y, obj_ground)) {
    while (!place_meeting(x + sign(hsp), y, obj_ground)) {
        x += sign(hsp);
    }
    hsp = 0;
}
x += hsp;

/* Vertical movement with collision */
if (place_meeting(x, y + vsp, obj_ground)) {
    while (!place_meeting(x, y + sign(vsp), obj_ground)) {
        y += sign(vsp);
    }
    vsp = 0;
}
y += vsp;
