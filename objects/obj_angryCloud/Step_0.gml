image_speed = 0.35;
image_xscale = playerID.xscale;
x = playerID.x;
y = playerID.y;

if (playerID.anger <= 0 || playerID.state != (1 << 0))
    instance_destroy();
