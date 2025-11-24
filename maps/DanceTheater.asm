	object_const_def

DanceTheater_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerKimonoGirlNaoko:
	trainer KIMONO_GIRL, NAOKO, EVENT_BEAT_KIMONO_GIRL_NAOKO, KimonoGirlNaokoSeenText, KimonoGirlNaokoBeatenText, 0, .Script
.Script:
;	endifjustbattled
	opentext
	writetext KimonoGirlNaokoAfterBattleText
	waitbutton
	closetext
	end

KimonoGirlNaokoSeenText:
	text "You have lovely"
	line "#MON. May I see"
	cont "them in battle?"
	done

KimonoGirlNaokoBeatenText:
	text "Oh, you are very"
	line "strong."
	done

KimonoGirlNaokoAfterBattleText:
	text "I enjoyed that"
	line "bout. I would like"
	cont "to see you again."
	done

TrainerKimonoGirlSayo:
	trainer KIMONO_GIRL, SAYO, EVENT_BEAT_KIMONO_GIRL_SAYO, KimonoGirlSayoSeenText, KimonoGirlSayoBeatenText, 0, .Script
.Script:
;	endifjustbattled
	opentext
	writetext KimonoGirlSayoAfterBattleText
	waitbutton
	closetext
	end

KimonoGirlSayoSeenText:
	text "I always dance"
	line "with my #MON."

	para "Of course, I also"
	line "train them."
	done

KimonoGirlSayoBeatenText:
	text "Oh, so close!"
	line "I almost had you."
	done

KimonoGirlSayoAfterBattleText:
	text "Rhythm is impor-"
	line "tant for both"
	cont "dancing and #-"
	cont "MON."
	done

TrainerKimonoGirlZuki:
	trainer KIMONO_GIRL, ZUKI, EVENT_BEAT_KIMONO_GIRL_ZUKI, KimonoGirlZukiSeenText, KimonoGirlZukiBeatenText, 0, .Script
.Script:
;	endifjustbattled
	opentext
	writetext KimonoGirlZukiAfterBattleText
	waitbutton
	closetext
	end

KimonoGirlZukiSeenText:
	text "Isn't my barrette"
	line "pretty?"

	para "Oh. A #MON"
	line "battle?"
	done

KimonoGirlZukiBeatenText:
	text "I don't have any"
	line "#MON left…"
	done

KimonoGirlZukiAfterBattleText:
	text "I put a different"
	line "flower in my hair"
	cont "every month."
	done

TrainerKimonoGirlKuni:
	trainer KIMONO_GIRL, KUNI, EVENT_BEAT_KIMONO_GIRL_KUNI, KimonoGirlKuniSeenText, KimonoGirlKuniBeatenText, 0, .Script
.Script:
;	endifjustbattled
	opentext
	writetext KimonoGirlKuniAfterBattleText
	waitbutton
	closetext
	end

KimonoGirlKuniSeenText:
	text "Oh, you're a cute"
	line "trainer. Would you"
	cont "like to battle?"
	done

KimonoGirlKuniBeatenText:
	text "You're stronger"
	line "than you look."
	done

KimonoGirlKuniAfterBattleText:
	text "I trained a lot,"
	line "so I thought I was"
	cont "a strong trainer."
	done

TrainerKimonoGirlMiki:
	trainer KIMONO_GIRL, MIKI, EVENT_BEAT_KIMONO_GIRL_MIKI, KimonoGirlMikiSeenText, KimonoGirlMikiBeatenText, 0, .Script
.Script:
;	endifjustbattled
	opentext
	writetext KimonoGirlMikiAfterBattleText
	waitbutton
	closetext
	end

KimonoGirlMikiSeenText:
	text "Do you like my"
	line "dancing? I'm good"
	cont "at #MON too."
	done

KimonoGirlMikiBeatenText:
	text "Ooh, you're good"
	line "at #MON too."
	done

KimonoGirlMikiAfterBattleText:
	text "I can keep dancing"
	line "because there are"
	cont "people who enjoy"
	cont "what I do."

	para "My #MON keep my"
	line "spirits up too."
	done

DanceTheaterGentelmanScript:
	faceplayer
	opentext
	writetext GentlemanNeverLeftAScratchText
	promptbutton
	checkevent EVENT_GOT_TM68_SWAGGER
	iftrue .GentlemanAlreadyGaveSwagger
	checkevent EVENT_BEAT_KIMONO_GIRL_NAOKO
	iffalse .KimonoGirlsUndefeated
	checkevent EVENT_BEAT_KIMONO_GIRL_SAYO
	iffalse .KimonoGirlsUndefeated
	checkevent EVENT_BEAT_KIMONO_GIRL_ZUKI
	iffalse .KimonoGirlsUndefeated
	checkevent EVENT_BEAT_KIMONO_GIRL_KUNI
	iffalse .KimonoGirlsUndefeated
	checkevent EVENT_BEAT_KIMONO_GIRL_MIKI
	iffalse .KimonoGirlsUndefeated
