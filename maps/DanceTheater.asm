	object_const_def
	const DANCETHEATER_FLAREON
	const DANCETHEATER_JOLTEON
	const DANCETHEATER_VAPOREON
	const DANCETHEATER_UMBREON
	const DANCETHEATER_ESPEON
	const DANCETHEATER_LEAFEON
	const DANCETHEATER_GLACEON
	const DANCETHEATER_GRANNY

DanceTheater_MapScripts:
	def_scene_scripts
	scene_script DanceTheaterNoop1Scene, SCENE_DANCETHEATER_CHALLENGE
	scene_script DanceTheaterNoop2Scene, SCENE_DANCETHEATER_NOOP

	def_callbacks

DanceTheaterNoop1Scene:
DanceTheaterNoop2Scene:
	end

DanceTheaterChallengeLeft:
	opentext
	writetext DanceTheaterAskChallengeText
	yesorno
	iffalse DanceTheaterChallengeRight.NoChallenge
	closetext
	applymovement PLAYER, DanceTheaterStartChallengeLeftMovement
	sjump KimonoGirlsChallengeScript

DanceTheaterChallengeRight:
	opentext
	writetext DanceTheaterAskChallengeText
	yesorno
	iffalse .NoChallenge
	closetext
	applymovement PLAYER, DanceTheaterStartChallengeRightMovement
	sjump KimonoGirlsChallengeScript

.NoChallenge
	closetext
	applymovement PLAYER, DanceTheaterStepDownMovement
	end

KimonoGirlsChallengeScript:
	applymovement DANCETHEATER_JOLTEON, KimonoGirlJolteon_FirstPosition
	applymovement DANCETHEATER_LEAFEON, KimonoGirlLeafeon_FirstPosition
	turnobject DANCETHEATER_FLAREON, RIGHT
	applymovement DANCETHEATER_VAPOREON, KimonoGirlVaporeon_FirstPosition
	applymovement DANCETHEATER_GLACEON, KimonoGirlGlaceon_FirstPosition
	turnobject DANCETHEATER_ESPEON, DOWN
; umbreon, zuki
	applymovement DANCETHEATER_UMBREON, KimonoGirlUmbreon_Approach
	turnobject PLAYER, RIGHT
	opentext
	writetext KimonoGirlUmbreonSeenText_Challenge
	waitbutton
	closetext
	winlosstext KimonoGirlUmbreonBeatenText_Challenge, 0
	loadtrainer KIMONO_GIRL, ZUKI
	startbattle
	reloadmapafterbattle
	applymovement DANCETHEATER_UMBREON, KimonoGirlUmbreon_Retreat
; espeon, sayo
	applymovement DANCETHEATER_ESPEON, KimonoGirlEspeon_Approach
	opentext
	writetext KimonoGirlEspeonSeenText
	waitbutton
	closetext
	winlosstext KimonoGirlEspeonBeatenText, 0
	loadtrainer KIMONO_GIRL, SAYO
	startbattle
	reloadmapafterbattle
	applymovement DANCETHEATER_ESPEON, KimonoGirlEspeon_Retreat
; flareon, naoko
	applymovement DANCETHEATER_FLAREON, KimonoGirlFlareon_Approach
	opentext
	writetext KimonoGirlFlareonSeenText
	waitbutton
	closetext
	winlosstext KimonoGirlFlareonBeatenText, 0
	loadtrainer KIMONO_GIRL, NAOKO
	startbattle
	reloadmapafterbattle
	applymovement DANCETHEATER_FLAREON, KimonoGirlFlareon_Retreat
; jolteon, miki
	applymovement DANCETHEATER_JOLTEON, KimonoGirlJolteon_Approach
	opentext
	writetext KimonoGirlJolteonSeenText
	waitbutton
	closetext
	winlosstext KimonoGirlJolteonBeatenText, 0
	loadtrainer KIMONO_GIRL, MIKI
	startbattle
	reloadmapafterbattle
	applymovement DANCETHEATER_JOLTEON, KimonoGirlJolteon_Retreat
; vaporeon, kuni
	applymovement DANCETHEATER_VAPOREON, KimonoGirlVaporeon_Approach
	opentext
	writetext KimonoGirlVaporeonSeenText
	waitbutton
	closetext
	winlosstext KimonoGirlVaporeonBeatenText, 0
	loadtrainer KIMONO_GIRL, KUNI
	startbattle
	reloadmapafterbattle
	applymovement DANCETHEATER_VAPOREON, KimonoGirlVaporeon_Retreat
