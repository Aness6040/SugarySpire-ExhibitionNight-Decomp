if (!instance_exists(baddieID) || baddieID.state != (2 << 0))
{
    instance_destroy();
    exit;
}

image_xscale = baddieID.image_xscale;
x = baddieID.x + (baddieID.image_xscale * 50);
y = baddieID.y;
