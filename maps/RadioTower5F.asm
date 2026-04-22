	object_const_def
;	const RADIOTOWER5F_DIRECTOR

RadioTower5F_MapScripts:
	def_scene_scripts

	def_callbacks

Director:
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue .DirectorAfter
	checkevent EVENT_GOT_RADIO_TOWER_CARD_KEY
	iftrue .GotCardKey
	checkflag ENGINE_ROCKETS_IN_RADIO_TOWER
	iftrue .Emergency
	jumptextfaceplayer RadioTower5FDirectorText

.Emergency:
	faceplayer
	opentext
	writetext RadioTower5FDirectorEmergencyText
	promptbutton
	verbosegiveitem CARD_KEY_R
	setevent EVENT_GOT_RADIO_TOWER_CARD_KEY
	closetext
	end

.GotCardKey:
	jumptextfaceplayer RadioTower5FDirectorCountingOnYouText

.DirectorAfter:
	jumptextfaceplayer RadioTower5FDirectorThankYouText

RadioTower5FDirectorText:
	ntag "DIRECTOR:"
	text "Hello!"

	para "You know, I love"
	line "#MON."

	para "I built this RADIO"
	line "TOWER so I could"
	cont "express my love"
	roll "of #MON."

	para "Its nice when"
	line "people enjoy our"
	cont "programs."
	done

RadioTower5FDirectorEmergencyText:
	ntag "DIRECTOR:"
	text "Sorry, I'm very"
	line "busy right now."

	para "We are dealing"
	line "with an emergency!"

	para "<……>"

	para "You're the #MON"
	line "LEAGUE CHAMPION?"

	para "I'm sure you can"
	line "help us!"

	para "Take my CARD KEY."
	line "It will open the"
	cont "gate downstairs."
	done

RadioTower5FDirectorCountingOnYouText:
	ntag "DIRECTOR:"
	text "I'm counting on"
	line "you!"
	done

RadioTower5FDirectorThankYouText:
	ntag "DIRECTOR:"
	text "Your courageous"
	line "actions saved"
	cont "many people."

	para "We are all in your"
	line "debt."
	done

;RadioTower5FDirectorThankYouText:
;	text "DIRECTOR: <PLAY_G>,"
;	line "thank you!"
;
;	para "Your courageous"
;	line "actions have saved"
;
;	para "#MON nation-"
;	line "wide."
;
;	para "I know it's not"
;	line "much, but please"
;	cont "take this."
;	done
;
;RadioTower5FDirectorDescribeClearBellText:
;	text "There used to be a"
;	line "tower right here"
;	cont "in GOLDENROD CITY."
;
;	para "But it was old and"
;	line "creaky."
;
;	para "So we replaced it"
;	line "with our RADIO"
;	cont "TOWER."
;
;	para "We dug up that"
;	line "bell during"
;	cont "construction."
;
;	para "I heard that all"
;	line "sorts of #MON"
;
;	para "lived in GOLDENROD"
;	line "in the past."
;
;	para "Perhaps…"
;
;	para "That bell has some"
;	line "connection to the"
;
;	para "TIN TOWER in"
;	line "ECRUTEAK CITY…"
;
;	para "Ah!"
;
;	para "That reminds me…"
;
;	para "I overheard TEAM"
;	line "ROCKET whispering."
;
;	para "Apparently, some-"
;	line "thing is going on"
;	cont "at the TIN TOWER."
;
;	para "I have no idea"
;	line "what is happening,"
;
;	para "but you might look"
;	line "into it."
;
;	para "OK, I better go to"
;	line "my OFFICE."
;	done

DJBen:
	jumptextfaceplayer BenText
BenText:
	ntag "DJ BEN:"
	ntag "BEN:"
	text "Do you listen to"
	line "our music?"
	done

RadioTower5FDirectorsOfficeSign:
	jumptext RadioTower5FDirectorsOfficeSignText
RadioTower5FDirectorsOfficeSignText:
	text "5F DIRECTOR's"
	line "   OFFICE"
	done

RadioTower5FStudio1Sign:
	jumptext RadioTower5FStudio1SignText
RadioTower5FStudio1SignText:
	text "5F STUDIO 1"
	done

RadioTower5FBookshelf:
	jumpstd MagazineBookshelfScript

RadioTower5FUltraBall:
	itemball ULTRA_BALL

