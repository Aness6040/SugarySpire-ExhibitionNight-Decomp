if (other.state == (10 << 0))
{
    other.vsp = -2;
    other.hsp = -6 * other.xscale;
    other.state = (35 << 0);
    instance_destroy();
}
