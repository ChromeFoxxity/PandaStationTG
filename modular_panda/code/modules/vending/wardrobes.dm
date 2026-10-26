/obj/machinery/vending/wardrobe/donk_wardrobe
	name = "DonkDrobe"
	desc = "This vending machine might not dispense donk pockets, but it certainly dispenses Donk Corporation branded clothing."
	icon = 'modular_panda/icons/obj/machines/vending.dmi'
	icon_state = "donkdrobe"
	product_ads = "Donk Pockets make life better!;Snacks, Supplies, Smiles!;Work Today! Donk Tomorrow!"
	vend_reply = "Have a DONK-ALICIOUS day!"
	products = list(
		/obj/item/clothing/under/rank/donk/general = 2,
		/obj/item/clothing/under/rank/donk/bartender = 2,
		/obj/item/clothing/under/rank/donk/janitor = 2,
		/obj/item/clothing/head/soft/donk = 2,
		/obj/item/clothing/head/soft/donk/green = 2,
		/obj/item/clothing/suit/apron/chef/donk = 2,
		/obj/item/clothing/suit/apron/overalls/donk = 2,
		/obj/item/clothing/suit/jacket/donk_waistcoat = 2,
		/obj/item/clothing/suit/jacket/donk_sweatervest = 2,
		/obj/item/clothing/shoes/jackboots = 2,
		/obj/item/clothing/shoes/cookflops = 2,
		/obj/item/clothing/shoes/sneakers/black = 2,
		/obj/item/clothing/shoes/laceup = 2,
		/obj/item/clothing/gloves/latex = 2,
		/obj/item/clothing/gloves/latex/nitrile/janitor = 2,
		/obj/item/clothing/accessory/armband/donk = 2,
		/obj/item/clothing/accessory/armband/donk/green = 2,
		/obj/item/clothing/glasses/sunglasses/reagent/donk = 3,
		/obj/item/storage/bag/money = 2,
		/obj/item/storage/dice/hazard = 1,
		/obj/item/circuitboard/machine/dish_drive = 2,
		/obj/item/rag = 2,
		/obj/item/radio/headset/headset_srv = 3,
	)
	contraband = list(
		/obj/item/toy/plush/donkpocket = 1,
		/obj/item/storage/box/donkpockets/donkpocketgondola = 1,
		/obj/item/storage/fancy/pickles_jar = 1,
		/obj/item/mod/module/recycler/donk/safe = 1,
	)
	refill_canister = /obj/item/vending_refill/wardrobe/donk_wardrobe
	payment_department = ACCOUNT_SRV
	light_color = LIGHT_COLOR_DIM_YELLOW

/obj/item/vending_refill/wardrobe/donk_wardrobe
	machine_name = "DonkDrobe"
