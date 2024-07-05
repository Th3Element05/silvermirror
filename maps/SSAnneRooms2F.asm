	object_const_def

SSAnneRooms2F_MapScripts:
	def_scene_scripts

	def_callbacks

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

; npc
SSAnneRooms2FGentleman1Script:
	jumptextfaceplayer SSAnneRooms2FGentleman1Text
SSAnneRooms2FGentleman1Text:
	text "In all my travels"
	line "I've never seen"
	cont "any #MON sleep"
	cont "like this one!"

	para "It was something"
	line "like this!"
	done

SSAnneRooms2FGrampsScript:
	jumptextfaceplayer SSAnneRooms2FGrampsText
SSAnneRooms2FGrampsText:
	text "#MON can CUT"
	line "down small bushes."
	done

SSAnneRooms2FGentleman2Script:
	jumptextfaceplayer SSAnneRooms2FGentleman2Text
SSAnneRooms2FGentleman2Text:
	text "Ah yes, I have"
	line "seen some #MON"
	cont "ferry people"
	cont "across the water!"
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

SSAnneRooms2FBugCatcherScript:
	jumptextfaceplayer SSAnneRooms2FBugCatcherText
SSAnneRooms2FBugCatcherText:
	text "Me and my Daddy"
	line "think the SAFARI"
	cont "ZONE is awesome!"
	done

SSAnneRooms2FBeautyScript:
	jumptextfaceplayer SSAnneRooms2FBeautyText
SSAnneRooms2FBeautyText:
	text "I hear many people"
	line "get seasick!"
	done

SSAnneRooms2FLassScript:
	jumptextfaceplayer SSAnneRooms2FLassText
SSAnneRooms2FLassText:
	text "The CAPTAIN looked"
	line "really sick and"
	cont "pale!"
	done

; item balls
SSAnneRooms2FMaxEther:
	itemball MAX_ETHER

SSAnneRooms2FRareCandy:
	itemball RARE_CANDY

SSAnneRooms2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  5, SS_ANNE_2F, 4 ; 1
	warp_event  3,  5, SS_ANNE_2F, 4 ; 2
	warp_event 12,  5, SS_ANNE_2F, 5 ; 3
	warp_event 13,  5, SS_ANNE_2F, 5 ; 4
	warp_event 22,  5, SS_ANNE_2F, 6 ; 5
	warp_event 23,  5, SS_ANNE_2F, 6 ; 6
	warp_event  2, 15, SS_ANNE_2F, 7 ; 7
	warp_event  3, 15, SS_ANNE_2F, 7 ; 8
	warp_event 12, 15, SS_ANNE_2F, 8 ; 9
	warp_event 13, 15, SS_ANNE_2F, 8 ; 10
	warp_event 22, 15, SS_ANNE_2F, 9 ; 11
	warp_event 23, 15, SS_ANNE_2F, 9 ; 12

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  2, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnneRooms2FGentleman1Script, -1
	object_event 10,  2, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerGentlemanGregory, -1
	object_event 13,  4, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerFisherJustin, -1
	object_event 22,  1, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnneRooms2FGrampsScript, -1
	object_event 21,  2, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnneRooms2FGentleman2Script, -1
	object_event  2, 11, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerLassEllen, -1
	object_event  0, 14, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerGentlemanWesley, -1
	object_event 12, 12, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnneRooms2FGentleman3Script, -1
	object_event 11, 14, SPRITE_BOY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnneRooms2FBugCatcherScript, -1
	object_event 20, 12, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnneRooms2FBeautyScript, -1
	object_event 22, 12, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnneRooms2FLassScript, -1
	object_event 12,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SSAnneRooms2FMaxEther, EVENT_SS_ANNE_ROOMS_2F_MAX_ETHER
	object_event  0, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SSAnneRooms2FRareCandy, EVENT_SS_ANNE_ROOMS_2F_RARE_CANDY
