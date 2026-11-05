/obj/structure/closet/secure_closet/station_syndi
	name = "SYNDICATE COUNTERPART TYPEPATH"
	icon = 'modular_panda/icons/obj/storage/closet.dmi'

/obj/structure/closet/secure_closet/station_syndi/sd
	name = "station director's locker"
	icon = 'modular_panda/icons/obj/storage/closet.dmi'
	icon_state = "cap"

/obj/structure/closet/secure_closet/station_syndi/sd/PopulateContents()
	..()
	new /obj/item/clothing/neck/petcollar(src)
	new /obj/item/pet_carrier(src)
	new /obj/item/storage/bag/garment/captain(src)
	new /obj/item/disk/computer/command/captain(src)
	new /obj/item/radio/headset/heads/captain/alt(src)
	new /obj/item/radio/headset/heads/captain(src)
	new /obj/item/door_remote/captain(src)
	new /obj/item/megaphone/command(src)

/obj/structure/closet/secure_closet/station_syndi/sd/populate_contents_immediate()
	new /obj/item/storage/belt/sheath/sabre(src)

	new /obj/item/storage/photo_album/captain(src)

/obj/structure/closet/secure_closet/station_syndi/hro
	name = "human resources officer's locker"
	icon = 'modular_panda/icons/obj/storage/closet.dmi'
	icon_state = "hop"

/obj/structure/closet/secure_closet/station_syndi/hro/PopulateContents()
	..()
	new /obj/item/dog_bone(src)
	new /obj/item/storage/bag/garment/hop(src)
	new /obj/item/disk/computer/command/hop(src)
	new /obj/item/radio/headset/heads/hop(src)
	new /obj/item/storage/box/ids(src)
	new /obj/item/storage/box/silver_ids(src)
	new /obj/item/megaphone/command(src)
	new /obj/item/assembly/flash/handheld(src)
	new /obj/item/clothing/neck/petcollar(src)
	new /obj/item/pet_carrier(src)
	new /obj/item/storage/lockbox/medal/hop(src)
	new /obj/item/storage/box/stamps(src)

/obj/structure/closet/secure_closet/station_syndi/hro/populate_contents_immediate()
	new /obj/item/storage/belt/sheath/sabre(src)

	new /obj/item/storage/photo_album/captain(src)

/obj/structure/closet/secure_closet/station_syndi/cl
	name = "corporate liaison's locker"
	icon = 'modular_panda/icons/obj/storage/closet.dmi'
	icon_state = "cl"
	req_access = list(ACCESS_LAWYER)

/obj/structure/closet/secure_closet/station_syndi/cl/PopulateContents()
	..()
	new /obj/item/storage/bag/garment/cl(src)
	new /obj/item/radio/headset/headset_srvsec(src)
	new /obj/item/assembly/flash/handheld(src)
	new /obj/item/storage/briefcase(src)
	new /obj/item/storage/briefcase/secure(src)
	new /obj/item/taperecorder(src)
	new /obj/item/camera(src)
	new /obj/item/book/manual/wiki/security_space_law(src)
	new /obj/item/folder/syndicate(src)
	new /obj/item/storage/box/stamps(src)
	new /obj/item/storage/box/evidence(src)
	new /obj/item/storage/box/evidence(src)

/obj/structure/closet/secure_closet/station_syndi/cl/populate_contents_immediate()
	new /obj/item/gun/energy/e_gun/mini(src)

/obj/item/storage/bag/garment/cl
	name = "corporate liaison's garment bag"
	desc = "A bag for storing extra clothes and shoes. This one belongs to the corporate liaison."

/obj/item/storage/bag/garment/cl/PopulateContents()
	new /obj/item/clothing/under/rank/civilian/lawyer/liaison(src)
	new /obj/item/clothing/under/rank/civilian/lawyer/liaison/skirt(src)
	new /obj/item/clothing/head/fedora/liaison(src)
	new /obj/item/clothing/suit/hooded/wintercoat/doh(src)
	new /obj/item/clothing/glasses/sunglasses(src)
	new /obj/item/clothing/gloves/color/black(src)
	new /obj/item/clothing/shoes/laceup(src)

