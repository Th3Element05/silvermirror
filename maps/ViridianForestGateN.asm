	object_const_def
;	const VIRIDIANFORESTGATEN_OFFICER
;	const VIRIDIANFORESTGATEN_SUPER_NERD

ViridianForestGateN_MapScripts:
	def_scene_scripts

	def_callbacks

ViridianForestGateNOfficerScript:
	jumptextfaceplayer ViridianForestGateNOfficerText

ViridianForestGateNSuperNerdScript:
	jumptextfaceplayer ViridianForestGateNSuperNerdText

ViridianForestGateNOfficerText:
	text "Have you noticed"
	line "the bushes on the"
	cont "roadside?"

	para "They can be cut"
	line "down by a special"
	cont "#MON move."
	done

ViridianForestGateNSuperNerdText:
	text "Many #MON live"
	line "only in forests "
	cont "and caves."

	para "You need to look"
	line "everywhere to get"
	cont "different kinds!"
	done

ViridianForestGateN_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  0, ROUTE_2_NORTH, 5
	warp_event  4,  0, ROUTE_2_NORTH, 6
;	warp_event  3,  0, ROUTE_2, 1
;	warp_event  4,  0, ROUTE_2, 2
	warp_event  3,  7, VIRIDIAN_FOREST, 1
	warp_event  4,  7, VIRIDIAN_FOREST, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ViridianForestGateNOfficerScript, -1
	object_event  5,  2, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianForestGateNSuperNerdScript, -1
