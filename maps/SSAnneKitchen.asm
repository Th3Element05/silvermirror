	object_const_def

SSAnneKitchen_MapScripts:
	def_scene_scripts

	def_callbacks

;SSAnneKitchenCookScript:
;	faceplayer
;	opentext
;	writetext SSAnneKitchenCookText
;	waitbutton
;	closetext
;	turnobject LAST_TALKED, UP
;	end

SSAnneKitchenCook1Script:
	jumptextfaceplayer SSAnneKitchenCook1Text
SSAnneKitchenCook1Text:
	ntag "COOK:"
	text "You, mon petit!"
	line "We're busy here!"
	cont "Out of the way!"
	done

SSAnneKitchenCook2Script:
	jumptextfaceplayer SSAnneKitchenCook2Text
SSAnneKitchenCook2Text:
	ntag "COOK:"
	text "I saw an odd ball"
	line "in the trash."
	done

SSAnneKitchenCook3Script:
	jumptextfaceplayer SSAnneKitchenCook3Text
SSAnneKitchenCook3Text:
	ntag "COOK:"
	text "I'm so busy I'm"
	line "getting dizzy!"
	done

SSAnneKitchenCook4Script:
	faceplayer
	opentext
	writetext SSAnneKitchenCook4Text
	waitbutton
	closetext
	turnobject LAST_TALKED, UP
	end

SSAnneKitchenCook4Text:
	ntag "COOK:"
	text "Hum-de-hum-de-ho…"

	para "I peel the spuds"
	line "every day!"
	cont "Hum-hum…"
	done

SSAnneKitchenCook5Script:
	faceplayer
	opentext
	writetext SSAnneKitchenCook5Text
	waitbutton
	closetext
	turnobject LAST_TALKED, UP
	end

SSAnneKitchenCook5Text:
	ntag "COOK:"
	text "Did you hear about"
	line "SNORLAX?"

	para "All it does is"
	line "eat and sleep!"
	done

SSAnneKitchenCook6Script:
	faceplayer
	opentext
	writetext SSAnneKitchenCook6Text
	waitbutton
	closetext
	turnobject LAST_TALKED, UP
	end

SSAnneKitchenCook6Text:
	ntag "COOK:"
	text "Snivel… Sniff…"

	para "I only get to"
	line "peel onions…"
	cont "Snivel…"
	done

SSAnneKitchenCook7Script:
	jumptextfaceplayer SSAnneKitchenCook7Text
SSAnneKitchenCook7Text:
	ntag "CHEF:"
	text "Er-hem! Indeed I"
	line "am le CHEF!"

	para "Le main course is"
	line "Prime Beef Steak!"

	para "But, have I enough"
	line "fillets du beef?"
	done

SSAnneKitchenTrashcan:
;	jumpstd TrashCanScript
	jumptext SSAnneKitchenTrashcanText
SSAnneKitchenTrashcanText:
	text "It's full of potato"
	line "peels!"
	done

SSAnneKitchenOnionTrashcan:
	jumptext SSAnneKitchenOnionTrashcanText
SSAnneKitchenOnionTrashcanText:
	text "It's full of onion"
	line "skins."
	done

SSAnneKitchenHiddenGreatBall:
	hiddenitem GREAT_BALL, EVENT_SS_ANNE_KITCHEN_HIDDEN_GREAT_BALL

SSAnneKitchen_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  1,  2, SS_ANNE_1F, 3 ; 1

	def_coord_events

	def_bg_events
	bg_event 13,  5, BGEVENT_READ, SSAnneKitchenTrashcan
	bg_event 13,  7, BGEVENT_READ, SSAnneKitchenTrashcan
	bg_event 13,  9, BGEVENT_ITEM, SSAnneKitchenHiddenGreatBall
	bg_event 13,  9, BGEVENT_READ, SSAnneKitchenOnionTrashcan

	def_object_events
	object_event  1,  8, SPRITE_CHEF, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnneKitchenCook1Script, -1
	object_event  5,  8, SPRITE_CHEF, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnneKitchenCook2Script, -1
	object_event  9,  7, SPRITE_CHEF, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnneKitchenCook3Script, -1
	object_event 13,  6, SPRITE_CHEF, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnneKitchenCook4Script, -1
	object_event 13,  8, SPRITE_CHEF, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnneKitchenCook5Script, -1
	object_event 13, 10, SPRITE_CHEF, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnneKitchenCook6Script, -1
	object_event  8, 12, SPRITE_CHEF, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnneKitchenCook7Script, -1
