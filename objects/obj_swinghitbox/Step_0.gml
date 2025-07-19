x = playerID.x;
y = playerID.y;

if (mach && playerID.state != (33 << 0) && !global.freezeframe)
    instance_destroy();
