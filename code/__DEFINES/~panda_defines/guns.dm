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
// ATTACHMENTS //
/////////////////
#define TRAIT_ATTACHABLE "attachable"

#define COMSIG_ATTACHMENT_ATTACH "attach-attach"
#define COMSIG_ATTACHMENT_DETACH "attach-detach"
#define COMSIG_ATTACHMENT_EXAMINE "attach-examine"
#define COMSIG_ATTACHMENT_EXAMINE_MORE "attach-examine-more"
#define COMSIG_ATTACHMENT_TRY_FIRE_GUN "attach-try-fire-gun"
#define COMSIG_ATTACHMENT_PRE_ATTACK "attach-pre-attack"
#define COMSIG_ATTACHMENT_AFTER_ATTACK "attach-after-attack"
#define COMSIG_ATTACHMENT_ATTACK "attach-attacked"
#define COMSIG_ATTACHMENT_WIELD "attach-wield"
#define COMSIG_ATTACHMENT_UNWIELD "attach-unwield"
#define COMSIG_ATTACHMENT_UPDATE_OVERLAY "attach-overlay"
#define COMSIG_ATTACHMENT_UNIQUE_ACTION "attach-unique-action"
#define COMSIG_ATTACHMENT_SECONDARY_ACTION "attach-secondary-action"
#define COMSIG_ATTACHMENT_CTRL_CLICK "attach-ctrl-click"
#define COMSIG_ATTACHMENT_ALT_CLICK "attach-alt-click"
#define COMSIG_ATTACHMENT_ATTACK_HAND "attach-attack-hand"
#define COMSIG_ATTACHMENT_TOGGLE_SAFETY "attach-safety"

#define COMSIG_ATTACHMENT_TOGGLE "attach-toggle"
#define COMSIG_ATTACHMENT_TOGGLE_AMMO "attach-ammo"

#define COMSIG_ATTACHMENT_GET_SLOT "attach-slot-who"
#define COMSIG_ATTACHMENT_CHANGE_SLOT "change_attach_slot"

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
