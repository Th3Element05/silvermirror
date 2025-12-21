	object_const_def

UnionCaveB1F_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerPokemaniacJude:
	trainer POKEMANIAC, JUDE, EVENT_BEAT_POKEMANIAC_JUDE, PokemaniacJudeSeenText, PokemaniacJudeBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext PokemaniacJudeAfterBattleText
	waitbutton
	closetext
	end

PokemaniacJudeSeenText:
	text "I came all the way"
	line "here to conduct my"
	cont "#MON research."

	para "Let me demonstrate"
	line "my findings in a"
	cont "real battle!"
	done

PokemaniacJudeBeatenText:
	text "You demonstrated"
	line "on me!"
	done

PokemaniacJudeAfterBattleText:
	text "I should compile"
	line "and announce my"
	cont "study findings."

	para "I might even be-"
	line "come famous like"
	cont "PROF.ELM."
	done

TrainerHikerLeonel:
	trainer HIKER, LEONEL, EVENT_BEAT_HIKER_LEONEL, HikerLeonelSeenText, HikerLeonelBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext HikerLeonelAfterBattleText
	waitbutton
	closetext
	end

HikerLeonelSeenText:
	text "What do you know!"
	line "A visitor!"
	done

HikerLeonelBeatenText:
	text "Wahahah! You're a"
	line "feisty one!"
	done

HikerLeonelAfterBattleText:
	text "I live down here."

	para "You can, too, if"
	line "you'd like."

	para "There's plenty of"
	line "room, you see."
	done

TrainerPokemaniacCarson:
	trainer POKEMANIAC, CARSON, EVENT_BEAT_POKEMANIAC_CARSON, PokemaniacCarsonSeenText, PokemaniacCarsonBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext PokemaniacCarsonAfterBattleText
	waitbutton
	closetext
	end

PokemaniacCarsonSeenText:
	text "Who's there?"

	para "Leave me and my"
	line "#MON alone!"
	done

PokemaniacCarsonBeatenText:
	text "Go…"
	line "Go away!"
	done

PokemaniacCarsonAfterBattleText:
	text "Just me and my"
	line "#MON. I'm de-"
	cont "lirious with joy."
	done

;TrainerHikerPhillip:
;	trainer HIKER, PHILLIP, EVENT_BEAT_HIKER_PHILLIP, HikerPhillipSeenText, HikerPhillipBeatenText, 0, .Script
;.Script:
;	endifjustbattled
;	opentext
;	writetext HikerPhillipAfterBattleText
;	waitbutton
;	closetext
;	end

;HikerPhillipSeenText:
;	text "It's been a while"
;	line "since I last saw"
;	cont "another person."
;
;	para "Don't be shy."
;	line "Let's battle!"
;	done
;
;HikerPhillipBeatenText:
;	text "Uurggh…"
;	done
;
;HikerPhillipAfterBattleText:
;	text "I've been lost for"
;	line "a long time…"
;
;	para "I don't mind it"
;	line "here, but I am"
;	cont "soooo hungry!"
;	done

;UnionCaveB1FTMSwift:
;	itemball TM_SWIFT

UnionCaveB1FXDefend:
	itemball X_DEFEND

UnionCaveB1FBoulder:
	jumpstd StrengthBoulderScript

UnionCaveB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  3, RUINS_OF_ALPH_OUTSIDE, 6
	warp_event  3, 11, RUINS_OF_ALPH_OUTSIDE, 7
	warp_event  7, 19, UNION_CAVE_1F, 1
	warp_event  3, 33, UNION_CAVE_1F, 2
	warp_event 17, 31, UNION_CAVE_B2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  9,  4, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerPokemaniacJude, -1 ;calvin
	object_event 16,  7, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerHikerLeonel, -1 ;leonard
	object_event 12, 22, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerPokemaniacCarson, -1 ;andrew
;	object_event  9,  4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerHikerPhillip, -1 ;phillip
;	object_event  2, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, UnionCaveB1FTMSwift, EVENT_UNION_CAVE_B1F_TM_SWIFT
	object_event  7, 10, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnionCaveB1FBoulder, -1
	object_event 17, 23, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, UnionCaveB1FXDefend, EVENT_UNION_CAVE_B1F_X_DEFEND