;RadioTower5FRocketBossScript:
;	applymovement PLAYER, RadioTower5FPlayerTwoStepsLeftMovement
;	playmusic MUSIC_ROCKET_ENCOUNTER
;	turnobject RADIOTOWER5F_ROCKET, RIGHT
;	opentext
;	writetext RadioTower5FRocketBossBeforeText
;	waitbutton
;	closetext
;	winlosstext RadioTower5FRocketBossWinText, 0
;	setlasttalked RADIOTOWER5F_ROCKET
;	loadtrainer EXECUTIVEM, EXECUTIVEM_1
;	startbattle
;	reloadmapafterbattle
;	opentext
;	writetext RadioTower5FRocketBossAfterText
;	waitbutton
;	closetext
;	special FadeBlackQuickly
;	special ReloadSpritesNoPalettes
;	disappear RADIOTOWER5F_ROCKET
;	disappear RADIOTOWER5F_ROCKET_GIRL
;	pause 15
;	special FadeInQuickly
;	setevent EVENT_BEAT_ROCKET_EXECUTIVEM_1
;	setevent EVENT_CLEARED_RADIO_TOWER
;	clearflag ENGINE_ROCKETS_IN_RADIO_TOWER
;	setevent EVENT_GOLDENROD_CITY_ROCKET_SCOUT
;	setevent EVENT_GOLDENROD_CITY_ROCKET_TAKEOVER
;	setevent EVENT_RADIO_TOWER_ROCKET_TAKEOVER
;	clearevent EVENT_MAHOGANY_MART_OWNERS
;	clearflag ENGINE_ROCKETS_IN_MAHOGANY
;	clearevent EVENT_GOLDENROD_CITY_CIVILIANS
;	clearevent EVENT_RADIO_TOWER_CIVILIANS_AFTER
;	setevent EVENT_BLACKTHORN_CITY_SUPER_NERD_BLOCKS_GYM
;	clearevent EVENT_BLACKTHORN_CITY_SUPER_NERD_DOES_NOT_BLOCK_GYM
;	special PlayMapMusic
;	disappear RADIOTOWER5F_DIRECTOR
;	moveobject RADIOTOWER5F_DIRECTOR, 12, 0
;	appear RADIOTOWER5F_DIRECTOR
;	applymovement RADIOTOWER5F_DIRECTOR, RadioTower5FDirectorWalksIn
;	turnobject PLAYER, RIGHT
;	opentext
;	writetext RadioTower5FDirectorThankYouText
;	promptbutton
;	verbosegiveitem CLEAR_BELL
;	writetext RadioTower5FDirectorDescribeClearBellText
;	waitbutton
;	closetext
;	setscene SCENE_RADIOTOWER5F_NOOP
;	setmapscene ECRUTEAK_TIN_TOWER_ENTRANCE, SCENE_ECRUTEAKTINTOWERENTRANCE_SAGE_BLOCKS
;	setevent EVENT_GOT_CLEAR_BELL
;	setevent EVENT_TEAM_ROCKET_DISBANDED
;	sjump .UselessJump
;
;.UselessJump:
;	applymovement RADIOTOWER5F_DIRECTOR, RadioTower5FDirectorWalksOut
;	playsound SFX_EXIT_BUILDING
;	disappear RADIOTOWER5F_DIRECTOR
;	end
;
;RadioTower5FRocketBossBeforeText:
;	text "Oh? You managed to"
;	line "get this far?"
;
;	para "You must be quite"
;	line "the trainer."
;
;	para "We intend to take"
;	line "over this RADIO"
;
;	para "STATION and an-"
;	line "nounce our come-"
;	cont "back."
;
;	para "That should bring"
;	line "our boss GIOVANNI"
;
;	para "back from his solo"
;	line "training."
;
;	para "We are going to"
;	line "regain our former"
;	cont "glory."
;
;	para "I won't allow you"
;	line "to interfere with"
;	cont "our plans."
;	done
;
;RadioTower5FRocketBossWinText:
;	text "No! Forgive me,"
;	line "GIOVANNI!"
;	done
;
;RadioTower5FRocketBossAfterText:
;	text "How could this be?"
;
;	para "Our dreams have"
;	line "come to naught."
;
;	para "I wasn't up to the"
;	line "task after all."
;
;	para "Like GIOVANNI did"
;	line "before me, I will"
;
;	para "disband TEAM"
;	line "ROCKET here today."
;
;	para "Farewell."
;	done

RadioTower5F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  0, RADIO_TOWER_4F, 1
	warp_event 12,  0, RADIO_TOWER_4F, 3

	def_coord_events

	def_bg_events
	bg_event  3,  0, BGEVENT_READ, RadioTower5FDirectorsOfficeSign
	bg_event 11,  0, BGEVENT_READ, RadioTower5FStudio1Sign
;	bg_event 15,  0, BGEVENT_READ, RadioTower5FStudio1Sign
	bg_event 16,  1, BGEVENT_READ, RadioTower5FBookshelf
	bg_event 17,  1, BGEVENT_READ, RadioTower5FBookshelf

	def_object_events
	object_event  3,  6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Director, -1
	object_event 13,  5, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, DJBen, EVENT_RADIO_TOWER_CIVILIANS_AFTER
	object_event  8,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RadioTower5FUltraBall, EVENT_RADIO_TOWER_5F_ULTRA_BALL
