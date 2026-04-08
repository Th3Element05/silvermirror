	object_const_def

SSAnneRooms2F_MapScripts:
	def_scene_scripts

	def_callbacks

; trainers
TrainerGentlemanGregory:
	trainer GENTLEMAN, GREGORY, EVENT_BEAT_GENTLEMAN_GREGORY, GentlemanGregorySeenText, GentlemanGregoryBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext GentlemanGregoryAfterBattleText
	waitbutton
	closetext
	end

GentlemanGregorySeenText:
	text "Competing against"
	line "the young keeps"
	cont "me youthful."
	done

GentlemanGregoryBeatenText:
	text "Good"
	line "fight! Ah, I feel"
	cont "young again!"
	done

GentlemanGregoryAfterBattleText:
	text "15 years ago, I"
	line "would have won!"
	done

TrainerFisherJustin:
	trainer FISHER, JUSTIN, EVENT_BEAT_FISHER_JUSTIN, FisherJustinSeenText, FisherJustinBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext FisherJustinAfterBattleText
	waitbutton
	closetext
	end

FisherJustinSeenText:
	text "Check out what I"
	line "fished up!"
	done

FisherJustinBeatenText:
	text "I'm"
	line "all out!"
	done

FisherJustinAfterBattleText:
	text "Party?"

	para "The cruise ship's"
	line "party should be"
	cont "over by now."
	done

TrainerLassEllen:
	trainer LASS, ELLEN, EVENT_BEAT_LASS_ELLEN, LassEllenSeenText, LassEllenBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext LassEllenAfterBattleText
	waitbutton
	closetext
	end

LassEllenSeenText:
	text "I never saw you"
	line "at the party."
	done

LassEllenBeatenText:
	text "Take"
	line "it easy!"
	done

LassEllenAfterBattleText:
	text "Oh, I adore your"
	line "strong #MON!"
	done

TrainerGentlemanWesley:
	trainer GENTLEMAN, WESLEY, EVENT_BEAT_GENTLEMAN_WESLEY, GentlemanWesleySeenText, GentlemanWesleyBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext GentlemanWesleyAfterBattleText
	waitbutton
	closetext
	end

GentlemanWesleySeenText:
	text "Which do you like,"
	line "a strong or a"
	cont "rare #MON?"
	done

GentlemanWesleyBeatenText:
	text "I must"
	line "salute you!"
	done

GentlemanWesleyAfterBattleText:
	text "I prefer strong"
	line "and rare #MON."
	done


; rematch trainers
TrainerGentlemanAlfred:
	trainer GENTLEMAN, ALFRED1, EVENT_BEAT_GENTLEMAN_ALFRED, GentlemanAlfredSeenText, GentlemanAlfredBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext GentlemanAlfredAfterBattleText
	waitbutton
	closetext
	end

GentlemanAlfredSeenText:
	text "By battling with"
	line "young trainers, I"
	cont "keep myself young"
	roll "at heart!"
	done

GentlemanAlfredBeatenText:
	text "Whippersnapper!"
	done

GentlemanAlfredAfterBattleText:
	text "Youth is wasted"
	line "on the young."
	done

TrainerBeautyAdeline:
	trainer BEAUTY, ADELINE, EVENT_BEAT_BEAUTY_ADELINE, BeautyAdelineSeenText, BeautyAdelineBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext BeautyAdelineAfterBattleText
	waitbutton
	closetext
	end

BeautyAdelineSeenText:
	text "I'm trying to"
	line "forget my woes."
	cont "Let's battle!"
	done

BeautyAdelineBeatenText:
	text "My heart weeps…"
	done

BeautyAdelineAfterBattleText:
	text "A voyage is best"
	line "for getting over"
	cont "a broken heart."
	done

TrainerCoolDuoZacAndJen_Zac:
	trainer COOL_DUO, ZACANDJEN, EVENT_BEAT_COOL_DUO_ZACANDJEN, CoolDuoZacAndJenSeenText, CoolDuoZacAndJenBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext CoolDuoZacAfterBattleText
	waitbutton
	closetext
	end

TrainerCoolDuoZacAndJen_Jen:
	trainer COOL_DUO, ZACANDJEN, EVENT_BEAT_COOL_DUO_ZACANDJEN, CoolDuoZacAndJenSeenText, CoolDuoZacAndJenBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext CoolDuoJenAfterBattleText
	waitbutton
	closetext
	end

CoolDuoZacAndJenSeenText:
	text "We have a new"
	line "strategy that we"
	cont "are eager to try!"
	done

CoolDuoZacAndJenBeatenText:
	text "You're very good!"
	done

CoolDuoZacAfterBattleText:
	text "My strategy didn't"
	line "work, next time we"
	cont "can try hers."
	done

CoolDuoJenAfterBattleText:
	text "His strategy didn't"
	line "work, next time we"
	cont "will try mine!"
	done

TrainerSuperNerdEmmett:
	trainer SUPER_NERD, EMMETT, EVENT_BEAT_SUPER_NERD_EMMETT, SuperNerdEmmettSeenText, SuperNerdEmmettBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SuperNerdEmmettAfterBattleText
	waitbutton
	closetext
	end

SuperNerdEmmettSeenText:
	text "I wish I had"
	line "something clever"
	cont "to say before we"
	roll "battle…"
	done

SuperNerdEmmettBeatenText:
	text "I got it!"
	line "Huh? It's over?"
	done

SuperNerdEmmettAfterBattleText:
	text "I'll have a clever"
	line "intro for my next"
	cont "battle!"
	done

