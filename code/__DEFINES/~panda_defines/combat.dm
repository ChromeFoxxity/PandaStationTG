/*ALL DEFINES RELATED TO COMBAT GO HERE*/

#define EFFECT_IRRADIATE "irradiate"
#define EFFECT_STUTTER "stutter"
#define EFFECT_SLUR "slur"
#define EFFECT_EYE_BLUR "eye_blur"
#define EFFECT_DROWSY "drowsy"

#define GODMODE (1<<4)

//click cooldowns, in tenths of a second, used for various combat actions
#define HEAVY_WEAPON_CD 10
#define CLICK_CD_BLOCKED 10
#define LIGHT_WEAPON_CD 6

#define ALL_ATTACK_TYPES list(MELEE_ATTACK, UNARMED_ATTACK, PROJECTILE_ATTACK, THROWN_PROJECTILE_ATTACK, LEAP_ATTACK)
#define NON_PROJECTILE_ATTACKS list(MELEE_ATTACK, UNARMED_ATTACK, LEAP_ATTACK)

//intent defines
#define INTENT_HELP "help"
#define INTENT_GRAB "grab"
#define INTENT_DISARM "disarm"
#define INTENT_HARM "harm"
//NOTE: INTENT_HOTKEY_* defines are not actual intents!
//they are here to support hotkeys
#define INTENT_HOTKEY_LEFT "left"
#define INTENT_HOTKEY_RIGHT "right"

//Shove slowdown
#define SHOVE_SLOWDOWN_LENGTH 30
#define SHOVE_SLOWDOWN_STRENGTH 0.85 //multiplier

//Combat object defines

//Embedded objects

///Chance for embedded objects to cause pain (damage user)
#define EMBEDDED_PAIN_CHANCE 15
///Chance for embedded object to fall out (causing pain but removing the object)
#define EMBEDDED_ITEM_FALLOUT 5
///Chance for an object to embed into somebody when thrown
#define EMBED_CHANCE 45
///Coefficient of multiplication for the damage the item does while embedded (this*item.w_class)
#define EMBEDDED_PAIN_MULTIPLIER 2
///Coefficient of multiplication for the damage the item does when it first embeds (this*item.w_class)
#define EMBEDDED_IMPACT_PAIN_MULTIPLIER 4
///Coefficient of multiplication for the damage the item does when it falls out or is removed without a surgery (this*item.w_class)
#define EMBEDDED_UNSAFE_REMOVAL_PAIN_MULTIPLIER 6
///A Time in ticks, total removal time = (this*item.w_class)
#define EMBEDDED_UNSAFE_REMOVAL_TIME 30
///Chance for embedded objects to cause pain every time they move (jostle)
#define EMBEDDED_JOSTLE_CHANCE 5
///Coefficient of multiplication for the damage the item does while
#define EMBEDDED_JOSTLE_PAIN_MULTIPLIER 1
///This percentage of all pain will be dealt as stam damage rather than brute (0-1)
#define EMBEDDED_PAIN_STAM_PCT 0.0


#define EMBED_HARMLESS list("pain_mult" = 0, "jostle_pain_mult" = 0, "ignore_throwspeed_threshold" = TRUE)
#define EMBED_HARMLESS_SUPERIOR list("pain_mult" = 0, "jostle_pain_mult" = 0, "ignore_throwspeed_threshold" = TRUE, "embed_chance" = 100, "fall_chance" = 0.1)
#define EMBED_POINTY list("ignore_throwspeed_threshold" = TRUE)
#define EMBED_POINTY_SUPERIOR list("embed_chance" = 100, "ignore_throwspeed_threshold" = TRUE)

//Object/Item sharpness
#define SHARP_NONE 0

#define EX_LIGHT_BASE_DAM 40
#define EX_LIGHT_BASE_ITEM_DAM 45
#define EX_HEAVY_BASE_DAM 80
#define EX_HEAVY_BASE_ITEM_DAM 75

#define GRENADE_NO_FUMBLE 3

#define BODY_ZONE_TAIL "tail"

/// Calls the effects of flashes. Screen overlays and such.
#define FLASH_EFFECT (1<<0)
/// Whether the flash should cause eye damage.
#define FLASH_DAMAGE (1<<1)