; all defeated
	writetext GentlemanLikeADanceText
	promptbutton
	verbosegiveitem TM_SWAGGER
	iffalse .NoRoomForSwagger
	setevent EVENT_GOT_TM68_SWAGGER
	writetext GentlemanSwaggerExplanationText
	waitbutton
.NoRoomForSwagger:
	closetext
	end

.GentlemanAlreadyGaveSwagger:
	writetext GentlemanElegantKimonoGirlsText
	waitbutton
	closetext
	end

.KimonoGirlsUndefeated:
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .PlayerIsFemale
	writetext GentlemanLadGiftText
	waitbutton
	closetext
	end

.PlayerIsFemale:
	writetext GentlemanLassieGiftText
	waitbutton
	closetext
	end

GentlemanNeverLeftAScratchText:
	text "Not only are the"
	line "KIMONO GIRLS great"
	cont "dancers, they're"
	cont "also skilled at"
	cont "#MON."

	para "I always challenge"
	line "them, but I've"
	cont "never even left a"
	cont "scratch…"
	done

GentlemanElegantKimonoGirlsText:
	text "I wish my #MON"
	line "were as elegant as"
	cont "the KIMONO GIRLS…"
	done

GentlemanLadGiftText:
	text "Lad! If you can"
	line "defeat all of the"
	cont "KIMONO GIRLS, I'll"
	line "give you a gift."
	done

GentlemanLassieGiftText:
	text "Lassie, if you can"
	line "defeat all of the"
	cont "KIMONO GIRLS, I'll"
	line "give you a gift."
	done

GentlemanLikeADanceText:
	text "The way you bat-"
	line "tled, it was like"
	cont "watching a dance."

	para "It was a rare"
	line "treat to see!"

	para "I want you to have"
	line "this. Don't worry"
	cont "--take it!"
	done

GentlemanSwaggerExplanationText:
	text "That's SWAGGER."

	para "It raises the"
	line "target's ATTACK,"
	cont "but it also makes"
	cont "them CONFUSED."
	done

;GentlemanSurfExplanationText:
;	text "That's SURF."
;
;	para "It's a move that"
;	line "sends a giant wave"
;	cont "crashing down."
;	done

DanceTheaterRhyhorn:
	opentext
	writetext DanceTheaterRhyhornText
	cry RHYHORN
	waitbutton
	closetext
	end

DanceTheaterRhyhornText:
	text "RHYHORN: Gugooh"
	line "gugogooh!"
	done

DanceTheaterCooltrainerMScript:
	jumptextfaceplayer DanceTheaterCooltrainerMText
DanceTheaterCooltrainerMText:
	text "That man's always"
	line "with his RHYHORN."

	para "Says he wants a"
	line "#MON that can"
	cont "SURF and dance."

	para "Is he trying to"
	line "make a synchro-"
	cont "nized swimming"
	cont "#MON?"
	done

DanceTheaterGrannyScript:
	jumptextfaceplayer DanceTheaterGrannyText
DanceTheaterGrannyText:
	text "The KIMONO GIRLS"
	line "are so beautiful…"

	para "But they have to"
	line "go through rigor-"
	cont "ous training."

	para "And they have to"
	line "learn to follow"
	cont "customs before ap-"
	cont "pearing in public."

	para "But if you love"
	line "something, any-"
	cont "thing is possible."
	done

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

	def_bg_events
	bg_event  5,  6, BGEVENT_UP, DanceTheaterFancyPanel
	bg_event  6,  6, BGEVENT_UP, DanceTheaterFancyPanel

	def_object_events
	object_event  2,  2, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 0, TrainerKimonoGirlNaoko, -1
	object_event  4,  1, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 0, TrainerKimonoGirlSayo, -1
	object_event  6,  2, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerKimonoGirlZuki, -1
	object_event  8,  1, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 0, TrainerKimonoGirlKuni, -1
	object_event 10,  2, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 0, TrainerKimonoGirlMiki, -1
	object_event  6,  9, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DanceTheaterGentelmanScript, -1
	object_event  5,  8, SPRITE_RHYHORN, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_ROCK, OBJECTTYPE_SCRIPT, 0, DanceTheaterRhyhorn, -1
	object_event  3, 10, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, DanceTheaterCooltrainerMScript, -1
	object_event  8,  6, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DanceTheaterGrannyScript, -1

;probably grey_over_rock palette