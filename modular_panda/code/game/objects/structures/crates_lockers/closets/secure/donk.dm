/obj/structure/closet/secure_closet/donk
	name = "donk co. locker"
	icon = 'modular_panda/icons/obj/storage/closet.dmi'
	icon_state = "donk"

/obj/structure/closet/secure_closet/donk/hydroponics
	name = "botanist's locker"
	req_access = list(ACCESS_HYDROPONICS)
	icon = 'modular_panda/icons/obj/storage/closet.dmi'
	icon_state = "donk_green"

/obj/structure/closet/secure_closet/donk/hydroponics/PopulateContents()
	..()
	new /obj/item/storage/bag/plants/portaseeder(src)
	new /obj/item/plant_analyzer(src)
	new /obj/item/radio/headset/headset_srv(src)
	new /obj/item/cultivator(src)
	new /obj/item/hatchet(src)
	new /obj/item/secateurs(src)

/obj/structure/closet/secure_closet/doh
	name = "director of hospitality's locker"
	icon = 'modular_panda/icons/obj/storage/closet.dmi'
	icon_state = "doh"
	req_access = list(ACCESS_DOH)

/obj/structure/closet/secure_closet/doh/PopulateContents()
	..()
	new /obj/item/storage/bag/garment/doh(src)
	new /obj/item/storage/lockbox/medal/service(src)
	new /obj/item/disk/computer/command/hop(src)
	new /obj/item/radio/headset/heads/hop(src)
	new /obj/item/megaphone/command(src)
	new /obj/item/assembly/flash/handheld(src)
	new /obj/item/autosurgeon/nutriment_pump(src)
	new /obj/item/clothing/neck/petcollar(src)
	new /obj/item/pet_carrier(src)
	new /obj/item/door_remote/head_of_personnel(src)
	new /obj/item/circuitboard/machine/techfab/department/service(src)

/obj/structure/closet/secure_closet/doh/populate_contents_immediate()
	new /obj/item/gun/energy/e_gun(src)
	new /obj/item/storage/photo_album/doh(src)

/obj/item/storage/bag/garment/doh
	name = "director of hospitality's garment bag"
	desc = "A bag for storing extra clothes and shoes. This one belongs to the director of hospitality."

/obj/item/storage/bag/garment/doh/PopulateContents()
	new /obj/item/clothing/under/rank/donk/officer(src)
	new /obj/item/clothing/under/rank/donk/officer/skirt(src)
	new /obj/item/clothing/suit/jacket/donk_suit(src)
	new /obj/item/clothing/suit/hooded/wintercoat/doh(src)
	new /obj/item/clothing/glasses/sunglasses(src)
	new /obj/item/clothing/head/soft/donk(src)
	new /obj/item/clothing/gloves/color/black(src)
	new /obj/item/clothing/shoes/laceup(src)

/obj/item/disk/computer/command/doh
	name = "director of hospitality data disk"
	desc = "Removable disk used to download essential DoH tablet apps."
	starting_programs = list(
		/datum/computer_file/program/records/security,
		/datum/computer_file/program/job_management,
	)

/obj/item/autosurgeon/nutriment_pump
	desc = "A single use autosurgeon that contains a nutriment stomach pump augment. A screwdriver can be used to remove it, but implants can't be placed back in."
	uses = 1
	starting_organ = /obj/item/organ/cyberimp/chest/nutriment

/obj/item/door_remote/head_of_personnel // This ain't yours no more.
	name = "service door remote"
	desc = "A remote for controlling a set of airlocks. This one smells like printer ink, and fills its holder with the urge \
		to mysteriously vanish."
	department = "civilian"
	region_access = REGION_GENERAL
	owner_trim = /datum/id_trim/job/director_of_hospitality
