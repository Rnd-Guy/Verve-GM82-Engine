///player_flip([target])

if argument_count > 0 && argument[0] == global.grav {
    exit;
}

global.grav *= -1;

with(Player) {
    air_jumps = max_air_jumps;
    vspeed = 0;
    gravity = global.grav * abs(gravity);

    player_set_mask();
    y += 4 * global.grav;
}