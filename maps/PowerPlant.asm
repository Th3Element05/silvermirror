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
	loadvar VAR_BATTLETYPE, BATTLETYPE_KANTO_LEGEND
	loadwildmon ZAPDOS, 50
	startbattle
	disappear POWERPLANT_ZAPDOS
	reloadmapafterbattle
	special CheckBattleCaughtResult
	iffalse .NoCatch
	setflag ENGINE_PLAYER_CAUGHT_ZAPDOS
.NoCatch
	checkevent EVENT_GOT_TM24_THUNDERBOLT
	iftrue .GotThunderbolt
	appear POWERPLANT_THUNDERBOLT
	setevent EVENT_GOT_TM24_THUNDERBOLT
	reloadmappart
.GotThunderbolt
	checkevent EVENT_FOUGHT_ZAPDOS
	iftrue .End
	pause 15
	changeblock 4, 12, $3c ; door open
	reloadmappart
	playsound SFX_ENTER_DOOR
.End
	setevent EVENT_FOUGHT_ZAPDOS
	end

ZapdosText:
	ntag "ZAPDOS:"
	text "Gyaoo!"
	done

PowerPlantVoltorbTrapScript:
	variablesprite SPRITE_VOLTORB_TRAP, SPRITE_VOLTORB
	special LoadUsedSpritesGFX
	showemote EMOTE_BOLT, LAST_TALKED, 20
	opentext
	writetext PowerPlantBzzztText
	cry VOLTORB
	waitsfx
	waitbutton
	closetext
; Voltorb has no wild hold item, 
; This just prevents the level from being randomized.
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon VOLTORB, 29
	startbattle
	disappear LAST_TALKED
	variablesprite SPRITE_VOLTORB_TRAP, SPRITE_POKE_BALL
	reloadmapafterbattle
	end

PowerPlantElectrodeTrapScript:
	variablesprite SPRITE_VOLTORB_TRAP, SPRITE_ELECTRODE
	special LoadUsedSpritesGFX
	showemote EMOTE_BOLT, LAST_TALKED, 20
	opentext
	writetext PowerPlantBzzztText
	cry ELECTRODE
	waitsfx
	waitbutton
	closetext
; Electrode has no wild hold item, 
; This just prevents the level from being randomized.
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon ELECTRODE, 30
	startbattle
	disappear LAST_TALKED
	variablesprite SPRITE_VOLTORB_TRAP, SPRITE_POKE_BALL
	reloadmapafterbattle
	end

PowerPlantShinyVoltorbTrapScript:
	variablesprite SPRITE_VOLTORB_TRAP, SPRITE_VOLTORB
	special LoadUsedSpritesGFX
	showemote EMOTE_BOLT, LAST_TALKED, 20
	opentext
	writetext PowerPlantBzzztText
	cry VOLTORB
	waitsfx
	waitbutton
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCESHINY
	loadwildmon VOLTORB, 29
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

PowerPlantPC_Off:
	jumptext PowerPlantPCText_Off
PowerPlantPCText_Off:
	text "This PC isn't on."
	done

PowerPlantPC_Numbers:
	jumptext PowerPlantPCText_Numbers
PowerPlantPCText_Numbers:
	text "Lines and lines"
	line "of numbers!"
	done

PowerPlantPC_Solitaire:
	jumptext PowerPlantPCText_Solitaire
PowerPlantPCText_Solitaire:
	text "Someone was play-"
	line "ing Solitaire!"
	done

PowerPlantPC_Minesweeper:
	jumptext PowerPlantPCText_Minesweeper
