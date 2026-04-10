	object_const_def
	const UNIONCAVE1F_KANGASKHAN
	const UNIONCAVE1F_GEODUDE

UnionCave1F_MapScripts:
	def_scene_scripts

	def_callbacks

; scripts
UnionCave1FGeodude:
	faceplayer
	opentext
	writetext UnionCave1FGeodudeText
	cry GEODUDE
	promptbutton
	closetext
	playsound SFX_TACKLE
	applymovement UNIONCAVE1F_KANGASKHAN, UnionCave1FKangaskhanAttackMovement
;	earthquake 20
	applymovement UNIONCAVE1F_GEODUDE, UnionCave1FRockSmashMovement
	disappear UNIONCAVE1F_GEODUDE
	appear UNIONCAVE1F_GEODUDE
	showemote EMOTE_SHOCK, PLAYER, 15
	opentext
	writetext UnionCave1FGeodudeGotHit
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse .Set1
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	iffalse .Set2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	iffalse .Set3
;	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_4
;	iffalse .Set4
	promptbutton
	cry GEODUDE
	waitsfx
;	playsound SFX_FAINT
;	waitsfx
	playsound SFX_BALL_POOF
	applymovement UNIONCAVE1F_GEODUDE, UnionCave1FRockSmashMovement
	disappear UNIONCAVE1F_GEODUDE
;	waitsfx
	pause 10
	writetext UnionCave1FGeodudeFainted
	waitbutton
	closetext
;	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_5
	setevent EVENT_ROUTE_36_OPEN
	clearevent EVENT_ROUTE_36_BATTLE
	end

;.Set4
;	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_4
.Set3
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
.Set2
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
.Set1
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
;	turnobject UNIONCAVE1F_GEODUDE, RIGHT ;(I think the sprite gets reset facing right when it is "appear")
	waitbutton
	closetext
	end

UnionCave1FGeodudeText:
	text "GEODUDE: Geo?"
	done

UnionCave1FGeodudeGotHit:
	text "GEODUDE got hit"
	line "because it was"
	cont "distracted."
	done

UnionCave1FGeodudeFainted:
	text "GOEDUDE fainted!"
	done

UnionCave1FKangaskhanAttackMovement:
	fix_facing
	big_step LEFT
	big_step RIGHT
	remove_fixed_facing
	step_end

UnionCave1FRockSmashMovement:
	rock_smash 10
	step_end

UnionCave1FBlockingHiker:
	checkevent EVENT_ROUTE_36_OPEN
	iftrue .GeodudeFainted
	playsound SFX_TACKLE
	applymovement UNIONCAVE1F_KANGASKHAN, UnionCave1FKangaskhanAttackMovement
	opentext
	writetext UnionCave1FHikerToGeodudeText
	playsound SFX_TACKLE
	applymovement UNIONCAVE1F_GEODUDE, UnionCave1FGeodudeAttackMovement
	faceplayer
	writetext UnionCave1FHikerToPlayerText
	waitbutton
	closetext
	turnobject LAST_TALKED, UP
	end

.GeodudeFainted
	jumptextfaceplayer UnionCave1FHikerDudeText

UnionCave1FHikerToGeodudeText:
	text "Hang in there,"
	line "GEODUDE!"

	para "Use TACKLE!"
	done

UnionCave1FGeodudeAttackMovement:
	fix_facing
	big_step RIGHT
	big_step LEFT
	remove_fixed_facing
	step_end

UnionCave1FHikerToPlayerText:
	text "Don't distract us!"
	done

UnionCave1FHikerDudeText:
	text "Dude…"
	line "Why?"
	done

UnionCave1FBlockingPokemaniac:
	checkevent EVENT_ROUTE_36_OPEN
	iftrue .KangaskhanWon
	faceplayer
	opentext
	writetext UnionCave1FPokemaniacBattleText
	waitbutton
	closetext
	turnobject LAST_TALKED, DOWN	
	end

.KangaskhanWon
	jumptextfaceplayer UnionCave1FPokemaniacWonText

UnionCave1FPokemaniacBattleText:
	text "I need to focus"
	line "on this battle."
	done

UnionCave1FPokemaniacWonText:
	text "Way to go!"
	line "KANGASKHAN!"
	done

UnionCave1FKangaskhan:
	opentext
	writetext UnionCave1FKangaskhanText
	cry KANGASKHAN
	waitbutton
	closetext
	end

UnionCave1FKangaskhanText:
	text "KANGASKHAN: Khan!"
	line "Shuaan!"
	done

; trainers
TrainerPokemaniacMicah:
	trainer POKEMANIAC, MICAH, EVENT_BEAT_POKEMANIAC_MICAH, PokemaniacMicahSeenText, PokemaniacMicahBeatenText, 0, .Script
