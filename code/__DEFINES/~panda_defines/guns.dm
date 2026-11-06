//Gun weapon weight
/// You must FULLY wield (wait the full wield delay) the gun to fire this gun
#define WEAPON_VERY_HEAVY 4
//Gun bolt types
///Gun has a bolt, it stays closed while not cycling. The gun must be racked to have a bullet chambered when a mag is inserted.
///Gun has an HK-style locking charging handle, so you can slap it. Only use this for flavor, otherwise modern-style automatics should use BOLT_TYPE_LOCKING.
/// Example: everything made by lanchester
#define BOLT_TYPE_CLIP 5
//Sawn off nerfs
///added recoil of sawn off guns
#define SAWN_OFF_RECOIL 1

//Aimed fire component
/// Compatible firemode is in the gun. Wait until it's held in the user hands.
#define AIMEDFIRE_STAT_IDLE (1<<0)
/// Gun is active and in the user hands. Wait until user does a valid click.
#define AIMEDFIRE_STAT_ALERT (1<<1)
/// Gun is shooting.
#define AIMEDFIRE_STAT_AIMING (1<<2)

#define COMSIG_AIMEDFIRE_ONMOUSEDOWN "aimedfire_onmousedown"
	#define COMPONENT_AIMEDFIRE_ONMOUSEDOWN_BYPASS (1<<0)
#define COMSIG_AIMEDFIRE_SHOT "aimedfire_shot"
	#define COMPONENT_AIMEDFIRE_SHOT_SUCCESS (1<<0)

#define SUPPRESSED_EXTREME 3 /// doesnt trigger aggro

// Misfire chances if the gun's safety is off
#define GUN_NO_SAFETY_MALFUNCTION_CHANCE_LOW 5
#define GUN_NO_SAFETY_MALFUNCTION_CHANCE_MEDIUM 10
#define GUN_NO_SAFETY_MALFUNCTION_CHANCE_HIGH 15

//aiming down sights values
#define PISTOL_ZOOM 2
#define SHOTGUN_ZOOM 2
#define SMG_ZOOM 2
#define RIFLE_ZOOM 2
#define DMR_ZOOM 6

//ads slowdown
#define PISTOL_AIM_SLOWDOWN 0.1
#define SHOTGUN_AIM_SLOWDOWN 0.3
#define SMG_AIM_SLOWDOWN 0.2
#define RIFLE_AIM_SLOWDOWN 0.3
#define LONG_RIFLE_AIM_SLOWDOWN 0.4
#define HEAVY_AIM_SLOWDOWN 0.6

//slowdown defines
#define NO_SLOWDOWN 0.0
#define LIGHT_PISTOL_SLOWDOWN 0.05
#define PISTOL_SLOWDOWN 0.1
#define REVOLVER_SLOWDOWN 0.15
#define HEAVY_REVOLVER_SLOWDOWN 0.2
#define PDW_SLOWDOWN 0.25
#define SMG_SLOWDOWN 0.3
#define SHOTGUN_SLOWDOWN 0.4
#define HEAVY_SHOTGUN_SLOWDOWN 0.45
#define LIGHT_RIFLE_SLOWDOWN 0.45
#define RIFLE_SLOWDOWN 0.55
#define HEAVY_RIFLE_SLOWDOWN 0.6
#define DMR_SLOWDOWN 0.6
#define SAW_SLOWDOWN 0.7
#define LIGHT_SNIPER_SLOWDOWN 0.75
#define SNIPER_SLOWDOWN 0.9
#define HMG_SLOWDOWN 1
#define AMR_SLOWDOWN 1


//laser slowdown
#define LASER_PISTOL_SLOWDOWN 0.05
#define LASER_SMG_SLOWDOWN 0.2
#define LASER_RIFLE_SLOWDOWN 0.35
#define HEAVY_LASER_RIFLE_SLOWDOWN 0.45
#define LASER_SNIPER_SLOWDOWN 0.6
#define LASER_CANNON_SLOWDOWN 1.0

/////////////////
// PROJECTILES //
/////////////////

//Projectile Reflect
#define REFLECT_NORMAL (1<<0)
#define REFLECT_FAKEPROJECTILE (1<<1)

#define FIREMODE_SEMIAUTO "single"
#define FIREMODE_BURST "burst"
#define FIREMODE_FULLAUTO "auto"
#define FIREMODE_AIMED "aim"
#define FIREMODE_OTHER "other"
#define FIREMODE_OTHER_TWO "other2"


#define GUN_LEFTHAND_ICON 'icons/mob/inhands/weapons/guns_lefthand.dmi'
#define GUN_RIGHTHAND_ICON 'icons/mob/inhands/weapons/guns_righthand.dmi'
