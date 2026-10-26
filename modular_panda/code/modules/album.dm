/obj/item/storage/photo_album/doh
	name = "photo album (Director of Hospitality)"
	icon_state = "album_blue"
	persistence_id = "DOH"

/obj/item/storage/photo_album/doh/Initialize(mapload)
	. = ..()
	REGISTER_REQUIRED_MAP_ITEM(1, 1)