.Script:
;	endifjustbattled
	opentext
	writetext PokemaniacMicahAfterBattleText
	waitbutton
	closetext
	end

PokemaniacMicahSeenText:
	text "My last battle was"
	line "great!"

	para "I'm ready for"
	line "another one!"
	done

PokemaniacMicahBeatenText:
	text "Ugh. My poor #-"
	line "MON…"
	done

PokemaniacMicahAfterBattleText:
	text "Every Friday, you"
	line "can hear #MON"
	cont "roars from deep"
	roll "inside the cave."
	done

TrainerHikerDiego:
	trainer HIKER, DIEGO, EVENT_BEAT_HIKER_DIEGO, HikerDiegoSeenText, HikerDiegoBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext HikerDiegoAfterBattleText
	waitbutton
	closetext
	end

HikerDiegoSeenText:
	text "Let my #MON see"
	line "how good you are."
	done

HikerDiegoBeatenText:
	text "Oh, oh, oh!"
	done

HikerDiegoAfterBattleText:
	text "All right, then!"
	line "I've decided."

	para "I'm not leaving"
	line "until my #MON"
	cont "get tougher!"
	done

TrainerFirebreatherLeo:
	trainer FIREBREATHER, LEO, EVENT_BEAT_FIREBREATHER_LEO, FirebreatherLeoSeenText, FirebreatherLeoBeatenText, 0, .Script
.Script:
;	endifjustbattled
	opentext
	writetext FirebreatherLeoAfterBattleText
	waitbutton
	closetext
	end

FirebreatherLeoSeenText:
	text "ZUBAT's SUPERSONIC"
	line "keeps confusing"
	cont "my #MON."

	para "I'm seriously"
	line "upset about that!"
	done

FirebreatherLeoBeatenText:
	text "I flamed out!"
	done

FirebreatherLeoAfterBattleText:
	text "On weekends, you"
	line "can hear strange"
	cont "roars from deep in"
	roll "the cave."
	done

TrainerFirebreatherAlex:
	trainer FIREBREATHER, ALEX, EVENT_BEAT_FIREBREATHER_ALEX, FirebreatherAlexSeenText, FirebreatherAlexBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext FirebreatherAlexAfterBattleText
	waitbutton
	closetext
	end

FirebreatherAlexSeenText:
	text "If it's light, a"
	line "cave isn't scary."

	para "If you're strong,"
	line "#MON aren't"
	cont "scary."
	done

FirebreatherAlexBeatenText:
	text "FLASH!"
	done

FirebreatherAlexAfterBattleText:
	text "It's my #MON's"
	line "fire that lights"
	cont "up this cave."
	done

; npc
HikerRussellScript:
	jumptextfaceplayer UnionCave1FHikerRusselText
UnionCave1FHikerRusselText:
	text "I'm wiped out from"
	line "my last battle."

	para "I'm not up for"
	line "another one yet."
	done

; items
UnionCave1FUltraBall:
	itemball ULTRA_BALL

UnionCave1FMaxPotion:
	itemball MAX_POTION

UnionCave1FRareCandy:
	itemball RARE_CANDY

UnionCave1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 19, UNION_CAVE_B1F, 3
	warp_event  3, 33, UNION_CAVE_B1F, 4
	warp_event 17, 31, ROUTE_33, 1
	warp_event 17,  3, ROUTE_32, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event 17, 14, SPRITE_KANGASKHAN_MOVE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, UnionCave1FKangaskhan, EVENT_ROUTE_36_OPEN
	object_event 16, 14, SPRITE_GEODUDE_MOVE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_SCRIPT, 0, UnionCave1FGeodude, EVENT_ROUTE_36_OPEN
	object_event 16, 15, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, UnionCave1FBlockingHiker, EVENT_ROUTE_36_OPEN
	object_event 17, 13, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, UnionCave1FBlockingPokemaniac, EVENT_ROUTE_36_OPEN
	object_event 11,  8, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerPokemaniacMicah, EVENT_ROUTE_36_BATTLE ;larry
	object_event  3,  6, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerHikerDiego, -1 ;daniel
	object_event  4, 21, SPRITE_FISHER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerFirebreatherLeo, -1 ;bill
	object_event  9, 27, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerFirebreatherAlex, -1 ;ray
	object_event 14, 18, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, HikerRussellScript, EVENT_ROUTE_36_BATTLE ;russel
	object_event 17, 21, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, UnionCave1FUltraBall, EVENT_UNION_CAVE_1F_ULTRA_BALL
	object_event  4,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, UnionCave1FMaxPotion, EVENT_UNION_CAVE_1F_MAX_POTION
	object_event 12, 33, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, UnionCave1FRareCandy, EVENT_UNION_CAVE_1F_RARE_CANDY

;.GreyOverYellowOBPalette