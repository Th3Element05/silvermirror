	object_const_def

BikeShop_MapScripts:
	def_scene_scripts

	def_callbacks

BikeShopClerkScript:
	checkevent EVENT_GOT_BICYCLE
	iftrue .NewBike
	opentext
	writetext BikeShopClerkWelcomeText
	promptbutton
	checkitem BIKE_VOUCHER
	iftrue .BikeVoucher
	special PlaceMoneyTopRight
	yesorno
	iffalse .Refused
	checkmoney YOUR_MONEY, 100000
	ifequal HAVE_LESS, .NotEnoughMoney
	waitsfx
	playsound SFX_TRANSACTION
	takemoney YOUR_MONEY, 100000
	special PlaceMoneyTopRight
	waitsfx
	writetext BikeShopBoughtBicycleText
	sjump .BikeEnd

.BikeVoucher
	writetext BikeShopClerkBikeVoucherText
	promptbutton
	waitsfx
	writetext BikeShopGotBicycleText
	takeitem BIKE_VOUCHER
	; fallthrough
.BikeEnd
	giveitem BICYCLE
	playsound SFX_KEY_ITEM
	waitsfx
	itemnotify
	setevent EVENT_GOT_BICYCLE
	writetext BikeShopClerkComeAgainText
	waitbutton
	closetext
	end

.Refused
	writetext BikeShopClerkSaveUpText
	waitbutton
	closetext
	end

.NotEnoughMoney
	writetext BikeShopClerkCantAffordText
	waitbutton
	closetext
	end

.NewBike
	jumptext BikeShopClerkAfterText

BikeShopClerkWelcomeText:
	text "Hi! Welcome to"
	line "our BIKE SHOP."

	para "Have we got just"
	line "the BIKE for you!"

	para "It's a cool BIKE!"

	para "Only ¥100,000!"
	line "Do you want it?"
	done

BikeShopClerkSaveUpText:
	text "Save up some money"
	line "and come back!"
	done

BikeShopClerkCantAffordText:
	text "Sorry! You can't"
	line "afford it!"
	done

BikeShopClerkBikeVoucherText:
	text "Oh, that's..."

	para "A BIKE VOUCHER!"

	para "OK! Here you go!"
	done

BikeShopGotBicycleText:
	text "<PLAYER> exchanged"
	line "the BIKE VOUCHER"
	cont "for a BICYCLE."
	done

BikeShopBoughtBicycleText:
	text "<PLAYER> bought"
	line "a BICYCLE!"
	done

BikeShopClerkComeAgainText:
	text "Come back again"
	line "some time!"
	done

BikeShopClerkAfterText:
	text "How do you like"
	line "your new BICYCLE?"

	para "You can take it"
	line "on CYCLING ROAD"
	cont "and in caves!"
	done

BikeShopYoungsterScript:
	checkitem BICYCLE
	iftrue .CoolBike
	jumptextfaceplayer BikeShopYoungsterText1
.CoolBike
	jumptextfaceplayer BikeShopYoungsterText2

BikeShopYoungsterText1:
	text "These BIKEs are"
	line "cool, but they're"
	cont "way expensive!"
	done

BikeShopYoungsterText2:
	text "Wow. Your BIKE is"
	line "really cool!"
	done

BikeShopPokefanFScript:
	jumptextfaceplayer BikeShopPokefanFText
BikeShopPokefanFText:
	text "A plain city BIKE"
	line "is good enough"
	cont "for me!"

	para "You can't put a"
	line "shopping basket"
	cont "on an MTB!"
	done

BikeShopBicycle:
	jumptext BikeShopBicycleText
BikeShopBicycleText:
	text "It's a shiny new"
	line "BICYCLE!"
	done

BikeShop_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CERULEAN_CITY, 8
	warp_event  3,  7, CERULEAN_CITY, 8

	def_coord_events

	def_bg_events
	bg_event  1,  2, BGEVENT_READ, BikeShopBicycle
;	bg_event  0,  3, BGEVENT_READ, BikeShopBicycle
	bg_event  1,  3, BGEVENT_READ, BikeShopBicycle
;	bg_event  0,  5, BGEVENT_READ, BikeShopBicycle
	bg_event  1,  5, BGEVENT_READ, BikeShopBicycle
	bg_event  0,  6, BGEVENT_READ, BikeShopBicycle
	bg_event  1,  6, BGEVENT_READ, BikeShopBicycle
	bg_event  6,  6, BGEVENT_READ, BikeShopBicycle
;	bg_event  7,  6, BGEVENT_READ, BikeShopBicycle

	def_object_events
	object_event  7,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BikeShopClerkScript, -1
	object_event  1,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BikeShopYoungsterScript, -1
	object_event  5,  6, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BikeShopPokefanFScript, -1
