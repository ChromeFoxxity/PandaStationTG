// Shotgun

/obj/item/ammo_casing/shotgun
	name = "shotgun slug"
	desc = "A 12-gauge lead slug."
	icon = 'modular_panda/icons/obj/weapons/ammo/bullets/shell.dmi'
	icon_state = "slug"
	caliber = "12ga"

/obj/item/ammo_casing/shotgun/buckshot
	name = "buckshot shell"
	desc = "A 12-gauge buckshot shell."
	icon_state = "buckshot"
	pellets = 8
	variance = 25

/obj/item/ammo_casing/shotgun/buckshot/old
	name = "old buckshot shell"
	desc = "A 12-gauge buckshot shell, this one seems aged and possibly dangerous to use."
	icon_state = "buckshot_old"

/obj/item/ammo_casing/shotgun/beanbag
	name = "beanbag slug"
	desc = "A weak beanbag slug for riot control."
	icon_state = "beanbag"

/obj/item/ammo_casing/shotgun/rubbershot
	name = "rubber shot"
	desc = "A shotgun casing filled with densely-packed rubber balls, used to incapacitate crowds from a distance."
	icon_state = "rubber"
	pellets = 8
	variance = 25

/obj/item/ammo_casing/shotgun/blank
	name = "blank shell"
	desc = "A shell packed with powder but no projectile."
	icon_state = "blank"
	projectile_type = /obj/projectile/bullet/pellet/blank

/obj/item/ammo_casing/shotgun/incendiary
	name = "incendiary slug"
	desc = "An incendiary-coated shotgun slug."
	icon_state = "incendiary"

/obj/item/ammo_casing/shotgun/improvised
	name = "surplus buckshot shell"
	desc = "A makeshift shotgun shell with multiple small pellets made out of metal shards."
	icon_state = "improvised"
	projectile_type = /obj/projectile/bullet/pellet/shotgun_improvised
	custom_materials = list(/datum/material/iron=250)
	pellets = 10
	variance = 25

/obj/item/ammo_casing/shotgun/incapacitate
	name = "custom incapacitating shot"
	desc = "A shotgun casing filled with... something. Used to incapacitate targets."
	icon_state = "bounty"

/obj/item/ammo_casing/shotgun/executioner
	icon_state = "taser"

/obj/item/ammo_casing/shotgun/pulseslug
	icon_state = "pulse"

/obj/item/ammo_casing/shotgun/stunslug
	name = "taser slug"
	desc = "A stunning taser slug."
	icon_state = "taser"

/obj/item/ammo_casing/shotgun/dart
	name = "shotgun dart"
	desc = "A dart for use in shotguns. Can be injected with up to ten units of any chemical."
	icon_state = "dart"

/obj/item/ammo_casing/shotgun/scatterlaser
	icon_state = "laser"

/obj/item/ammo_casing/shotgun/pulverizer
	icon_state = "taser"

/*
		Tech Shells
*/

/obj/item/ammo_casing/shotgun/techshell
	name = "unloaded technological shell"
	desc = "A high-tech shotgun shell which can be loaded with materials to produce unique effects."
	icon_state = "techblank"
	projectile_type = null

/obj/item/ammo_casing/shotgun/meteorslug
	name = "meteorslug shell"
	desc = "A shotgun shell rigged with CMC technology, which launches a massive slug when fired."
	icon_state = "meteor"
	projectile_type = /obj/projectile/bullet/slug/shotgun_meteor

/obj/item/ammo_casing/shotgun/frag12
	name = "FRAG-12 slug"
	desc = "A high explosive breaching round for a 12 gauge shotgun."
	icon_state = "frag12"
	projectile_type = /obj/projectile/bullet/shotgun_frag12

/obj/item/ammo_casing/shotgun/ion
	name = "ion shell"
	desc = "An advanced shotgun shell which uses a micro laser to focus the effects of an EMP reaction to produce an effect similar to a standard ion rifle. \
	The more uncontrolled nature of the reaction causes the pulse to spread into multiple individually weaker bolts."
	icon_state = "ion"
	projectile_type = /obj/projectile/ion/weak
	pellets = 8
	variance = 25
