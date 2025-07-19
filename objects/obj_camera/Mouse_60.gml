if (global.DebugMode == (2 << 0) && keyboard_check(ord("C")))
{
    cam_zoom += 0.1;
    cam_lzoom = cam_zoom;
}
