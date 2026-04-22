	object_const_def

AzaleaPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

AzaleaPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

AzaleaPokecenter1FGentlemanScript:
	jumptextfaceplayer AzaleaPokecenter1FGentlemanText
AzaleaPokecenter1FGentlemanText:
	text "The PAGER SYSTEM"
	line "on the #GEAR"
	cont "is so convenient!"
;
;	para "You don't need to"
;	line "teach HM moves to"
;	cont "your own #MON"
;	roll "to get around!"
	done

AzaleaPokecenter1FFishingGuruScript:
	jumptextfaceplayer AzaleaPokecenter1FFishingGuruText
AzaleaPokecenter1FFishingGuruText:
	text "BILL's PC can"
	line "store up to 20"
	cont "#MON per BOX."
	done

AzaleaPokecenter1FPokefanFScript:
	jumptextfaceplayer AzaleaPokecenter1FPokefanFText
AzaleaPokecenter1FPokefanFText:
	text "Do you know about"
	line "APRICORNs?"

	para "Crack one open,"
	line "hollow it out and"
	cont "fit it with a"
	roll "special device."

	para "Then you can catch"
	line "#MON with it!"

	para "Before #BALLs"
	line "were invented,"
	cont "everyone used"
	roll "APRICORNs."
	done

AzaleaPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, AZALEA_TOWN, 1
	warp_event  4,  7, AZALEA_TOWN, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaPokecenter1FNurseScript, -1
	object_event  9,  6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaPokecenter1FGentlemanScript, -1
	object_event  6,  1, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaPokecenter1FFishingGuruScript, -1
	object_event  1,  4, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaPokecenter1FPokefanFScript, -1
