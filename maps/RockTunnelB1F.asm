	object_const_def

RockTunnelB1F_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerPokemaniacCalvin:
	trainer POKEMANIAC, CALVIN, EVENT_BEAT_POKEMANIAC_CALVIN, PokemaniacCalvinSeenText, PokemaniacCalvinBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext PokemaniacCalvinAfterBattleText
	waitbutton
	closetext
	end

PokemaniacCalvinSeenText:
	text "You have a"
	line "#DEX?"
	cont "I want one too!"
	done

PokemaniacCalvinBeatenText:
	text "Shoot!"
	line "I'm so jealous!"
	done

PokemaniacCalvinAfterBattleText:
	text "When you finish"
	line "your #DEX, can"
	cont "I have it?"
	done

TrainerHikerSidney:
	trainer HIKER, SIDNEY, EVENT_BEAT_HIKER_SIDNEY, HikerSidneySeenText, HikerSidneyBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext HikerSidneyAfterBattleText
	waitbutton
	closetext
	end

HikerSidneySeenText:
	text "Hit me with your"
	line "best shot!"
	done

HikerSidneyBeatenText:
	text "Fired"
	line "away!"
	done

HikerSidneyAfterBattleText:
	text "I'll raise my"
	line "#MON to beat"
	cont "yours, kid!"
	done

TrainerHikerWalter:
	trainer HIKER, WALTER, EVENT_BEAT_HIKER_WALTER, HikerWalterSeenText, HikerWalterBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext HikerWalterAfterBattleText
	waitbutton
	closetext
	end

HikerWalterSeenText:
	text "Hahaha! Can you"
	line "beat my power?"
	done

HikerWalterBeatenText:
	text "Oops!"
	line "Out-muscled!"
	done

HikerWalterAfterBattleText:
	text "I go for power"
	line "because I hate"
	cont "thinking!"
	done

TrainerHikerKenny:
	trainer HIKER, KENNY1, EVENT_BEAT_HIKER_KENNY, HikerKennySeenText, HikerKennyBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext HikerKennyAfterBattleText
	waitbutton
	closetext
	end

HikerKennySeenText:
	text "My #MON"
	line "techniques will"
	cont "leave you crying!"
	done

HikerKennyBeatenText:
	text "I give!"
	line "You're a better"
	cont "technician!"
	done

HikerKennyAfterBattleText:
	text "In mountains,"
	line "you'll often find"
	cont "rock-type #MON."
	done

TrainerPicnickerCindy:
	trainer PICNICKER, CINDY, EVENT_BEAT_PICNICKER_CINDY, PicnickerCindySeenText, PicnickerCindyBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext PicnickerCindyAfterBattleText
	waitbutton
	closetext
	end

PicnickerCindySeenText:
	text "Hikers leave twigs"
	line "as trail markers."
	done

PicnickerCindyBeatenText:
	text "Ohhh!"
	line "I did my best!"
	done

PicnickerCindyAfterBattleText:
	text "I want to go "
	line "home!"
	done

TrainerPokemaniacShane:
	trainer POKEMANIAC, SHANE, EVENT_BEAT_POKEMANIAC_SHANE, PokemaniacShaneSeenText, PokemaniacShaneBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext PokemaniacShaneAfterBattleText
	waitbutton
	closetext
	end

PokemaniacShaneSeenText:
	text "Do you know about"
	line "costume players?"
	done

PokemaniacShaneBeatenText:
	text "Well,"
	line "that's that."
	done

PokemaniacShaneAfterBattleText:
	text "Costume players"
	line "dress up as"
	cont "#MON for fun."
	done

TrainerPicnickerHope:
	trainer PICNICKER, HOPE, EVENT_BEAT_PICNICKER_HOPE, PicnickerHopeSeenText, PicnickerHopeBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext PicnickerHopeAfterBattleText
	waitbutton
	closetext
	end

PicnickerHopeSeenText:
	text "I don't often"
	line "come here, but I"
	cont "will fight you."
	done

PicnickerHopeBeatenText:
	text "Oh!"
	line "I lost!"
	done

PicnickerHopeAfterBattleText:
	text "I like tiny"
	line "#MON, big ones"
	cont "are too scary!"
	done

TrainerPokemaniacBen:
	trainer POKEMANIAC, BEN, EVENT_BEAT_POKEMANIAC_BEN, PokemaniacBenSeenText, PokemaniacBenBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext PokemaniacBenAfterBattleText
	waitbutton
	closetext
	end

PokemaniacBenSeenText:
	text "I draw #MON"
	line "when I'm home."
	done

PokemaniacBenBeatenText:
	text "Whew!"
	line "I'm exhausted!"
	done

PokemaniacBenAfterBattleText:
	text "I'm an artist,"
	line "not a fighter."
	done

RockTunnelB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  3, ROCK_TUNNEL_1F, 6 ; 1
	warp_event 21,  7, ROCK_TUNNEL_1F, 4 ; 2
	warp_event 27,  3, ROCK_TUNNEL_1F, 3 ; 3
	warp_event 31, 23, ROCK_TUNNEL_1F, 5 ; 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  5, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 3, TrainerPokemaniacCalvin, -1
	object_event 30,  4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerHikerSidney, -1
	object_event  7,  7, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerHikerWalter, -1
	object_event 29,  7, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerHikerKenny, -1
	object_event 12,  9, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerPicnickerCindy, -1
	object_event 18, 17, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 3, TrainerPokemaniacShane, -1
	object_event 12, 24, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerPicnickerHope, -1
	object_event 24, 26, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 3, TrainerPokemaniacBen, -1
