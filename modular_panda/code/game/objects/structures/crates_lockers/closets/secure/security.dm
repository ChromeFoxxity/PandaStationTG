/obj/structure/closet/secure_closet/captains
	name = "station director's locker"
	icon = 'modular_panda/icons/obj/storage/closet.dmi'

/obj/structure/closet/secure_closet/hop
	name = "human resources officer's locker"
	icon = 'modular_panda/icons/obj/storage/closet.dmi'

/obj/structure/closet/secure_closet/hop/PopulateContents()
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

/obj/structure/closet/secure_closet/cl
	name = "corporate liaison's locker"
	icon = 'modular_panda/icons/obj/storage/closet.dmi'
	icon_state = "cl"
	req_access = list(ACCESS_LAWYER)

/obj/structure/closet/secure_closet/cl/PopulateContents()
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

/obj/structure/closet/secure_closet/cl/populate_contents_immediate()
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
