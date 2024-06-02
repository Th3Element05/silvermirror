	object_const_def
	const POWERPLANT_ZAPDOS
	const POWERPLANT_THUNDERBOLT

PowerPlant_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, PowerPlantTilesCallback

PowerPlantTilesCallback:
	checkevent EVENT_FOUGHT_ZAPDOS
	iffalse .DoorClosed
	changeblock 4, 12, $3c ; door open
.DoorClosed
	endcallback

PowerPlantZapdos:
	opentext
	writetext ZapdosText
	cry ZAPDOS
	pause 20
	closetext
;	loadvar VAR_BATTLETYPE, BATTLETYPE_KANTO_LEGEND
	loadwildmon ZAPDOS, 50
	startbattle
	disappear POWERPLANT_ZAPDOS
	setevent EVENT_FOUGHT_ZAPDOS
	reloadmapafterbattle
	special CheckBattleCaughtResult
	iffalse .NoCatch
	setflag ENGINE_PLAYER_CAUGHT_ZAPDOS
.NoCatch
	checkevent EVENT_GOT_TM24_THUNDERBOLT
	iftrue .GotThunderbolt
	appear POWERPLANT_THUNDERBOLT
	setevent EVENT_GOT_TM24_THUNDERBOLT
.GotThunderbolt
	changeblock 4, 12, $3c ; door open
	end

ZapdosText:
	text "Gyaoo!"
	done

PowerPlantVoltorbTrapScript:
	variablesprite SPRITE_VOLTORB_TRAP, SPRITE_VOLTORB
	special LoadUsedSpritesGFX
	opentext
	writetext PowerPlantBzzztText
	cry VOLTORB
	pause 20
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon VOLTORB, 37
	startbattle
	disappear LAST_TALKED
	variablesprite SPRITE_VOLTORB_TRAP, SPRITE_POKE_BALL
	reloadmapafterbattle
	end

PowerPlantElectrodeTrapScript:
	variablesprite SPRITE_VOLTORB_TRAP, SPRITE_ELECTRODE
	special LoadUsedSpritesGFX
	opentext
	writetext PowerPlantBzzztText
	cry ELECTRODE
	pause 20
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon ELECTRODE, 40
	startbattle
	disappear LAST_TALKED
	variablesprite SPRITE_VOLTORB_TRAP, SPRITE_POKE_BALL
	reloadmapafterbattle
	end

PowerPlantBzzztText:
	text "Bzzzt!"
	done

PowerPlantBookshelf:
	jumpstd DifficultBookshelfScript

; items
PowerPlantTMThunderbolt:
	itemball TM_THUNDERBOLT

PowerPlantCarbos:
	itemball CARBOS

PowerPlantTMReflect:
	itemball TM_REFLECT

PowerPlantTMThunder:
	itemball TM_THUNDER

PowerPlantRareCandy:
	itemball RARE_CANDY

PowerPlantHPUp:
	itemball HP_UP

PowerPlantHiddenMaxElixer:
	hiddenitem MAX_ELIXER, EVENT_POWER_PLANT_HIDDEN_MAX_ELIXER

PowerPlantHiddenPPUp:
	hiddenitem PP_UP, EVENT_POWER_PLANT_HIDDEN_PP_UP

PowerPlant_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 35, ROUTE_10_SOUTH, 1
	warp_event  5, 35, ROUTE_10_SOUTH, 1

	def_coord_events

	def_bg_events
	bg_event 19, 17, BGEVENT_ITEM, PowerPlantHiddenMaxElixer
	bg_event 14,  0, BGEVENT_ITEM, PowerPlantHiddenPPUp
	bg_event 16,  1, BGEVENT_READ, PowerPlantBookshelf
	bg_event 17,  1, BGEVENT_READ, PowerPlantBookshelf
	bg_event 18,  1, BGEVENT_READ, PowerPlantBookshelf
	bg_event 19,  1, BGEVENT_READ, PowerPlantBookshelf
	bg_event 20,  1, BGEVENT_READ, PowerPlantBookshelf
	bg_event 21,  1, BGEVENT_UP, PowerPlantBookshelf
	bg_event 17, 31, BGEVENT_READ, PowerPlantBookshelf
	bg_event 18, 31, BGEVENT_READ, PowerPlantBookshelf
	bg_event 19, 31, BGEVENT_READ, PowerPlantBookshelf
	bg_event 32, 31, BGEVENT_UP, PowerPlantBookshelf
	bg_event 33, 31, BGEVENT_READ, PowerPlantBookshelf

	def_object_events
	object_event  4,  9, SPRITE_ZAPDOS, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_ROCK, OBJECTTYPE_SCRIPT, 0, PowerPlantZapdos, EVENT_ZAPDOS_APPEAR
	object_event  3, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, PowerPlantTMThunderbolt, EVENT_POWER_PLANT_TM_THUNDERBOLT
	object_event 10, 23, SPRITE_VOLTORB_TRAP, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PowerPlantVoltorbTrapScript, EVENT_POWER_PLANT_VOLTORB_1
	object_event 33, 20, SPRITE_VOLTORB_TRAP, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PowerPlantVoltorbTrapScript, EVENT_POWER_PLANT_VOLTORB_2
	object_event 23, 34, SPRITE_VOLTORB_TRAP, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PowerPlantVoltorbTrapScript, EVENT_POWER_PLANT_VOLTORB_3
	object_event 18, 26, SPRITE_VOLTORB_TRAP, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PowerPlantVoltorbTrapScript, EVENT_POWER_PLANT_VOLTORB_4
	object_event 25, 28, SPRITE_VOLTORB_TRAP, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PowerPlantVoltorbTrapScript, EVENT_POWER_PLANT_VOLTORB_5
	object_event 37, 32, SPRITE_VOLTORB_TRAP, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PowerPlantVoltorbTrapScript, EVENT_POWER_PLANT_VOLTORB_6
	object_event 27, 19, SPRITE_VOLTORB_TRAP, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PowerPlantElectrodeTrapScript, EVENT_POWER_PLANT_ELECTRODE_1
	object_event 21, 14, SPRITE_VOLTORB_TRAP, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PowerPlantElectrodeTrapScript, EVENT_POWER_PLANT_ELECTRODE_2
	object_event  8, 25, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_ITEMBALL, 0, PowerPlantCarbos, EVENT_POWER_PLANT_CARBOS
	object_event 20, 32, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, PowerPlantTMReflect, EVENT_POWER_PLANT_TM_REFLECT
	object_event 26, 32, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, PowerPlantTMThunder, EVENT_POWER_PLANT_TM_THUNDER
	object_event 38,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_ITEMBALL, 0, PowerPlantRareCandy, EVENT_POWER_PLANT_RARE_CANDY
	object_event 28,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_ITEMBALL, 0, PowerPlantHPUp, EVENT_POWER_PLANT_HP_UP
