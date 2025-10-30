	object_const_def
	const BURNEDTOWERB1F_RAIKOU1
	const BURNEDTOWERB1F_ENTEI1
	const BURNEDTOWERB1F_SUICUNE1
	const BURNEDTOWERB1F_RAIKOU2
	const BURNEDTOWERB1F_ENTEI2
	const BURNEDTOWERB1F_SUICUNE2
	const BURNEDTOWERB1F_GRAMPS

BurnedTowerB1F_MapScripts:
	def_scene_scripts
	scene_script BurnedTowerB1FNoop1Scene, SCENE_BURNEDTOWERB1F_RELEASE_THE_BEASTS
	scene_script BurnedTowerB1FNoop2Scene, SCENE_BURNEDTOWERB1F_NOOP

	def_callbacks
	callback MAPCALLBACK_TILES, BurnedTowerB1FLadderCallback

BurnedTowerB1FNoop1Scene:
BurnedTowerB1FNoop2Scene:
	end

BurnedTowerB1FLadderCallback:
	checkevent EVENT_RELEASED_THE_BEASTS
	iftrue .HideLadder
	changeblock 6, 14, $02 ; floor
.HideLadder:
	endcallback

ReleaseTheBeasts:
	playmusic MUSIC_NONE
	pause 30
	appear BURNEDTOWERB1F_RAIKOU1
	turnobject PLAYER, UP
	pause 5
	disappear BURNEDTOWERB1F_RAIKOU2
	pause 15
	cry RAIKOU
	appear BURNEDTOWERB1F_ENTEI1
	turnobject PLAYER, UP
	pause 5
	disappear BURNEDTOWERB1F_ENTEI2
	pause 15
	cry ENTEI
	appear BURNEDTOWERB1F_SUICUNE1
	turnobject PLAYER, UP
	pause 5
	disappear BURNEDTOWERB1F_SUICUNE2
	pause 15
	cry SUICUNE
	pause 15
	playsound SFX_WARP_FROM
	turnobject PLAYER, LEFT
	applymovement BURNEDTOWERB1F_RAIKOU1, BurnedTowerRaikouMovement
	disappear BURNEDTOWERB1F_RAIKOU1
	waitsfx
	playsound SFX_WARP_FROM
	turnobject PLAYER, RIGHT
	applymovement BURNEDTOWERB1F_ENTEI1, BurnedTowerEnteiMovement
	disappear BURNEDTOWERB1F_ENTEI1
	waitsfx
	pause 15
	playsound SFX_WARP_FROM
	turnobject PLAYER, UP
	applymovement BURNEDTOWERB1F_SUICUNE1, BurnedTowerSuicuneMovement1
	playsound SFX_WARP_FROM
	turnobject PLAYER, DOWN
	applymovement BURNEDTOWERB1F_SUICUNE1, BurnedTowerSuicuneMovement2
	turnobject PLAYER, UP
	pause 20
	cry SUICUNE
	pause 30
	playsound SFX_WARP_FROM
	applymovement BURNEDTOWERB1F_SUICUNE1, BurnedTowerSuicuneMovement3
	turnobject PLAYER, DOWN
	disappear BURNEDTOWERB1F_SUICUNE1
	waitsfx
	special RestartMapMusic
	setscene SCENE_BURNEDTOWERB1F_NOOP
	setevent EVENT_RELEASED_THE_BEASTS
	special InitRoamMons
	setevent EVENT_BURNED_TOWER_LOST_GIRL
	clearevent EVENT_ECRUTEAK_CITY_GIRL
	appear BURNEDTOWERB1F_GRAMPS
	refreshscreen
	changeblock 6, 14, $1b ; ladder
	reloadmappart
	closetext
	setscene SCENE_BURNEDTOWERB1F_NOOP
	end

BurnedTowerB1FGramps:
	faceplayer
	opentext
	writetext BurnedTowerB1FGrampsText
	waitbutton
	closetext
;	readvar VAR_FACING
;	ifequal UP, .Movement2
	applymovement BURNEDTOWERB1F_GRAMPS, BurnedTowerB1FGrampsMovement1
