	object_const_def
;	const VIRIDIANFORESTGATES_OFFICER
;	const VIRIDIANFORESTGATES_GIRL

ViridianForestGateS_MapScripts:
	def_scene_scripts

	def_callbacks

ViridianForestGateSOfficerScript:
	jumptextfaceplayer ViridianForestGateSOfficerText

ViridianForestGateSLittleGirlScript:
	jumptextfaceplayer ViridianForestGateSLittleGirlText

ViridianForestGateSOfficerText:
	text "Are you going to"
	line "VIRIDIAN FOREST?"
	
	para "Be careful, it's"
	line "a natural maze!"
	done

ViridianForestGateSLittleGirlText:
	text "RATTATA may be"
	line "small, but its"
	cont "bite is wicked!"
	cont "Did you get one?"
	done

ViridianForestGateS_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  0, VIRIDIAN_FOREST, 2
	warp_event  4,  0, VIRIDIAN_FOREST, 3
	warp_event  3,  7, ROUTE_2_SOUTH, 2
	warp_event  4,  7, ROUTE_2_SOUTH, 2
;	warp_event  3,  7, ROUTE_2, 3
;	warp_event  4,  7, ROUTE_2, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianForestGateSOfficerScript, -1
	object_event  5,  4, SPRITE_TWIN, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianForestGateSLittleGirlScript, -1
