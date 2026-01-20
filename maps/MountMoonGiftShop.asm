	object_const_def

MountMoonGiftShop_MapScripts:
	def_scene_scripts

	def_callbacks

MountMoonGiftShopClerkScript:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_MT_MOON
	closetext
	end

MountMoonGiftShopLassScript:
	jumptextfaceplayer MountMoonGiftShopLassText
MountMoonGiftShopLassText:
	text "When the sun goes"
	line "down, CLEFAIRY"
	cont "come out to play."
	done

MountMoonGiftShopPhoto:
	jumptext MountMoonGiftShopPhotoText
MountMoonGiftShopPhotoText:
	text "It's a photo of"
	line "some pink things"
	cont "outside."

	para "It's titled:"
	line "CLEFAIRY sighting!"

	para "The photo is too"
	line "blurry to make out"
	cont "what they are."
	done

;MountMoonGiftShopNothingHere:
;	jumptext MountMoonGiftShopNothingHereText
;MountMoonGiftShopNothingHere:
;	text "There's nothing"
;	line "here."
;	done

MountMoonGiftShop_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, MOUNT_MOON_SQUARE, 2
	warp_event  5,  7, MOUNT_MOON_SQUARE, 2

	def_coord_events

	def_bg_events
	bg_event  2,  0, BGEVENT_READ, MountMoonGiftShopPhoto
	bg_event  3,  0, BGEVENT_READ, MountMoonGiftShopPhoto
;	bg_event  7,  3, BGEVENT_READ, MountMoonGiftShopNothingHere

	def_object_events
	object_event  6,  2, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, MORN, 0, OBJECTTYPE_SCRIPT, 0, MountMoonGiftShopClerkScript, -1
	object_event  1,  2, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, DAY | EVE, 0, OBJECTTYPE_SCRIPT, 0, MountMoonGiftShopClerkScript, -1
	object_event  1,  6, SPRITE_LASS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, MORN, 0, OBJECTTYPE_SCRIPT, 0, MountMoonGiftShopLassScript, -1
	object_event  5,  3, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 1, -1, DAY, 0, OBJECTTYPE_SCRIPT, 0, MountMoonGiftShopLassScript, -1
	object_event  6,  6, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 1, -1, EVE, 0, OBJECTTYPE_SCRIPT, 0, MountMoonGiftShopLassScript, -1

; MORN | DAY | EVE | NITE