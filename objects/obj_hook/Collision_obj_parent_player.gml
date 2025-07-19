if (state == (0 << 0))
{
    if (other.state != (74 << 0) && other.state != (0 << 0) && other.state != (76 << 0) && other.state != (18 << 0))
    {
        with (other)
        {
            other.x = other.xstart;
            other.y = other.ystart;
            scr_taunt_storeVariables();
            state = (74 << 0);
            other.playerID = id;
        }
        
        state = (2 << 0);
    }
}
