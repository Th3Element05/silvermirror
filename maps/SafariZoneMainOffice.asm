	object_const_def

SafariZoneMainOffice_MapScripts:
	def_scene_scripts

	def_callbacks

SafariZoneMainOfficeReceptionist:
	jumptextfaceplayer SafariZoneMainOfficeReceptionistText
SafariZoneMainOfficeReceptionistText:
	text "SLOWPOKE came in,"
	line "but I couldn't"
	cont "understand him."

	para "I think he's got"
	line "a speech problem!"
	done

SafariZoneMainOfficeScientist:
	jumptextfaceplayer SafariZoneMainOfficeScientistText
SafariZoneMainOfficeScientistText:
	text "SLOWPOKE is very"
	line "knowledgeable"
	cont "about #MON!"

	para "He even has some"
	line "fossils of rare,"
	cont "extinct #MON!"
	done

SafariZoneMainOfficeClerk:
	jumptextfaceplayer SafariZoneMainOfficeClerkText
SafariZoneMainOfficeClerkText:
	text "We nicknamed the"
	line "WARDEN SLOWPOKE."

	para "He and SLOWPOKE"
	line "both look vacant!"
	done

SafariZoneMainOffice_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, FUCHSIA_CITY, 3
	warp_event  3,  7, FUCHSIA_CITY, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  5, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SafariZoneMainOfficeReceptionist, -1
	object_event  5,  1, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SafariZoneMainOfficeScientist, -1
	object_event  7,  4, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, SafariZoneMainOfficeClerk, -1
