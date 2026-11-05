/// send when enabling/diabling an autofire component for guns
#define COMSIG_GUN_DISABLE_AIMEDFIRE "disable_aimedfire"
#define COMSIG_GUN_ENABLE_AIMEDFIRE "enable_aimedfire"
#define COMSIG_GUN_SET_AIMEDFIRE_SPEED "set_aimedfire_speed"

/// send when enabling/diabling an autofire component for guns
#define COMSIG_GUN_DISABLE_AUTOFIRE "disable_autofire"
#define COMSIG_GUN_ENABLE_AUTOFIRE "enable_autofire"
#define COMSIG_GUN_SET_AUTOFIRE_SPEED "set_autofire_speed"

///sent when guns need to notify the gun hud to update. mostly for revolvers.
#define COMSIG_UPDATE_AMMO_HUD "update_ammo_hud"

///sent to targets during the process_hit proc of projectiles
#define COMSIG_PELLET_CLOUD_INIT "pellet_cloud_init"

#define COMSIG_CLICK_UNIQUE_ACTION "unique_action"
	#define OVERRIDE_UNIQUE_ACTION 1

#define COMSIG_CLICK_SECONDARY_ACTION "secondary_action"
	#define OVERRIDE_SECONDARY_ACTION 1