; leafeon, aoki
	applymovement DANCETHEATER_LEAFEON, KimonoGirlLeafeon_Approach
	opentext
	writetext KimonoGirlLeafeonSeenText
	waitbutton
	closetext
	winlosstext KimonoGirlLeafeonBeatenText, 0
	loadtrainer KIMONO_GIRL, AOKI
	startbattle
	reloadmapafterbattle
	applymovement DANCETHEATER_LEAFEON, KimonoGirlLeafeon_Retreat
; glaceon, yuki
	applymovement DANCETHEATER_GLACEON, KimonoGirlGlaceon_Approach
	opentext
	writetext KimonoGirlGlaceonSeenText_Challenge
	waitbutton
	closetext
	winlosstext KimonoGirlGlaceonBeatenText, 0
	loadtrainer KIMONO_GIRL, YUKI
	startbattle
	reloadmapafterbattle
	applymovement DANCETHEATER_GLACEON, KimonoGirlGlaceon_Retreat
; victory
	setevent EVENT_BEAT_KIMONO_GIRL_CHALLENGE
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_4
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_5
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_6
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_7
	setscene SCENE_DANCETHEATER_NOOP
	applymovement DANCETHEATER_GRANNY, DanceTheaterGranny_Approach
	setlasttalked DANCETHEATER_GRANNY
	; fallthrough

DanceTheaterGrannyScript:
	checkevent EVENT_BEAT_KIMONO_GIRL_CHALLENGE
	iffalse .DefaultText
	checkevent EVENT_GOT_DANCE_THEATER_LUCKY_EGG
	iftrue .DefaultText
	faceplayer
	opentext
	writetext DanceTheaterGrannyVictoryText
	promptbutton
	verbosegiveitem LUCKY_EGG
	iffalse .NoRoomForEgg
	setevent EVENT_GOT_DANCE_THEATER_LUCKY_EGG
	writetext DanceTheaterGrannyLuckyEggText
	waitbutton
.NoRoomForEgg:
	closetext
	end

.DefaultText
	jumptextfaceplayer DanceTheaterGrannyText
DanceTheaterGrannyText:
	ntag "GRANNY:"
	text "The KIMONO GIRLs"
	line "are so beautiful…"

	para "But they need to"
	line "train rigorously"
	cont "to perfect their"
	roll "dancing."

	para "And they have to"
	line "learn to follow"
	cont "customs before ap-"
	roll "pearing in public."

	para "But if you love"
	line "something, any-"
	cont "thing is possible."
	done

; challenge text
DanceTheaterAskChallengeText:
	text "Challenge the"
	line "KIMONO GIRLs?"
	done

; umbreon, zuki
KimonoGirlUmbreonSeenText_Challenge: ;
	ntag "ZUKI:"
	text "Welcome to our"
	line "DANCE THEATER!"

	para "If you want to"
	line "challenge us, you"
	cont "need to beat all"
	roll "of us!"

	para "I hope that you're"
	line "well prepared!"
	done

KimonoGirlUmbreonBeatenText_Challenge: ;
	ntag "ZUKI:"
	text "Very good! Let's"
	line "see how you do"
	cont "against the rest"
	roll "of us!"
	done

KimonoGirlGlaceonSeenText_Challenge:
	ntag "YUKI:"
	text "I'm the last one."

	para "Do you think you"
	line "can beat me too?"

	para "My #MON is"
	line "tough."
	done

; victory
DanceTheaterGrannyVictoryText:
	ntag "GRANNY:"
	text "What a stunning"
	line "performance!"

	para "Many trainers come"
	line "to challenge the"
	cont "KIMONO GIRLs, but"
	roll "I've never seen"
	cont "anyone defeat all"
	roll "of them!"

	para "Seeing you battle,"
	line "it was like watch-"
	cont "ing a dance."

	para "It was a rare"
	line "treat to see!"

	para "I want you to have"
	line "this. Don't worry,"
	cont "take it!"
	done

DanceTheaterGrannyLuckyEggText:
	ntag "GRANNY:"
	text "That LUCKY EGG"
	line "helps #MON gain"
	cont "experience points"
	roll "more quickly."
	done

