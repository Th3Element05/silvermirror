	object_const_def
	const TINTOWERROOF_HO_OH

TinTowerRoof_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, TinTowerRoofHoOhCallback

TinTowerRoofHoOhCallback:
	disappear TINTOWERROOF_HO_OH
	checkevent EVENT_FOUGHT_HO_OH
	iftrue .NoAppear
	checkitem RAINBOW_WING
	iffalse .NoAppear
	appear TINTOWERROOF_HO_OH
.NoAppear:
	endcallback

TinTowerHoOh:
	faceplayer
	opentext
	writetext HoOhText
	cry HO_OH
	pause 15
	closetext
;	setevent EVENT_FOUGHT_HO_OH
	loadvar VAR_BATTLETYPE, BATTLETYPE_HO_OH
	loadwildmon HO_OH, 60
	startbattle
	disappear TINTOWERROOF_HO_OH
	setevent EVENT_FOUGHT_HO_OH
	reloadmapafterbattle
	special CheckBattleCaughtResult
	iffalse .nocatch
	setflag ENGINE_PLAYER_CAUGHT_HO_OH
.nocatch
	setevent EVENT_SET_WHEN_FOUGHT_HO_OH
	end

HoOhText:
	ntag "HO-OH:"
	text "Shaoooh!"
	done

TinTowerRoof_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6, 11, TIN_TOWER_FLOORS, 29 ;1 ;TIN_TOWER_9F, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  7,  5, SPRITE_HO_OH, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, TinTowerHoOh, EVENT_TIN_TOWER_ROOF_HO_OH
