	object_const_def
	const CERULEANCAVEB1F_MEWTWO
	const CERULEANCAVEB1F_BERSERK_GENE

CeruleanCaveB1F_MapScripts:
	def_scene_scripts
;	scene_script CeruleanCaveB1FNoop1Scene

	def_callbacks

;CeruleanCaveB1FNoop1Scene:
;	checkevent EVENT_FOUGHT_MEWTWO
;	iftrue .DoNothing
;	readvar VAR_BADGES
;	ifequal NUM_BADGES, .MewtwoAppear
;.DoNothing
;	end
;
;.MewtwoAppear
;	setevent EVENT_MEWTWO_APPEAR
;	end

CeruleanCaveB1FMewtwo:
	opentext
	writetext MewtwoText
	cry MEWTWO
	pause 20
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_KANTO_LEGEND
	loadwildmon MEWTWO, 70
	startbattle
	disappear CERULEANCAVEB1F_MEWTWO
	setevent EVENT_FOUGHT_MEWTWO
	reloadmapafterbattle
	special CheckBattleCaughtResult
	iffalse .NoCatch
	setflag ENGINE_PLAYER_CAUGHT_MEWTWO
.NoCatch
	checkevent EVENT_GOT_BERSERK_GENE
	iftrue .GotBerserkGene
	appear CERULEANCAVEB1F_BERSERK_GENE
	setevent EVENT_GOT_BERSERK_GENE
.GotBerserkGene
	end

MewtwoText:
	ntag "MEWTWO:"
	text "…!"
	done

CeruleanCaveB1FHiddenUltraBall:
	hiddenitem ULTRA_BALL, EVENT_CERULEAN_CAVE_B1F_HIDDEN_ULTRA_BALL

CeruleanCaveB1FUltraBall:
	itemball ULTRA_BALL

CeruleanCaveB1FMaxRevive:
	itemball MAX_REVIVE

CeruleanCaveB1FBerserkGene:
	itemball BERSERK_GENE

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
	object_event 28, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCaveB1FBerserkGene, EVENT_CERULEAN_CAVE_B1F_BERSERK_GENE
	object_event 18, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCaveB1FUltraBall, EVENT_CERULEAN_CAVE_B1F_ULTRA_BALL
	object_event 20,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CeruleanCaveB1FMaxRevive, EVENT_CERULEAN_CAVE_B1F_MAX_REVIVE
	object_event 25,  7, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanCaveB1FRock, -1
	object_event  7, 19, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanCaveB1FRock, -1
	object_event 12,  6, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanCaveB1FRock, -1
