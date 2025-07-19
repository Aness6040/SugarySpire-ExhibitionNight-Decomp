if (playerID.state != (18 << 0) && playerID.state != (51 << 0))
    instance_destroy();

image_xscale = playerID.xscale;
x = playerID.x;
y = playerID.y;

if (parryTimer-- <= 0)
    instance_destroy();
