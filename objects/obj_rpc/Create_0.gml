if (global.DebugMode == (2 << 0) || global.DebugMode == (1 << 0))
{
    show_debug_message("NekoPresence init averted.");
    instance_destroy();
    exit;
}

global.DiscordInitialized = false;

if (!np_initdiscord("1309098105227972701", true, "0"))
{
    show_debug_message("NekoPresence init fail.");
    instance_destroy();
    exit;
}

presenceDetails = 
{
    state: "",
    details: "",
    largeImg: "",
    largeImgText: "",
    smallImg: "",
    smallImgText: ""
};