; player movement
DanceTheaterStepDownMovement:
	step DOWN
	step_end

DanceTheaterStartChallengeLeftMovement:
	step UP
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head UP
	step_end

DanceTheaterStartChallengeRightMovement:
	step UP
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	turn_head UP
	step_end

; first positions
KimonoGirlVaporeon_FirstPosition:
	big_step RIGHT
KimonoGirlJolteon_FirstPosition:
	big_step RIGHT
	turn_head DOWN
	step_end

KimonoGirlLeafeon_FirstPosition:
	big_step LEFT
	big_step UP
	turn_head DOWN
	step_end

;KimonoGirlFlareon_FirstPosition:
;	big_step RIGHT
;	step_end

KimonoGirlGlaceon_FirstPosition:
	big_step LEFT
	big_step DOWN
	turn_head LEFT
	step_end

; battle approach
KimonoGirlEspeon_Approach:
	step DOWN
	step LEFT
KimonoGirlUmbreon_Approach:
	step DOWN
	turn_head LEFT
	step_end

KimonoGirlFlareon_Approach:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step DOWN
	turn_head LEFT
	step_end

KimonoGirlJolteon_Approach:
	step DOWN
	step RIGHT
	step RIGHT
	step DOWN
	turn_head LEFT
	step_end

KimonoGirlVaporeon_Approach:
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step DOWN
	turn_head LEFT
	step_end

KimonoGirlLeafeon_Approach:
	step DOWN
	step LEFT
	step LEFT
	step DOWN
	turn_head LEFT
	step_end

KimonoGirlGlaceon_Approach:
	step LEFT
	step LEFT
	step LEFT
	step DOWN
	turn_head LEFT
	step_end

; battle retreat
KimonoGirlEspeon_Retreat:
	step RIGHT
KimonoGirlUmbreon_Retreat:
	step UP
	step UP
	turn_head DOWN
	step_end

KimonoGirlFlareon_Retreat:
	step UP
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	turn_head RIGHT
	step_end

KimonoGirlJolteon_Retreat:
	step UP
	step LEFT
	step LEFT
	step UP
	turn_head DOWN
	step_end

KimonoGirlVaporeon_Retreat:
	step UP
	step LEFT
	step LEFT
	step LEFT
	step UP
	turn_head DOWN
	step_end

KimonoGirlLeafeon_Retreat:
	step UP
	step RIGHT
	step RIGHT
	step UP
	turn_head DOWN
	step_end

KimonoGirlGlaceon_Retreat:
	step UP
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head LEFT
	step_end

; victory
DanceTheaterGranny_Approach:
	step UP
	step RIGHT
	step RIGHT
	step UP
	step UP
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end

;DanceTheaterGranny_Retreat:
;	step RIGHT
;	step RIGHT
;	step RIGHT
;	step RIGHT
;	step DOWN
;	step DOWN
;	step LEFT
;	step LEFT
;	step DOWN
;	turn_head UP
;	step_end


;flareon
TrainerKimonoGirlNaoko: ;EVENT_BEAT_KIMONO_GIRL_NAOKO
	trainer KIMONO_GIRL, NAOKO, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1, KimonoGirlFlareonSeenText, KimonoGirlFlareonBeatenText, 0, .Script
.Script:
;	endifjustbattled
	opentext
	writetext KimonoGirlNaokoAfterBattleText
	waitbutton
	closetext
	end

KimonoGirlFlareonSeenText:
	ntag "NAOKO:"
	text "You have lovely"
	line "#MON. May I see"
	cont "them in battle?"
	done

KimonoGirlFlareonBeatenText:
	ntag "NAOKO:"
	text "Oh, you are very"
	line "strong."
	done

KimonoGirlNaokoAfterBattleText:
	ntag "NAOKO:"
	text "I enjoyed that."
	line "I would like to"
	cont "see you again."
	done

;vaporeon
TrainerKimonoGirlKuni: ;EVENT_BEAT_KIMONO_GIRL_KUNI
	trainer KIMONO_GIRL, KUNI, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2, KimonoGirlVaporeonSeenText, KimonoGirlVaporeonBeatenText, 0, .Script
