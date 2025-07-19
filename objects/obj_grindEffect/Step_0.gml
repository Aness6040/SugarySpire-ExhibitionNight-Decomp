x = playerID.x;
y = playerID.y;

if ((playerID.state != (16 << 0) && playerID.state != (61 << 0)) || !playerID.grounded)
    instance_destroy();
