	object_const_def
	const SILVERCAVEROOM3_OAK
	const SILVERCAVEROOM3_DUMMY_CHRIS
	const SILVERCAVEROOM3_DUMMY_KRIS
	const SILVERCAVEROOM3_SILVER_MIRROR
	const SILVERCAVEROOM3_SILVER_CHRIS
	const SILVERCAVEROOM3_SILVER_KRIS

SilverCaveRoom3_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, SilverMirrorAppearCallback
	callback MAPCALLBACK_TILES, SilverCaveRoom3TilesCallback

SilverCaveRoom3TilesCallback:
	readvar VAR_TIMEOFDAY
	ifnotequal NITE, .nomoon
	changeblock 8, 0, $5b ; moon
.nomoon
	endcallback

SilverMirrorAppearCallback:
	disappear SILVERCAVEROOM3_DUMMY_CHRIS
	disappear SILVERCAVEROOM3_DUMMY_KRIS
	disappear SILVERCAVEROOM3_SILVER_MIRROR
	disappear SILVERCAVEROOM3_SILVER_CHRIS
	disappear SILVERCAVEROOM3_SILVER_KRIS
	checkevent EVENT_BEAT_MT_SILVER_OAK
	iffalse .done
	appear SILVERCAVEROOM3_SILVER_MIRROR
.done
	endcallback


; mt silver oak
MtSilverOak:
	special FadeOutMusic
	faceplayer
	opentext
	writetext MtSilverOak_IntroText
	waitbutton
	closetext
	readvar VAR_FACING
	ifequal UP, .PlayerFacingUp
	ifequal LEFT, .PlayerFacingLeft
	ifequal RIGHT, .PlayerInPosition
	applymovement PLAYER, PlayerFacingDownMovement
	sjump .PlayerInPosition

.PlayerFacingUp
	applymovement PLAYER, PlayerFacingUpMovement
	sjump .PlayerInPosition

.PlayerFacingLeft
	applymovement PLAYER, PlayerFacingLeftMovement
	; fallthrough

.PlayerInPosition
	turnobject PLAYER, UP
	turnobject SILVERCAVEROOM3_OAK, UP
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .Kris
	appear SILVERCAVEROOM3_DUMMY_CHRIS
	sjump .Proceed
.Kris
	appear SILVERCAVEROOM3_DUMMY_KRIS
.Proceed
	applymovement PLAYER, SilverCaveRoom3_CameraPanUpMovement
	pause 60
	opentext
	writetext MtSilverOak_BeforeBattleText1
	promptbutton
	closetext
	applymovement PLAYER, SilverCaveRoom3_CameraPanDownMovement
	disappear SILVERCAVEROOM3_DUMMY_CHRIS
	disappear SILVERCAVEROOM3_DUMMY_KRIS
	pause 30
	turnobject SILVERCAVEROOM3_OAK, LEFT
	turnobject PLAYER, RIGHT
	opentext
	writetext MtSilverOak_BeforeBattleText2
	promptbutton
;	setlasttalked SILVERCAVEROOM3_OAK
	winlosstext MtSilverWinLossText, MtSilverWinLossText
	checkevent EVENT_GOT_SQUIRTLE_FROM_OAK
	iftrue .OakCharizard
	checkevent EVENT_GOT_BULBASAUR_FROM_OAK
	iftrue .OakBlastoise
;OakVenusaur:
	loadtrainer POKEMON_PROF, OAK_T_VENUSAUR
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .FinishMtSilverOak
.OakCharizard:
	loadtrainer POKEMON_PROF, OAK_T_CHARIZARD
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .FinishMtSilverOak
.OakBlastoise:
	loadtrainer POKEMON_PROF, OAK_T_BLASTOISE
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
;	sjump .FinishMtSilverOak

.FinishMtSilverOak:
	setevent EVENT_BEAT_MT_SILVER_OAK
	special FadeOutMusic
	opentext
	writetext MtSilverOak_AfterBattleText
	promptbutton
	showemote EMOTE_SHOCK, PLAYER, 20
	writetext MtSilverOak_OakLeavesText
	waitbutton
	closetext
	applymovement SILVERCAVEROOM3_OAK, SilverCaveRoom3_OakLeavesMovement
	disappear SILVERCAVEROOM3_OAK
	applymovement PLAYER, SilverCaveRoom3_PlayerLeavesMovement
	applymovement SILVERCAVEROOM3_SILVER_MIRROR, SilverCaveRoom3_RocksmashMovement
	appear SILVERCAVEROOM3_SILVER_MIRROR
	showemote EMOTE_SHOCK, PLAYER, 30
	turnobject PLAYER, UP
	pause 20
	applymovement PLAYER, SilverCaveRoom3_ApproachMirrorMovement
	pause 20
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	pause 30
	special HealParty
