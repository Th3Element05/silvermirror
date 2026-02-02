	object_const_def
	const WHIRLISLANDLUGIACHAMBER_LUGIA

WhirlIslandLugiaChamber_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, WhirlIslandLugiaChamberLugiaCallback

WhirlIslandLugiaChamberLugiaCallback:
	disappear WHIRLISLANDLUGIACHAMBER_LUGIA
	checkevent EVENT_FOUGHT_LUGIA
	iftrue .NoAppear
	checkitem SILVER_WING
	iffalse .NoAppear
	appear WHIRLISLANDLUGIACHAMBER_LUGIA
.NoAppear:
	endcallback

Lugia:
	faceplayer
	opentext
	writetext LugiaText
	cry LUGIA
	pause 15
	closetext
;	setevent EVENT_FOUGHT_LUGIA
	loadvar VAR_BATTLETYPE, BATTLETYPE_LUGIA
	loadwildmon LUGIA, 60
	startbattle
	disappear WHIRLISLANDLUGIACHAMBER_LUGIA
	setevent EVENT_FOUGHT_LUGIA
	reloadmapafterbattle
	special CheckBattleCaughtResult
	iffalse .nocatch
	setflag ENGINE_PLAYER_CAUGHT_LUGIA
.nocatch
	end

LugiaText:
	text "Gyaaas!"
	done

WhirlIslandLugiaChamber_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 13, WHIRL_ISLAND_B1F_B2F, 12 ;1 to B2F,3

	def_coord_events

	def_bg_events

	def_object_events
	object_event 10,  7, SPRITE_LUGIA, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Lugia, EVENT_WHIRL_ISLAND_LUGIA_CHAMBER_LUGIA
