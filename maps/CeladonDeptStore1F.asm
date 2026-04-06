	object_const_def

CeladonDeptStore1F_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonDeptStore1FReceptionistScript:
	jumptextfaceplayer CeladonDeptStore1FReceptionistText
CeladonDeptStore1FReceptionistText:
	text "Hello! Welcome to"
	line "CELADON DEPT."
	cont "STORE!"

	para "The directory is"
	line "to the right."
	done

CeladonDeptStore1FGentlemanScript:
	jumptextfaceplayer CeladonDeptStore1FGentlemanText
CeladonDeptStore1FGentlemanText:
	text "The DEPT.STORE"
	line "has a pretty good"
	cont "selection."

	para "But some items"
	line "are only available"
	cont "as GAME CORNER"
	roll "prizes."
	done

CeladonDeptStore1FDirectory:
	jumptext CeladonDeptStore1FDirectoryText
CeladonDeptStore1FDirectoryText:
	text "1F: SERVICE"
	line "    COUNTER"

	para "2F: TRAINER's"
	line "    MARKET"

	para "3F: TM SHOP"

	para "4F: WISEMAN GIFTS"

	para "5F: DRUG STORE"

	para "ROOFTOP SQUARE:"
	line "VENDING MACHINES"
	done

CeladonDeptStore1FCurrentFloorSign:
	jumptext CeladonDeptStore1FCurrentFloorSignText
CeladonDeptStore1FCurrentFloorSignText:
	text "1F: SERVICE"
	line "    COUNTER"
	done

CeladonDeptStore1FElevatorButton:
	jumpstd ElevatorButtonScript

CeladonDeptStore1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  0, CELADON_DEPT_STORE_ELEVATOR, 1
	warp_event 12,  0, CELADON_DEPT_STORE_2F, 3
	warp_event  7,  7, CELADON_CITY, 1
	warp_event  8,  7, CELADON_CITY, 1

	def_coord_events

	def_bg_events
	bg_event  9,  2, BGEVENT_READ, CeladonDeptStore1FDirectory
	bg_event 11,  0, BGEVENT_READ, CeladonDeptStore1FCurrentFloorSign
	bg_event  3,  0, BGEVENT_READ, CeladonDeptStore1FElevatorButton

	def_object_events
	object_event  7,  1, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore1FReceptionistScript, -1
	object_event 10,  5, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore1FGentlemanScript, -1