;	refreshscreen
	credits
	end

MtSilverOak_IntroText:
	ntag "PROF.OAK:"
	text "<PLAYER>!"

	para "Please, enjoy the"
	line "view with me…"
	done

MtSilverOak_BeforeBattleText1:
	ntag "PROF.OAK:"
	text "…"

	para "Very few people"
	line "will ever get to"
	cont "stand here and"
	roll "see this view…"

	para "Climbing MT.SILVER"
	line "is no small feat…"

	para "But I can't say"
	line "I'm surprised to"
	cont "see you here."

	para "…"
	done

MtSilverOak_BeforeBattleText2:
	ntag "PROF.OAK:"
	text "You know I was a"
	line "#MON trainer,"
	cont "when I was young."

	para "Did you know I was"
	line "a #MON LEAGUE"
	cont "CHAMPION, too?"

	para "…"

	para "This place…"
	line "This isn't the time"
	cont "for long speeches,"
	roll "or giving advice."

	para "Only the strongest"
	line "#MON trainers"
	cont "ever get to come"
	roll "here!"

	para "So, <PLAYER>."

	para "I think it's time"
	line "that I finally get"
	cont "to see your power,"
	roll "first-hand!"
	done

;MtSilverOakWinLossText:
;	text " "
;	done

MtSilverOak_AfterBattleText:
	ntag "PROF.OAK:"
	text "<PLAYER>, you"
	line "and your #MON"
	cont "really are"
	roll "extraordinary."

	para "Thank you for"
	line "having that battle"
	cont "with me."

	para "I'm going to head"
	line "back home now."

	para "Come visit me at"
	line "my lab any time."

	para "I would like to"
	line "see how your #-"
	cont "DEX is coming"
	roll "along."
	done

MtSilverOak_OakLeavesText:
	ntag "PROF.OAK:"
	text "Ha ha ha!"

	para "Did you think I"
	line "had forgoten that"
	cont "I asked you to"
	roll "fill the #DEX?"

	para "I know it's a big"
	line "thing to ask, but"
	cont "if anyone can get"
	roll "it done, it's you,"
	cont "<PLAYER>!"

	para "Don't give up!"
	done

PlayerFacingLeftMovement:
	step DOWN
	step LEFT
PlayerFacingUpMovement:
	step LEFT
	step UP
	step_end

PlayerFacingDownMovement:
	step LEFT
	step DOWN
	step_end

SilverCaveRoom3_CameraPanUpMovement:
	hide_object
	slow_step UP
	slow_step UP
	step_end

SilverCaveRoom3_CameraPanDownMovement:
	hide_object
	slow_step DOWN
	slow_step DOWN
	turn_head UP
	show_object
	step_end

SilverCaveRoom3_OakLeavesMovement:
	step DOWN
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

SilverCaveRoom3_PlayerLeavesMovement:
	slow_step DOWN
	slow_step DOWN
	slow_step DOWN
	step_end

SilverCaveRoom3_RocksmashMovement:
	rock_smash 20
	show_object
	step_end

SilverCaveRoom3_ApproachMirrorMovement:
	slow_step UP
	slow_step UP
	step_end


; silver mirror
SilverMirror:
	opentext
	readvar VAR_FACING
	ifnotequal UP, .NotFacingMirror
	writetext SilverCaveRoom3_SilverMirrorText
	yesorno
	iffalse .DontTouch
	callasm SilverCaveRoom3_CopyPlayerParty
	writetext SilverCaveRoom3_TouchedMirrorText
	waitbutton
	closetext
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .SilverKris

;SilverChris
	applymovement SILVERCAVEROOM3_SILVER_MIRROR, SilverCaveRoom3_RocksmashMovement
	appear SILVERCAVEROOM3_SILVER_CHRIS
	refreshscreen
	pause 20
	winlosstext MtSilverWinLossText, MtSilverWinLossText
	loadtrainer RED, RED1 ;CAL, CAL1
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	pause 20
	applymovement SILVERCAVEROOM3_SILVER_CHRIS, SilverCaveRoom3_RocksmashMovement
	disappear SILVERCAVEROOM3_SILVER_CHRIS
	sjump .FinishSilverMirror

.SilverKris
	applymovement SILVERCAVEROOM3_SILVER_MIRROR, SilverCaveRoom3_RocksmashMovement
	appear SILVERCAVEROOM3_SILVER_KRIS
	refreshscreen
	pause 20
	winlosstext MtSilverWinLossText, MtSilverWinLossText
	loadtrainer GREEN, GREEN1 ;CAL, CAL1
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	pause 20
	applymovement SILVERCAVEROOM3_SILVER_KRIS, SilverCaveRoom3_RocksmashMovement
	disappear SILVERCAVEROOM3_SILVER_KRIS
