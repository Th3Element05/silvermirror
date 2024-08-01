	object_const_def
	const CERULEAN_CAVE_B1F_MEWTWO

CeruleanCaveB1F_MapScripts:
	def_scene_scripts
	scene_script CeruleanCaveB1FNoop1Scene

	def_callbacks

CeruleanCaveB1FNoop1Scene:
	checkevent EVENT_FOUGHT_MEWTWO
	iftrue .DoNothing
	readvar VAR_BADGES
	ifequal NUM_BADGES, .MewtwoAppear
.DoNothing
	end

.MewtwoAppear
	setevent EVENT_MEWTWO_APPEAR
	end

CeruleanCaveB1FMewtwo:
	opentext
	writetext MewtwoText
	cry MEWTWO
	pause 15
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_KANTO_LEGEND
	loadwildmon MEWTWO, 70
	startbattle
	disappear CERULEAN_CAVE_B1F_MEWTWO
	setevent EVENT_FOUGHT_MEWTWO
	reloadmapafterbattle
	special CheckBattleCaughtResult
	iffalse .nocatch
	setflag ENGINE_PLAYER_CAUGHT_MEWTWO
.nocatch
	end

MewtwoText:
	text "…!"
	done

CeruleanCaveB1FUltraBall:
	itemball ULTRA_BALL

CeruleanCaveB1FMaxRevive:
	itemball MAX_REVIVE

CeruleanCaveB1FHiddenUltraBall:
	hiddenitem ULTRA_BALL, EVENT_CERULEAN_CAVE_B1F_HIDDEN_ULTRA_BALL

CeruleanCaveB1FRock:
	jumpstd SmashRockScript

CeruleanCaveB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  7, CERULEAN_CAVE_1F, 8

	def_coord_events

	def_bg_events
	bg_event 29,  5, BGEVENT_ITEM, CeruleanCaveB1FHiddenUltraBall

	def_object_events
	object_event 29, 15, SPRITE_MEWTWO, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0,  CeruleanCaveB1FMewtwo, EVENT_MEWTWO_APPEAR
	object_event 18, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCaveB1FUltraBall, EVENT_CERULEAN_CAVE_B1F_ULTRA_BALL
	object_event 20,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCaveB1FMaxRevive, EVENT_CERULEAN_CAVE_B1F_MAX_REVIVE
	object_event 27,  5, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanCaveB1FRock, -1
	object_event  7, 19, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanCaveB1FRock, -1
	object_event 12,  6, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanCaveB1FRock, -1
