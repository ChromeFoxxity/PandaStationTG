/obj/effect/mapping_helpers/airlock/access/any/service/doh/get_access()
	var/list/access_list = ..()
	access_list += ACCESS_DOH
	return access_list

/obj/effect/mapping_helpers/airlock/access/all/service/doh/get_access()
	var/list/access_list = ..()
	access_list += ACCESS_DOH
	return access_list