;	sjump .FinishSilverMirror

.FinishSilverMirror
	pause 20
	special HealParty
	refreshscreen
	checkevent EVENT_BEAT_SILVER_MIRROR
	iffalse .SilverMirrorCredits
	special RestartMapMusic
	end

.SilverMirrorCredits
	setevent EVENT_BEAT_SILVER_MIRROR
	credits
	end

.DontTouch:
	writetext SilverCaveRoom3_DidntTouchText
	waitbutton
	closetext
	end

.NotFacingMirror:
	writetext SilverCaveRoom3_ItsASilverMirrorText
	waitbutton
	closetext
	end

SilverCaveRoom3_CopyPlayerParty:
	farcall CopyPlayerPartyToMysteryGiftTrainer
	ret

;	ld a, BANK(sMysteryGiftData)
;	call OpenSRAM
;	ld a, TRUE
;	ld [sMysteryGiftTrainerHouseFlag], a
;	ld hl, wPlayerName
;	ld de, sMysteryGiftPartnerName
;	ld bc, NAME_LENGTH
;	call CopyBytes
;	ld hl, wPartySpecies
;	ld de, sMysteryGiftTrainer
;	ld bc, wPartyMons
;.loop
;	ld a, [hli]
;	cp -1
;	jr z, .party_end
;	cp EGG
;	jr z, .next
;	push hl
;	; copy level
;	ld hl, MON_LEVEL
;	add hl, bc
;	ld a, [hl]
;	ld [de], a
;	inc de
;	; copy species
;	ld hl, MON_SPECIES
;	add hl, bc
;	ld a, [hl]
;	ld [de], a
;	inc de
;	; copy moves
;	ld hl, MON_MOVES
;	add hl, bc
;	push bc
;	ld bc, NUM_MOVES
;	call CopyBytes
;	pop bc
;	pop hl
;.next
;	push hl
;	ld hl, PARTYMON_STRUCT_LENGTH
;	add hl, bc
;	ld b, h
;	ld c, l
;	pop hl
;	jr .loop
;.party_end
;	ld a, -1
;	ld [de], a
;	jp CloseSRAM

SilverCaveRoom3_SilverMirrorText:
	text "The SILVER MIRROR"
	line "stands before you."

	para "Will you reach out"
	line "and touch it?"
	done

SilverCaveRoom3_TouchedMirrorText:
	text "<PLAYER> reached"
	line "out and touched"
	cont "the SILVER MIRROR…@"

	text_promptbutton
	ntag "<PLAYER>:"
	text "…!"
	done

SilverCaveRoom3_DidntTouchText:
	text "You decided not to"
	line "touch the MIRROR."
	done

SilverCaveRoom3_ItsASilverMirrorText:
	text "It's a"
	line "SILVER MIRROR."
	done

MtSilverWinLossText:
	text "…"
	done


;Red:
;	special FadeOutMusic
;	faceplayer
;	opentext
;	writetext RedSeenText
;	waitbutton
;	closetext
;	winlosstext RedWinLossText, RedWinLossText
;	loadtrainer RED, RED1
;	startbattle
;	dontrestartmapmusic
;	reloadmapafterbattle
;	special FadeOutMusic
;	opentext
;	writetext RedLeavesText
;	waitbutton
;	closetext
;	special FadeBlackQuickly
;	special ReloadSpritesNoPalettes
;	disappear SILVERCAVEROOM3_RED
;	pause 15
;	special FadeInQuickly
;	pause 30
;	special HealParty
;	refreshscreen
;	credits
;	end
;
;RedSeenText:
;RedLeavesText:
;	text "<……>"
;	line "<……>"
;	done
;
;RedWinLossText:
;	text "…"
;	done


SilverCaveRoom3_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 29, SILVER_CAVE_ROOM_2, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event 10,  6, SPRITE_OAK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MtSilverOak, EVENT_OAK_IN_MT_SILVER
	object_event  9,  6, SPRITE_CHRIS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_MT_SILVER_DUMMY_PLAYER
	object_event  9,  6, SPRITE_KRIS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_MT_SILVER_DUMMY_PLAYER
	object_event  9,  6, SPRITE_MIRROR, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_SCRIPT, 0, SilverMirror, EVENT_SILVER_MIRROR
	object_event  9,  6, SPRITE_CHRIS, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_MT_SILVER_DUMMY_PLAYER
	object_event  9,  6, SPRITE_KRIS, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_MT_SILVER_DUMMY_PLAYER
