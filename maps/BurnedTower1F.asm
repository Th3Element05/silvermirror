	object_const_def
	const BURNEDTOWER1F_GIRL
;	const BURNEDTOWER1F_MORTY

BurnedTower1F_MapScripts:
	def_scene_scripts
	scene_script BurnedTower1FNoop1Scene,      SCENE_BURNEDTOWER1F_LOST_GIRL
	scene_script BurnedTower1FNoop2Scene,      SCENE_BURNEDTOWER1F_NOOP

	def_callbacks
	callback MAPCALLBACK_TILES, BurnedTower1FHoleAndLadderCallback

BurnedTower1FNoop1Scene:
BurnedTower1FNoop2Scene:
	end

BurnedTower1FHoleAndLadderCallback:
	checkevent EVENT_HOLE_IN_BURNED_TOWER
	iftrue .KeepHoleOpen
	changeblock 10, 8, $32 ; floor
.KeepHoleOpen:
	checkevent EVENT_RELEASED_THE_BEASTS
	iftrue .HideBasement
	changeblock 6, 14, $09 ; ladder
.HideBasement:
	endcallback

BurnedTowerLostGirlScript:
	showemote EMOTE_SHOCK, BURNEDTOWER1F_GIRL, 15
;	special FadeOutMusic
;	pause 15
	turnobject BURNEDTOWER1F_GIRL, RIGHT
	pause 15
	applymovement PLAYER, BurnedTowerMovement_PlayerWalksToGirl
	applymovement BURNEDTOWER1F_GIRL, BurnedTowerMovement_GirlWalksToPlayer
	opentext
	writetext BurnedTowerGirl_BeforeText
	waitbutton
	closetext
	setscene SCENE_BURNEDTOWER1F_NOOP
	setevent EVENT_FOUND_GIRL_IN_BURNED_TOWER
	special FadeOutMusic
	pause 15
	earthquake 50
	showemote EMOTE_SHOCK, PLAYER, 15
	playsound SFX_ENTER_DOOR
	waitsfx
	changeblock 10, 8, $25 ; hole
	reloadmappart
	pause 15
	applymovement PLAYER, BurnedTower1FMovement_PlayerStartsToFall
	playsound SFX_KINESIS
	showemote EMOTE_SHOCK, BURNEDTOWER1F_GIRL, 20
	opentext
	writetext BurnedTowerGirl_AfterText
	waitbutton
	closetext
	setevent EVENT_HOLE_IN_BURNED_TOWER
	pause 15
	warpcheck
	end

BurnedTowerGirl_BeforeText:
	text "I came looking for"
	line "some legendary"
	cont "#MON that they"
	cont "say lived here."

	para "But there's"
	line "nothing here!"

	para "<……> <……> <……>"

	para "…Oh, it's not"
	line "safe here?"

	para "I better get back"
	line "to my grandpa!"
	done

BurnedTowerGirl_AfterText:
	text "Oh no!"
	line "Hang on!"
	
	para "I'll go get"
	line "grandpa!"
	done

BurnedTowerMovement_PlayerWalksToGirl:
	step LEFT
	step_end

BurnedTowerMovement_GirlWalksToPlayer:
	step RIGHT
	step_end

BurnedTower1FMovement_PlayerStartsToFall:
	skyfall_top
	step_end

;BurnedTower1FMortyScript:
;	jumptextfaceplayer BurnedTower1FMortyText
;BurnedTower1FMortyText:
;	text "MORTY: ECRUTEAK's"
;	line "GYM LEADER has to"
;
;	para "study what are"
;	line "said to be the"
;
;	para "legendary #MON"
;	line "--SUICUNE, ENTEI"
;	cont "and RAIKOU."
;
;	para "EUSINE is here, so"
;	line "I've decided to"
;
;	para "investigate the"
;	line "TOWER with him."
;	done

BurnedTower1FHiddenEther:
	hiddenitem ETHER, EVENT_BURNED_TOWER_1F_HIDDEN_ETHER

BurnedTower1FHiddenUltraBall:
	hiddenitem ULTRA_BALL, EVENT_BURNED_TOWER_1F_HIDDEN_ULTRA_BALL

BurnedTower1FHPUp:
	itemball HP_UP

BurnedTower1FRock:
	jumpstd SmashRockScript

BurnedTower1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 15, ECRUTEAK_CITY, 13
	warp_event 10, 15, ECRUTEAK_CITY, 13
	warp_event 10,  9, BURNED_TOWER_B1F, 1
	warp_event  7, 15, BURNED_TOWER_B1F, 2

	def_coord_events
	coord_event 11,  9, SCENE_BURNEDTOWER1F_LOST_GIRL, BurnedTowerLostGirlScript

	def_bg_events
	bg_event  8,  7, BGEVENT_ITEM, BurnedTower1FHiddenEther
	bg_event 13, 11, BGEVENT_ITEM, BurnedTower1FHiddenUltraBall

	def_object_events
	object_event  8,  9, SPRITE_TWIN, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_BURNED_TOWER_LOST_GIRL
;	object_event 14, 14, SPRITE_MORTY, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, BurnedTower1FMortyScript, EVENT_BURNED_TOWER_MORTY
	object_event 14,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, BurnedTower1FHPUp, EVENT_BURNED_TOWER_1F_HP_UP
	object_event 15,  4, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BurnedTower1FRock, -1
	object_event  4,  8, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BurnedTower1FRock, -1
	object_event 12, 15, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BurnedTower1FRock, -1
	object_event  5, 15, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BurnedTower1FRock, -1
	object_event 10,  1, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BurnedTower1FRock, -1