/obj/structure/closet/secure_closet/station_syndi/cso
	name = "chief of security operations' locker"
	icon_state = "hos"
	req_access = list(ACCESS_HOS)

/obj/structure/closet/secure_closet/station_syndi/cso/PopulateContents()
	..()

	new /obj/item/disk/computer/command/hos(src)
	new /obj/item/radio/headset/heads/hos(src)
	new /obj/item/radio/headset/heads/hos/alt(src)
	new /obj/item/storage/bag/garment/hos(src)
	new /obj/item/storage/lockbox/medal/sec(src)
	new /obj/item/megaphone/sec(src)
	new /obj/item/holosign_creator/security(src)
	new /obj/item/storage/lockbox/loyalty(src)
	new /obj/item/storage/box/flashbangs(src)
	new /obj/item/shield/riot/tele(src)
	new /obj/item/storage/belt/security/full(src)
	new /obj/item/circuitboard/machine/techfab/department/security(src)

/obj/structure/closet/secure_closet/station_syndi/cso/populate_contents_immediate()
	. = ..()

	// Traitor steal objectives
	new /obj/item/gun/energy/e_gun/hos(src)
	new /obj/item/pinpointer/nuke(src)

	new /obj/item/storage/photo_album/hos(src)

/obj/structure/closet/secure_closet/station_syndi/maa
	name = "master at arms' locker"
	icon_state = "warden"
	req_access = list(ACCESS_ARMORY)

/obj/structure/closet/secure_closet/station_syndi/maa/PopulateContents()
	..()
	new /obj/item/dog_bone(src)
	new /obj/item/radio/headset/headset_sec(src)
	new /obj/item/holosign_creator/security(src)
	new /obj/item/storage/bag/garment/warden(src)
	new /obj/item/storage/box/zipties(src)
	new /obj/item/storage/box/flashbangs(src)
	new /obj/item/storage/belt/security/full(src)
	new /obj/item/flashlight/seclite(src)
	new /obj/item/door_remote/head_of_security(src)
	new /obj/item/storage/belt/bandolier(src)


/obj/structure/closet/secure_closet/station_syndi/maa/populate_contents_immediate()
	. = ..()

/obj/structure/closet/secure_closet/station_syndi/secop
	name = "security operative's locker"
	icon_state = "sec"
	req_access = list(ACCESS_BRIG)

/obj/structure/closet/secure_closet/station_syndi/secop/PopulateContents()
	..()
	new /obj/item/clothing/suit/armor/vest/alt/sec(src)
	new /obj/item/clothing/head/helmet/sec(src)
	new /obj/item/radio/headset/headset_sec(src)
	new /obj/item/radio/headset/headset_sec/alt(src)
	new /obj/item/clothing/glasses/hud/security/sunglasses(src)
	new /obj/item/flashlight/seclite(src)
	new /obj/item/clothing/gloves/tackler(src)

/obj/structure/closet/secure_closet/station_syndi/secop/brig

/obj/structure/closet/secure_closet/station_syndi/secop/brig/PopulateContents()
	..()
	new /obj/item/storage/belt/security/full(src)

/obj/structure/closet/secure_closet/station_syndi/secmed
	name = "trauma specialist's locker"
	icon_state = "secmed"
	req_access = list(ACCESS_BRIG, ACCESS_MEDICAL)

/obj/structure/closet/secure_closet/station_syndi/secmed/PopulateContents()
	..()
	new /obj/item/clothing/suit/armor/vest/alt/sec(src)
	new /obj/item/clothing/head/helmet/sec(src)
	new /obj/item/radio/headset/headset_sec(src)
	new /obj/item/radio/headset/headset_sec/alt(src)
	new /obj/item/clothing/glasses/hud/security/sunglasses(src)
	new /obj/item/flashlight/seclite(src)
	new /obj/item/clothing/gloves/tackler(src)
