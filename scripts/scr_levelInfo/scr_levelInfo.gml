global.GameLevelMap = ds_map_create();
global.InternalLevelName = "none";

function scr_defineTitleCard(arg0, arg1 = "event:/music/w1/entryway_titlecard", arg2 = -4, arg3 = -4) constructor
{
    image_index = arg0;
    music = arg1;
    x = arg2;
    y = arg3;
}

function scr_defineLevel(arg0, arg1, arg2, arg3, arg4 = [], arg5 = 20000, arg6 = -4, arg7 = false)
{
    ds_map_add(global.GameLevelMap, arg1, 
    {
        internalName: arg1,
        levelWorld: arg0,
        visualName: arg2,
        groupArr: arg4,
        firstRoom: arg3,
        sRankRequirement: arg5,
        titleCardInfo: arg6,
        isBoss: arg7
    });
}

scr_defineLevel(0, "demohub", "Demo 2 Hub", hub_demohallway);
scr_defineLevel(0, "tutorial", "Tutorial", tutorial_1);
scr_defineLevel(0, "entryway", "Crunchy Construction", entryway_1, ["Entryway"], 16500, new scr_defineTitleCard(0, "event:/music/w1/entryway_titlecard", 37, 42));
scr_defineLevel(0, "steamy", "Cottontown", steamy_1, ["Cottontown"], 22500, new scr_defineTitleCard(1, "event:/music/w1/cottontown_titlecard", 37, 498));
scr_defineLevel(0, "mineshaft", "Sugarshack Mines", mineshaft_1, ["Mines"], 21500, new scr_defineTitleCard(2, "event:/music/w1/mines_titlecard", 37, 498));
scr_defineLevel(0, "molasses", "Molasses Swamp", molasses_1, ["Molasses", "geyserwaves"], 19000, new scr_defineTitleCard(3, "event:/music/w2/molasses_titlecard", 37, 498));
scr_defineLevel(0, "boss_pizzahead", "Boss 1", rm_missing, [], 20000, true);
scr_defineLevel(1, "fudge", "Mt. Fudgetop", mountain_intro, ["Fudgetop"]);
scr_defineLevel(1, "molasses", "Molasses Swamp", molasses_1, ["Molasses"]);
scr_defineLevel(1, "cafe", "Chocoa Cafe", cafe_1, ["Cafe"]);
scr_defineLevel(1, "boss_pizzabro", "Boss 2", rm_missing);

function scr_gotoLevel(arg0)
{
    var level_info = ds_map_find_value(global.GameLevelMap, arg0);
    var first_room = level_info.firstRoom;
    global.texturesToLoad = array_concat(global.texturesToLoad, level_info.groupArr);
    global.InternalLevelName = level_info.internalName;
    global.LevelFirstRoom = first_room;
    global.srank = level_info.sRankRequirement;
    global.arank = global.srank / 2;
    global.brank = global.arank / 2;
    global.crank = global.brank / 2;
}

function scr_defineLevelMenuTune(arg0)
{
    var note_array = [];
    
    switch (arg0)
    {
        default:
            note_array = [(26 << 0), (33 << 0), (38 << 0), (26 << 0), (33 << 0), (38 << 0), (26 << 0), (33 << 0), (26 << 0), (33 << 0), (38 << 0), (26 << 0), (33 << 0), (38 << 0), (26 << 0), (33 << 0), (25 << 0), (32 << 0), (37 << 0), (25 << 0), (32 << 0), (37 << 0), (25 << 0), (32 << 0), (25 << 0), (32 << 0), (37 << 0), (25 << 0), (37 << 0), (32 << 0), (25 << 0), (32 << 0)];
            break;
        
        case "tutorial":
            note_array = [(15 << 0), (16 << 0), (17 << 0), (25 << 0), (17 << 0), (25 << 0), (17 << 0), (25 << 0), (25 << 0), (27 << 0), (28 << 0), (29 << 0), (25 << 0), (27 << 0), (29 << 0), (24 << 0), (27 << 0), (25 << 0), (15 << 0), (16 << 0), (17 << 0), (25 << 0), (17 << 0), (25 << 0), (17 << 0), (25 << 0), (22 << 0), (20 << 0), (19 << 0), (22 << 0), (25 << 0), (29 << 0), (27 << 0), (25 << 0), (22 << 0), (27 << 0)];
            break;
        
        case "entryway":
            note_array = [(19 << 0), (22 << 0), (24 << 0), (26 << 0), (24 << 0), (22 << 0), (19 << 0), (15 << 0), (22 << 0), (24 << 0), (26 << 0), (24 << 0), (29 << 0), (26 << 0), (19 << 0), (22 << 0), (24 << 0), (26 << 0), (29 << 0), (34 << 0), (36 << 0), (36 << 0), (34 << 0), (36 << 0), (38 << 0), (39 << 0), (38 << 0), (31 << 0)];
            break;
        
        case "steamy":
            note_array = [(27 << 0), (30 << 0), (34 << 0), (35 << 0), (33 << 0), (34 << 0), (33 << 0), (30 << 0), (27 << 0), (25 << 0), (30 << 0), (34 << 0), (35 << 0), (33 << 0), (34 << 0), (42 << 0), (41 << 0), (39 << 0), (23 << 0), (27 << 0), (30 << 0), (34 << 0), (30 << 0), (33 << 0), (32 << 0), (30 << 0), (23 << 0), (22 << 0), (26 << 0), (29 << 0), (32 << 0), (29 << 0), (34 << 0), (32 << 0), (30 << 0), (27 << 0)];
            break;
        
        case "mineshaft":
            note_array = [(25 << 0), (27 << 0), (28 << 0), (27 << 0), (24 << 0), (21 << 0), (20 << 0), (18 << 0), (16 << 0), (18 << 0), (21 << 0), (25 << 0), (28 << 0), (33 << 0), (32 << 0), (30 << 0), (28 << 0), (27 << 0), (28 << 0), (27 << 0), (25 << 0), (28 << 0), (27 << 0), (25 << 0), (28 << 0), (27 << 0), (20 << 0), (28 << 0), (27 << 0), (24 << 0), (20 << 0), (21 << 0), (20 << 0), (18 << 0), (20 << 0), (21 << 0), (16 << 0), (13 << 0), (21 << 0), (16 << 0), (13 << 0), (21 << 0), (16 << 0), (21 << 0), (21 << 0), (28 << 0), (27 << 0), (32 << 0)];
            break;
        
        case "molasses":
            note_array = [(14 << 0), (26 << 0), (24 << 0), (21 << 0), (19 << 0), (17 << 0), (17 << 0), (17 << 0), (19 << 0), (17 << 0), (21 << 0), (19 << 0), (14 << 0), (14 << 0), (17 << 0), (17 << 0), (19 << 0), (14 << 0), (21 << 0), (24 << 0), (26 << 0), (26 << 0), (21 << 0), (19 << 0), (21 << 0), (19 << 0), (17 << 0), (19 << 0), (21 << 0), (14 << 0), (14 << 0), (17 << 0), (17 << 0), (21 << 0), (26 << 0), (24 << 0), (26 << 0), (29 << 0)];
            break;
    }
    
    return note_array;
}

global.MenuNoteArray = scr_defineLevelMenuTune("none");
global.MenuNoteArraySelect = 0;