PowerPlantPCText_Minesweeper:
	text "There's a game of"
	line "Minesweeper that"
	cont "someone lost."
	done


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
;	warp_event  4, 35, ROUTE_10_SOUTH, 1
;	warp_event  5, 35, ROUTE_10_SOUTH, 1
	warp_event  4, 35, ROUTE_10, 3
	warp_event  5, 35, ROUTE_10, 3

	def_coord_events

	def_bg_events
	bg_event 20, 17, BGEVENT_ITEM, PowerPlantHiddenMaxElixer
	bg_event 14,  1, BGEVENT_ITEM, PowerPlantHiddenPPUp
	bg_event 16,  1, BGEVENT_READ, PowerPlantBookshelf
	bg_event 17,  1, BGEVENT_READ, PowerPlantBookshelf
	bg_event 18,  1, BGEVENT_READ, PowerPlantBookshelf
	bg_event 19,  1, BGEVENT_READ, PowerPlantBookshelf
	bg_event 20,  1, BGEVENT_READ, PowerPlantBookshelf
	bg_event 21,  1, BGEVENT_READ, PowerPlantBookshelf
	bg_event 16, 31, BGEVENT_READ, PowerPlantBookshelf
	bg_event 17, 31, BGEVENT_READ, PowerPlantBookshelf
	bg_event 18, 31, BGEVENT_READ, PowerPlantBookshelf
	bg_event 19, 31, BGEVENT_READ, PowerPlantBookshelf
	bg_event 32, 31, BGEVENT_READ, PowerPlantBookshelf
	bg_event 33, 31, BGEVENT_READ, PowerPlantBookshelf
	bg_event 10, 18, BGEVENT_UP, PowerPlantPC_Solitaire
	bg_event 11, 18, BGEVENT_UP, PowerPlantPC_Solitaire
	bg_event 10, 20, BGEVENT_UP, PowerPlantPC_Off
	bg_event 11, 20, BGEVENT_UP, PowerPlantPC_Off
	bg_event 10, 22, BGEVENT_UP, PowerPlantPC_Minesweeper
	bg_event 11, 22, BGEVENT_UP, PowerPlantPC_Minesweeper
	bg_event 16, 20, BGEVENT_UP, PowerPlantPC_Numbers
	bg_event 17, 20, BGEVENT_UP, PowerPlantPC_Numbers
	bg_event 20, 26, BGEVENT_UP, PowerPlantPC_Minesweeper
	bg_event 21, 26, BGEVENT_UP, PowerPlantPC_Minesweeper
	bg_event 26, 28, BGEVENT_UP, PowerPlantPC_Numbers
	bg_event 27, 28, BGEVENT_UP, PowerPlantPC_Numbers
	bg_event 32, 26, BGEVENT_UP, PowerPlantPC_Solitaire
	bg_event 33, 26, BGEVENT_UP, PowerPlantPC_Solitaire
	bg_event 36,  8, BGEVENT_UP, PowerPlantPC_Numbers
	bg_event 37,  8, BGEVENT_UP, PowerPlantPC_Numbers
	bg_event 16,  6, BGEVENT_UP, PowerPlantPC_Off
	bg_event 17,  6, BGEVENT_UP, PowerPlantPC_Off
	bg_event 16,  8, BGEVENT_UP, PowerPlantPC_Solitaire
	bg_event 17,  8, BGEVENT_UP, PowerPlantPC_Solitaire
	bg_event 20,  6, BGEVENT_UP, PowerPlantPC_Off
	bg_event 21,  6, BGEVENT_UP, PowerPlantPC_Off
	bg_event 20,  8, BGEVENT_UP, PowerPlantPC_Off
	bg_event 21,  8, BGEVENT_UP, PowerPlantPC_Off

	def_object_events
	object_event  4,  9, SPRITE_ZAPDOS, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_SCRIPT, 0, PowerPlantZapdos, EVENT_ZAPDOS_APPEAR
	object_event  3, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, PowerPlantTMThunderbolt, EVENT_POWER_PLANT_TM_THUNDERBOLT
	object_event 11, 23, SPRITE_VOLTORB_TRAP, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PowerPlantVoltorbTrapScript, EVENT_POWER_PLANT_VOLTORB_1
	object_event 33, 20, SPRITE_VOLTORB_TRAP, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PowerPlantVoltorbTrapScript, EVENT_POWER_PLANT_VOLTORB_2
	object_event 23, 34, SPRITE_VOLTORB_TRAP, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PowerPlantVoltorbTrapScript, EVENT_POWER_PLANT_VOLTORB_3
	object_event 18, 26, SPRITE_VOLTORB_TRAP, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PowerPlantVoltorbTrapScript, EVENT_POWER_PLANT_VOLTORB_4
	object_event 25, 28, SPRITE_VOLTORB_TRAP, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PowerPlantVoltorbTrapScript, EVENT_POWER_PLANT_VOLTORB_5
	object_event 37, 32, SPRITE_VOLTORB_TRAP, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PowerPlantShinyVoltorbTrapScript, EVENT_POWER_PLANT_VOLTORB_6
	object_event 27, 19, SPRITE_VOLTORB_TRAP, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PowerPlantElectrodeTrapScript, EVENT_POWER_PLANT_ELECTRODE_1
	object_event 21, 14, SPRITE_VOLTORB_TRAP, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PowerPlantElectrodeTrapScript, EVENT_POWER_PLANT_ELECTRODE_2
	object_event  8, 25, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_ITEMBALL, 0, PowerPlantCarbos, EVENT_POWER_PLANT_CARBOS
	object_event 20, 32, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, PowerPlantTMReflect, EVENT_POWER_PLANT_TM_REFLECT
	object_event 26, 32, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, PowerPlantTMThunder, EVENT_POWER_PLANT_TM_THUNDER
	object_event 38,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_ITEMBALL, 0, PowerPlantRareCandy, EVENT_POWER_PLANT_RARE_CANDY
	object_event 28,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_ITEMBALL, 0, PowerPlantHPUp, EVENT_POWER_PLANT_HP_UP