;	sjump .Finish
;
;.Movement2:
;	applymovement BURNEDTOWERB1F_GRAMPS, BurnedTowerB1FGrampsMovement2
;.Finish:
	disappear BURNEDTOWERB1F_GRAMPS
	playsound SFX_EXIT_BUILDING
	waitsfx
	end

BurnedTowerB1FGrampsText:
	text "What were those"
	line "#MON that ran"
	cont "by just now?"

	para "I've never seen"
	line "#MON like those"
	cont "before!"

	para "Anyway, I'm glad"
	line "you aren't hurt!"

	para "I found a ladder"
	line "we can use to get"
	cont "out of here."

	para "It's this way."
	done

BurnedTowerRaikouMovement:
	set_sliding
	fast_jump_step DOWN
	fast_jump_step LEFT
	remove_sliding
	step_end

BurnedTowerEnteiMovement:
	set_sliding
	fast_jump_step RIGHT
	fast_jump_step DOWN
	fast_jump_step RIGHT
	remove_sliding
	step_end

BurnedTowerSuicuneMovement1:
	set_sliding
	fast_jump_step RIGHT
	fast_jump_step DOWN
	fast_jump_step DOWN
	fast_jump_step LEFT
	remove_sliding
	step_end

BurnedTowerSuicuneMovement2:
	set_sliding
	fast_jump_step LEFT
	fast_jump_step UP
	big_step UP
	fast_jump_step RIGHT
	remove_sliding
	step_end

BurnedTowerSuicuneMovement3:
	set_sliding
	big_step UP
	fast_jump_step RIGHT
	fast_jump_step DOWN
	fast_jump_step DOWN
	fast_jump_step DOWN
	fast_jump_step DOWN
	remove_sliding
	step_end

;BurnedTowerUnusedMovement: ; unreferenced
;	set_sliding
;	big_step DOWN
;	remove_sliding
;	step_end

BurnedTowerB1FGrampsMovement1:
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step DOWN
	step DOWN
	step_end

;BurnedTowerB1FGrampsMovement2:
;	step LEFT
;	step LEFT
;	step DOWN
;	step DOWN
;	step LEFT
;	step DOWN
;	step_end

;BurnedTowerB1FTMEndure:
;	itemball TM_ENDURE

BurnedTowerB1FBoulder:
	jumpstd StrengthBoulderScript

BurnedTowerB1FRock:
	jumpstd SmashRockScript

BurnedTowerB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 10,  9, BURNED_TOWER_1F, 3
	warp_event  7, 15, BURNED_TOWER_1F, 4

	def_coord_events
	coord_event 10,  6, SCENE_BURNEDTOWERB1F_RELEASE_THE_BEASTS, ReleaseTheBeasts

	def_bg_events

	def_object_events
	object_event  7,  3, SPRITE_RAIKOU, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_BURNED_TOWER_B1F_BEASTS_1
	object_event 12,  3, SPRITE_ENTEI, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_BURNED_TOWER_B1F_BEASTS_1
	object_event 10,  4, SPRITE_SUICUNE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_BURNED_TOWER_B1F_BEASTS_1
	object_event  7,  3, SPRITE_RAIKOU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_EMOTE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_BURNED_TOWER_B1F_BEASTS_2
	object_event 12,  3, SPRITE_ENTEI, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_EMOTE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_BURNED_TOWER_B1F_BEASTS_2
	object_event 10,  4, SPRITE_SUICUNE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_EMOTE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_BURNED_TOWER_B1F_BEASTS_2
	object_event 10, 12, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_UP, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, BurnedTowerB1FGramps, EVENT_GRAMPS_IN_BURNED_TOWER
;	object_event 16,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, BurnedTowerB1FTMEndure, EVENT_BURNED_TOWER_B1F_TM_ENDURE
	object_event 17,  8, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BurnedTowerB1FBoulder, -1
	object_event  6, 13, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BurnedTowerB1FRock, -1
	object_event 14, 12, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BurnedTowerB1FRock, -1
	object_event  8, 10, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BurnedTowerB1FRock, -1
	object_event 16,  5, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BurnedTowerB1FRock, -1
	object_event  5,  6, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BurnedTowerB1FRock, -1