TrainerCooltrainerFElla:
	trainer COOLTRAINERF, ELLA, EVENT_BEAT_COOLTRAINERF_ELLA, CooltrainerFEllaSeenText, CooltrainerFEllaBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext CooltrainerFEllaAfterBattleText
	waitbutton
	closetext
	end

CooltrainerFEllaSeenText:
	text "Every battle makes"
	line "me and my #MON"
	cont "sharper!"
	done

CooltrainerFEllaBeatenText:
	text "Thank you."
	done

CooltrainerFEllaAfterBattleText:
	text "Win or lose, every"
	line "battle makes us"
	cont "stronger!"
	done


; npc
SSAnneRooms2FGentleman1Script:
	faceplayer
	opentext
	writetext SSAnneRooms2FGentleman1Text
	promptbutton
	closetext
	refreshscreen
	pokepic SNORLAX
	waitbutton
	closepokepic
	closetext
	end

SSAnneRooms2FGentleman1Text:
	text "In all my travels"
	line "I've never seen"
	cont "any #MON sleep"
	roll "like this one!"

	para "It was something"
	line "like this!"
	done

;SSAnneRooms2FGrampsScript:
;	jumptextfaceplayer SSAnneRooms2FGrampsText
;SSAnneRooms2FGrampsText:
;	text "#MON can CUT"
;	line "down small bushes."
;	done

SSAnneRooms2FGentleman2Script:
	jumptextfaceplayer SSAnneRooms2FGentleman2Text
SSAnneRooms2FGentleman2Text:
	text "Ah yes, I have"
	line "seen some #MON"
	cont "ferry people"
	roll "across the water!"
	done

SSAnneRooms2FGentleman3Script:
	jumptextfaceplayer SSAnneRooms2FGentleman3Text
SSAnneRooms2FGentleman3Text:
	text "Have you gone to"
	line "the SAFARI ZONE"
	cont "in FUCHSIA CITY?"

	para "It had many rare"
	line "kinds of #MON!!"
	done

SSAnneRooms2FBoyScript:
	jumptextfaceplayer SSAnneRooms2FBoyText
SSAnneRooms2FBoyText:
	text "Me and my Daddy"
	line "think the SAFARI"
	cont "ZONE is awesome!"
	done

SSAnneRooms2FBeautyScript:
	jumptextfaceplayer SSAnneRooms2FBeautyText
SSAnneRooms2FBeautyText:
	text "The CAPTAIN looked"
	line "really sick and"
	cont "pale!"
	done

;SSAnneRooms2FLassScript:
;	jumptextfaceplayer SSAnneRooms2FLassText
;SSAnneRooms2FLassText:
;	text "I hear many people"
;	line "get seasick!"
;	done

; item balls
SSAnneRooms2FMaxEther:
	itemball MAX_ETHER

SSAnneRooms2FRareCandy:
	itemball RARE_CANDY

SSAnneRooms2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, SS_ANNE_2F, 4 ; 1
	warp_event  3,  7, SS_ANNE_2F, 4 ;2
	warp_event 10,  7, SS_ANNE_2F, 5 ; 3
	warp_event 11,  7, SS_ANNE_2F, 5 ;4
	warp_event 18,  7, SS_ANNE_2F, 6 ; 5
	warp_event 19,  7, SS_ANNE_2F, 6 ;6
	warp_event 26,  7, SS_ANNE_2F, 7 ; 7
	warp_event 27,  7, SS_ANNE_2F, 7 ;8
	warp_event 34,  7, SS_ANNE_2F, 8 ; 9
	warp_event 35,  7, SS_ANNE_2F, 8 ;10

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  4, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerGentlemanGregory, EVENT_SSANNE_FIRST_VISIT_NPCS
	object_event  3,  5, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerFisherJustin, EVENT_SSANNE_FIRST_VISIT_NPCS
	object_event 18,  3, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerLassEllen, EVENT_SSANNE_FIRST_VISIT_NPCS
	object_event 16,  6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerGentlemanWesley, EVENT_SSANNE_FIRST_VISIT_NPCS
;rematch trainers
	object_event  0,  7, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerGentlemanAlfred, EVENT_SSANNE_TRAINERS_1C
	object_event 10,  3, SPRITE_BEAUTY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerBeautyAdeline, EVENT_SSANNE_TRAINERS_2C
	object_event 17,  4, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 0, TrainerCoolDuoZacAndJen_Zac, EVENT_SSANNE_TRAINERS_3C
	object_event 17,  5, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerCoolDuoZacAndJen_Jen, EVENT_SSANNE_TRAINERS_3C
	object_event 33,  3, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_TRAINER, 1, TrainerSuperNerdEmmett, EVENT_SSANNE_TRAINERS_3A
	object_event 33,  5, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerCooltrainerFElla, EVENT_SSANNE_TRAINERS_5C
; npcs
	object_event  9,  3, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SSAnneRooms2FGentleman1Script, EVENT_SSANNE_FIRST_VISIT_NPCS
	object_event  8,  5, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SSAnneRooms2FGentleman2Script, EVENT_SSANNE_FIRST_VISIT_NPCS
	object_event 26,  3, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, SSAnneRooms2FGentleman3Script, EVENT_SSANNE_TRAINERS_4C
	object_event 25,  5, SPRITE_BOY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnneRooms2FBoyScript, EVENT_SSANNE_TRAINERS_4C
	object_event 32,  4, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, SSAnneRooms2FBeautyScript, EVENT_SSANNE_FIRST_VISIT_NPCS
	object_event  2,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SSAnneRooms2FMaxEther, EVENT_SS_ANNE_ROOMS_2F_MAX_ETHER
	object_event 16,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SSAnneRooms2FRareCandy, EVENT_SS_ANNE_ROOMS_2F_RARE_CANDY
