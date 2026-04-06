	object_const_def

DanceTheater_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerKimonoGirlNaoko: ;flareon
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
	text "I enjoyed that."
	line "I would like to"
	cont "see you again."
	done

TrainerKimonoGirlKuni: ;vaporeon
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

TrainerKimonoGirlMiki: ;jolteon
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
	roll "what I do."

	para "My #MON keep my"
	line "spirits up too."
	done

TrainerKimonoGirlSayo: ;espeon
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

TrainerKimonoGirlZuki: ;umbreon
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
	text "My #MON and I"
	line "like to dance and"
	cont "train in the moon-"
	roll "light!"
	done

;	text "I put a different"
;	line "flower in my hair"
;	cont "every month."
;	done

TrainerKimonoGirlAoki: ;leafeon
	trainer KIMONO_GIRL, AOKI, EVENT_BEAT_KIMONO_GIRL_AOKI, KimonoGirlAokiSeenText, KimonoGirlAokiBeatenText, 0, .Script
.Script:
;	endifjustbattled
	opentext
	writetext KimonoGirlAokiAfterBattleText
	waitbutton
	closetext
	end

KimonoGirlAokiSeenText:
	text "Gracefully, like"
	line "flower petals"
	cont "floating on the"
	roll "wind."
	done

KimonoGirlAokiBeatenText:
	text "Your #MON are"
	line "graceful, too!"
	done

KimonoGirlAokiAfterBattleText:
	text "ILEX FOREST is so"
	line "peaceful, its my"
	cont "favorite place."

	text "I like to train"
	line "my #MON there."
	done

TrainerKimonoGirlYuki: ;glaceon
	trainer KIMONO_GIRL, YUKI, EVENT_BEAT_KIMONO_GIRL_YUKI, KimonoGirlYukiSeenText, KimonoGirlYukiBeatenText, 0, .Script
.Script:
;	endifjustbattled
	opentext
	writetext KimonoGirlYukiAfterBattleText
	waitbutton
	closetext
	end

KimonoGirlYukiSeenText:
	text "Would you like to"
	line "battle?"

	para "My #MON is"
	line "tough."
	done

KimonoGirlYukiBeatenText:
	text "Harsh."
	done

KimonoGirlYukiAfterBattleText:
	text "Dancing is fun,"
	line "but I go to the"
	cont "harsh ICE PATH to"
	roll "train my #MON."
	done

DanceTheaterGentelmanScript:
	faceplayer
	opentext
	writetext GentlemanNeverLeftAScratchText
	promptbutton
	checkevent EVENT_GOT_DANCE_THEATER_LUCKY_EGG
	iftrue .GentlemanAlreadyGaveReward
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
	checkevent EVENT_BEAT_KIMONO_GIRL_AOKI
	iffalse .KimonoGirlsUndefeated
	checkevent EVENT_BEAT_KIMONO_GIRL_YUKI
	iffalse .KimonoGirlsUndefeated
; all defeated
	writetext GentlemanLikeADanceText
	promptbutton
	verbosegiveitem LUCKY_EGG
	iffalse .NoRoomForEgg
	setevent EVENT_GOT_DANCE_THEATER_LUCKY_EGG
	writetext GentlemanLuckyEggExplanationText
	waitbutton
.NoRoomForEgg:
	closetext
	end

.GentlemanAlreadyGaveReward:
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
	line "KIMONO GIRLs great"
	cont "dancers, they're"
	roll "also skilled at"
	cont "#MON."

	para "I always challenge"
	line "them, but I've"
	cont "never even left a"
	roll "scratch…"
	done

GentlemanElegantKimonoGirlsText:
	text "I wish my #MON"
	line "were as elegant as"
	cont "the KIMONO GIRLs…"
	done

GentlemanLadGiftText:
	text "Lad! If you can"
	line "defeat all of the"
	cont "KIMONO GIRLs, I'll"
	roll "give you a gift."
	done

GentlemanLassieGiftText:
	text "Lassie, if you can"
	line "defeat all of the"
	cont "KIMONO GIRLs, I'll"
	roll "give you a gift."
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

GentlemanLuckyEggExplanationText:
	text "That LUCKY EGG"
	line "helps #MON gain"
	cont "experience points"
	roll "more quickly."
	done

;GentlemanSwaggerExplanationText:
;	text "That's SWAGGER."
;
;	para "It raises the"
;	line "target's ATTACK,"
;	cont "but it also makes"
;	roll "them CONFUSED."
;	done

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
	roll "#MON?"
	done

DanceTheaterGrannyScript:
	jumptextfaceplayer DanceTheaterGrannyText
DanceTheaterGrannyText:
	text "The KIMONO GIRLs"
	line "are so beautiful…"

	para "But they have to"
	line "go through rigor-"
	cont "ous training."

	para "And they have to"
	line "learn to follow"
	cont "customs before ap-"
	roll "pearing in public."

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
	object_event  2,  2, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerKimonoGirlNaoko, -1 ;flareon
	object_event  1,  1, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 0, TrainerKimonoGirlKuni, -1 ;vaporeon
	object_event  3,  1, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_TRAINER, 0, TrainerKimonoGirlMiki, -1 ;jolteon
	object_event  7,  1, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 0, TrainerKimonoGirlSayo, -1 ;espeon
	object_event  6,  2, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, -1, PAL_NPC_TREE, OBJECTTYPE_TRAINER, 0, TrainerKimonoGirlZuki, -1 ;umbreon
	object_event  9,  2, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 0, TrainerKimonoGirlAoki, -1 ;leafeon
	object_event 10,  1, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_TRAINER, 0, TrainerKimonoGirlYuki, -1 ;glaceon
	object_event  6,  9, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, DanceTheaterGentelmanScript, -1
	object_event  5,  8, SPRITE_RHYHORN, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_TREE, OBJECTTYPE_SCRIPT, 0, DanceTheaterRhyhorn, -1
	object_event  3, 10, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, DanceTheaterCooltrainerMScript, -1
	object_event  8,  6, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DanceTheaterGrannyScript, -1

;.GrayOverTreeOBPalette