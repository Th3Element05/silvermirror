	object_const_def

RockTunnel1F_MapScripts:
	def_scene_scripts

	def_callbacks
;	callback MAPCALLBACK_TILES, .RockTunnelLadderCallback
;
;.RockTunnelLadderCallback:
;	checkevent EVENT_GOT_HM05_FLASH
;	iftrue .Skip
;	changeblock 26, 8, $1e ; rocks
;.Skip
;	endcallback

TrainerHikerBailey:
	trainer HIKER, BAILEY, EVENT_BEAT_HIKER_BAILEY, HikerBaileySeenText, HikerBaileyBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext HikerBaileyAfterBattleText
	waitbutton
	closetext
	end

HikerBaileySeenText:
	text "This tunnel goes"
	line "a long way, kid!"
	done

HikerBaileyBeatenText:
	text "Doh!"
	line "You win!"
	done

HikerBaileyAfterBattleText:
	text "Watch for ONIX!"
	line "It can put the"
	cont "squeeze on you!"
	done

TrainerPokemaniacAndrew:
	trainer POKEMANIAC, ANDREW, EVENT_BEAT_POKEMANIAC_ANDREW, PokemaniacAndrewSeenText, PokemaniacAndrewBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext PokemaniacAndrewAfterBattleText
	waitbutton
	closetext
	end

PokemaniacAndrewSeenText:
	text "#MON fight!"
	line "Ready, go!"
	done

PokemaniacAndrewBeatenText:
	text "Game"
	line "over!"
	done

PokemaniacAndrewAfterBattleText:
	text "Oh well, I'll get"
	line "a ZUBAT as I go!"
	done

TrainerHikerNoland:
	trainer HIKER, NOLAND, EVENT_BEAT_HIKER_NOLAND, HikerNolandSeenText, HikerNolandBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext HikerNolandAfterBattleText
	waitbutton
	closetext
	end

HikerNolandSeenText:
	text "Hmm. Maybe I'm"
	line "lost in here..."
	done

HikerNolandBeatenText:
	text "Ease up!"
	line "What am I doing?"
	cont "Which way is out?"
	done

HikerNolandAfterBattleText:
	text "That sleeping"
	line "#MON on ROUTE"
	cont "12 forced me to"
	cont "take this detour."
	done

TrainerHikerTim:
	trainer HIKER, TIM, EVENT_BEAT_HIKER_TIM, HikerTimSeenText, HikerTimBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext HikerTimAfterBattleText
	waitbutton
	closetext
	end

HikerTimSeenText:
	text "Outsiders like"
	line "you need to show"
	cont "me some respect!"
	done

HikerTimBeatenText:
	text "I give!"
	done

HikerTimAfterBattleText:
	text "You're talented"
	line "enough to hike!"
	done

TrainerPicnickerEdna:
	trainer PICNICKER, EDNA, EVENT_BEAT_PICNICKER_EDNA, PicnickerEdnaSeenText, PicnickerEdnaBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext PicnickerEdnaAfterBattleText
	waitbutton
	closetext
	end

PicnickerEdnaSeenText:
	text "Eek! Don't try"
	line "anything funny in"
	cont "the dark!"
	done

PicnickerEdnaBeatenText:
	text "It"
	line "was too dark!"
	done

PicnickerEdnaAfterBattleText:
	text "I saw a MACHOP"
	line "in this tunnel!"
	done

TrainerPicnickerKim:
	trainer PICNICKER, KIM, EVENT_BEAT_PICNICKER_KIM, PicnickerKimSeenText, PicnickerKimBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext PicnickerKimAfterBattleText
	waitbutton
	closetext
	end

PicnickerKimSeenText:
	text "You have #MON!"
	line "Let's start!"
	done

PicnickerKimBeatenText:
	text "You"
	line "play hard!"
	done

PicnickerKimAfterBattleText:
	text "Whew! I'm all"
	line "sweaty now!"
	done

TrainerPicnickerBrooke:
	trainer PICNICKER, BROOKE, EVENT_BEAT_PICNICKER_BROOKE, PicnickerBrookeSeenText, PicnickerBrookeBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext PicnickerBrookeAfterBattleText
	waitbutton
	closetext
	end

PicnickerBrookeSeenText:
	text "I came this far"
	line "for #MON!"
	done

PicnickerBrookeBeatenText:
	text "I'm"
	line "out of #MON!"
	done

PicnickerBrookeAfterBattleText:
	text "You looked cute"
	line "and harmless!"
	done

RockTunnel1FSign:
	jumptext RockTunnel1FSignText
RockTunnel1FSignText:
	text "ROCK TUNNEL"
	line "CERULEAN CITY -"
	cont "LAVENDER TOWN"
	done

; itemballs
RockTunnel1FHardStone:
	itemball HARD_STONE

RockTunnel1FRock:
	jumpstd SmashRockScript

RockTunnel1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 15,  5, ROUTE_10_NORTH, 2  ; 1
	warp_event 13, 29, ROUTE_10_SOUTH, 1  ; 2
	warp_event  5,  3, ROCK_TUNNEL_B1F, 3 ; 3
	warp_event 17, 11, ROCK_TUNNEL_B1F, 2 ; 4
	warp_event 31,  3, ROCK_TUNNEL_B1F, 4 ; 5
	warp_event 33, 15, ROCK_TUNNEL_B1F, 1 ; 6

	def_coord_events

	def_bg_events
	bg_event 12, 27, BGEVENT_READ, RockTunnel1FSign

	def_object_events
	object_event  7,  5, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerHikerBailey, -1
	object_event 21,  7, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 3, TrainerPokemaniacAndrew, -1
	object_event  4, 12, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerHikerNoland, -1
	object_event 18, 15, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerHikerTim, -1
	object_event 33, 18, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerPicnickerEdna, -1
	object_event 29, 21, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerPicnickerKim, -1
	object_event 20, 22, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerPicnickerBrooke, -1
	object_event 19, 17, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RockTunnel1FHardStone, EVENT_ROCK_TUNNEL_1F_HARD_STONE
	object_event 24, 12, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RockTunnel1FRock, -1
	object_event 26, 15, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RockTunnel1FRock, -1