.Script:
;	endifjustbattled
	opentext
	writetext KimonoGirlKuniAfterBattleText
	waitbutton
	closetext
	end

KimonoGirlVaporeonSeenText:
	ntag "KUNI:"
	text "Oh, you have cute"
	line "#MON! Let's see"
	cont "them in battle!"
	done

KimonoGirlVaporeonBeatenText:
	ntag "KUNI:"
	text "You're stronger"
	line "than you look."
	done

KimonoGirlKuniAfterBattleText:
	ntag "KUNI:"
	text "I trained a lot,"
	line "so I thought I was"
	cont "a strong trainer."
	done

;jolteon
TrainerKimonoGirlMiki: ;EVENT_BEAT_KIMONO_GIRL_MIKI
	trainer KIMONO_GIRL, MIKI, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3, KimonoGirlJolteonSeenText, KimonoGirlJolteonBeatenText, 0, .Script
.Script:
;	endifjustbattled
	opentext
	writetext KimonoGirlMikiAfterBattleText
	waitbutton
	closetext
	end

KimonoGirlJolteonSeenText:
	ntag "MIKI:"
	text "Do you like my"
	line "dancing? I'm good"
	cont "at #MON too."
	done

KimonoGirlJolteonBeatenText:
	ntag "MIKI:"
	text "Ooh, you're good"
	line "at #MON too."
	done

KimonoGirlMikiAfterBattleText:
	ntag "MIKI:"
	text "I can keep dancing"
	line "because there are"
	cont "people who enjoy"
	roll "what I do."

	para "My #MON keep my"
	line "spirits up too."
	done

;espeon
TrainerKimonoGirlSayo: ;EVENT_BEAT_KIMONO_GIRL_SAYO
	trainer KIMONO_GIRL, SAYO, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_4, KimonoGirlEspeonSeenText, KimonoGirlEspeonBeatenText, 0, .Script
.Script:
;	endifjustbattled
	opentext
	writetext KimonoGirlSayoAfterBattleText
	waitbutton
	closetext
	end

KimonoGirlEspeonSeenText:
	ntag "SAYO:"
	text "I always dance"
	line "with my #MON."

	para "Of course, I also"
	line "train them."
	done

KimonoGirlEspeonBeatenText:
	ntag "SAYO:"
	text "Oh, so close!"
	line "I almost had you."
	done

KimonoGirlSayoAfterBattleText:
	ntag "SAYO:"
	text "The warm sunlight"
	line "gives me and my"
	cont "#MON the energy"
	roll "to keep training."
	done

;	text "Rhythm is impor-"
;	line "tant for both"
;	cont "dancing and #-"
;	roll "MON."
;	done

;umbreon
TrainerKimonoGirlZuki: ;EVENT_BEAT_KIMONO_GIRL_ZUKI
	trainer KIMONO_GIRL, ZUKI, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_5, KimonoGirlUmbreonSeenText, KimonoGirlUmbreonBeatenText, 0, .Script
.Script:
;	endifjustbattled
	opentext
	writetext KimonoGirlZukiAfterBattleText
	waitbutton
	closetext
	end

KimonoGirlUmbreonSeenText:
	ntag "ZUKI:"
	text "Isn't my barrette"
	line "pretty?"

	para "Oh. A #MON"
	line "battle?"
	done

KimonoGirlUmbreonBeatenText:
	ntag "ZUKI:"
	text "I don't have any"
	line "#MON left…"
	done

KimonoGirlZukiAfterBattleText:
	ntag "ZUKI:"
	text "My #MON and I"
	line "like to dance and"
	cont "train in the moon-"
	roll "light!"
	done

;	text "I put a different"
;	line "flower in my hair"
;	cont "every month."
;	done

;leafeon
TrainerKimonoGirlAoki: ;EVENT_BEAT_KIMONO_GIRL_AOKI
	trainer KIMONO_GIRL, AOKI, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_6, KimonoGirlLeafeonSeenText, KimonoGirlLeafeonBeatenText, 0, .Script
.Script:
;	endifjustbattled
	opentext
	writetext KimonoGirlAokiAfterBattleText
	waitbutton
	closetext
	end

KimonoGirlLeafeonSeenText:
	ntag "AOKI:"
	text "Gracefully, like"
	line "flower petals"
	cont "floating on the"
	roll "wind."
	done

