if (state == (3 << 0))
{
    returntimer++;
    
    if (returntimer > 15)
    {
        candie = 1;
        movespeed = 0;
    }
}