KimonoGirlLeafeonBeatenText:
	ntag "AOKI:"
	text "Your #MON are"
	line "graceful, too!"
	done

KimonoGirlAokiAfterBattleText:
	ntag "AOKI:"
	text "ILEX FOREST is so"
	line "peaceful, its my"
	cont "favorite place."

	para "I like to train"
	line "my #MON there."
	done

;glaceon
TrainerKimonoGirlYuki: ;EVENT_BEAT_KIMONO_GIRL_YUKI
	trainer KIMONO_GIRL, YUKI, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_7, KimonoGirlGlaceonSeenText, KimonoGirlGlaceonBeatenText, 0, .Script
.Script:
;	endifjustbattled
	opentext
	writetext KimonoGirlYukiAfterBattleText
	waitbutton
	closetext
	end

KimonoGirlGlaceonSeenText:
	ntag "YUKI:"
	text "Would you like to"
	line "battle?"

	para "My #MON is"
	line "tough."
	done

KimonoGirlGlaceonBeatenText:
	ntag "YUKI:"
	text "Your #MON are"
	line "tough too."
	done

KimonoGirlYukiAfterBattleText:
	ntag "YUKI:"
	text "Dancing is fun,"
	line "but I go to the"
	cont "harsh ICE PATH to"
	roll "train my #MON."
	done


TradeNPCJackson:
	faceplayer
	opentext
	trade NPC_TRADE_JACKSON
	waitbutton
	closetext
	end

;DanceTheaterRhyhorn:
;	opentext
;	writetext DanceTheaterRhyhornText
;	cry RHYHORN
;	waitbutton
;	closetext
;	end
;
;DanceTheaterRhyhornText:
;	ntag "RHYHORN:"
;	text "Gugooh"
;	line "gugogooh!"
;	done

;DanceTheaterCooltrainerMScript:
;	jumptextfaceplayer DanceTheaterCooltrainerMText
;DanceTheaterCooltrainerMText:
;	text "That man's always"
;	line "with his RHYHORN."
;
;	para "Says he wants a"
;	line "#MON that can"
;	cont "SURF and dance."
;
;	para "Is he trying to"
;	line "make a synchro-"
;	cont "nized swimming"
;	roll "#MON?"
;	done

DanceTheaterFancyPanel:
	jumptext DanceTheaterFancyPanelText
DanceTheaterFancyPanelText:
	text "It's a fancy panel"
	line "that's decorated"
	cont "with flowers."
	done

DanceTheater_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 13, ECRUTEAK_CITY, 8
	warp_event  5, 13, ECRUTEAK_CITY, 8

	def_coord_events
	coord_event  1,  4, SCENE_DANCETHEATER_CHALLENGE, DanceTheaterChallengeLeft
	coord_event 10,  4, SCENE_DANCETHEATER_CHALLENGE, DanceTheaterChallengeRight

	def_bg_events
	bg_event  5,  6, BGEVENT_UP, DanceTheaterFancyPanel
	bg_event  6,  6, BGEVENT_UP, DanceTheaterFancyPanel

	def_object_events
	object_event  2,  2, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerKimonoGirlNaoko, -1 ;flareon
	object_event  3,  1, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_TRAINER, 0, TrainerKimonoGirlMiki, -1 ;jolteon
	object_event  1,  1, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 0, TrainerKimonoGirlKuni, -1 ;vaporeon
	object_event  6,  2, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, -1, PAL_NPC_TREE, OBJECTTYPE_TRAINER, 0, TrainerKimonoGirlZuki, -1 ;umbreon
	object_event  7,  1, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 0, TrainerKimonoGirlSayo, -1 ;espeon
	object_event  9,  2, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 0, TrainerKimonoGirlAoki, -1 ;leafeon
	object_event 10,  1, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_TRAINER, 0, TrainerKimonoGirlYuki, -1 ;glaceon
	object_event  8,  6, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DanceTheaterGrannyScript, -1
	object_event  3, 10, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, TradeNPCJackson, -1
;	object_event  2, 10, SPRITE_RHYHORN, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_TREE, OBJECTTYPE_SCRIPT, 0, DanceTheaterRhyhorn, -1
;	object_event  3, 10, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, DanceTheaterCooltrainerMScript, -1

;.GrayOverTreeOBPalette
