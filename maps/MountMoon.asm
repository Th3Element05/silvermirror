	object_const_def

MountMoon_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerLassLinda:
	trainer LASS, LINDA, EVENT_BEAT_LASS_LINDA, LassLindaSeenText, LassLindaBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext LassLindaAfterBattleText
	waitbutton
	closetext
	end

LassLindaSeenText:
	text "Wow! It's way"
	line "bigger in here"
	cont "than I thought!"
	done

LassLindaBeatenText:
	text "Oh!"
	line "I lost it!"
	done

LassLindaAfterBattleText::
	text "How do you get"
	line "out of here?"
	done

TrainerHikerDaniel:
	trainer HIKER, DANIEL, EVENT_BEAT_HIKER_DANIEL, HikerDanielSeenText, HikerDanielBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext HikerDanielAfterBattleText
	waitbutton
	closetext
	end

HikerDanielSeenText:
	text "WHOA! You shocked"
	line "me! Oh, you're"
	cont "just a kid!"
	done

HikerDanielBeatenText:
	text "Wow!"
	line "Shocked again!"
	done

HikerDanielAfterBattleText:
	text "Kids like you"
	line "shouldn't be"
	cont "here!"
	done

TrainerYoungsterGordon:
	trainer YOUNGSTER, GORDON, EVENT_BEAT_YOUNGSTER_GORDON, YoungsterGordonSeenText, YoungsterGordonBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext YoungsterGordonAfterBattleText
	waitbutton
	closetext
	end

YoungsterGordonSeenText:
	text "Did you come to"
	line "explore too?"
	done

YoungsterGordonBeatenText:
	text "Losing"
	line "stinks!"
	done

YoungsterGordonAfterBattleText:
	text "I came down here"
	line "to show off to"
	cont "girls."
	done

TrainerBugCatcherDane:
	trainer BUG_CATCHER, DANE, EVENT_BEAT_BUG_CATCHER_DANE, BugCatcherDaneSeenText, BugCatcherDaneBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext BugCatcherDaneAfterBattleText
	waitbutton
	closetext
	end

BugCatcherDaneSeenText:
	text "Suspicious men"
	line "are in the cave."
	cont "What about you?"
	done

BugCatcherDaneBeatenText:
	text "You"
	line "got me!"
	done

BugCatcherDaneAfterBattleText:
	text "I saw them! I'm"
	line "sure they're from"
	cont "TEAM ROCKET!"
	done

TrainerLassKrise:
	trainer LASS, KRISE1, EVENT_BEAT_LASS_KRISE, LassKriseSeenText, LassKriseBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext LassKriseAfterBattleText
	waitbutton
	closetext
	end

LassKriseSeenText:
	text "What? I'm waiting"
	line "for my friends to"
	cont "find me here."
	done

LassKriseBeatenText:
	text "I lost?"
	done

LassKriseAfterBattleText:
	text "I heard there are"
	line "some very rare"
	cont "fossils here."
	done

TrainerBugCatcherKen:
	trainer BUG_CATCHER, KEN, EVENT_BEAT_BUG_CATCHER_KEN, BugCatcherKenSeenText, BugCatcherKenBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext BugCatcherKenAfterBattleText
	waitbutton
	closetext
	end

BugCatcherKenSeenText:
	text "Go through this"
	line "cave to get to"
	cont "CERULEAN CITY!"
	done

BugCatcherKenBeatenText:
	text "I"
	line "lost."
	done

BugCatcherKenAfterBattleText:
	text "ZUBAT is tough!"
	line "But, it can be"
	cont "useful if you"
	cont "catch one."
	done

TrainerSuperNerdEric:
	trainer SUPER_NERD, ERIC, EVENT_BEAT_SUPER_NERD_ERIC, SuperNerdEricSeenText, SuperNerdEricBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SuperNerdEricAfterBattleText
	waitbutton
	closetext
	end

SuperNerdEricSeenText:
	text "What! Don't sneak"
	line "up on me!"
	done

SuperNerdEricBeatenText:
	text "My #MON"
	line "won't do!"
	done

SuperNerdEricAfterBattleText:
	text "I have to find"
	line "stronger #MON."
	done

MtMoonMoonStone:
	itemball MOON_STONE

MtMoonPotion1:
	itemball POTION

MtMoonEscapeRope:
	itemball ESCAPE_ROPE

MtMoonRareCandy:
	itemball RARE_CANDY

MtMoonTM12WaterGun:
	itemball TM_WATER_GUN

MtMoonPotion2:
	itemball POTION

MtMoonRock:
	jumpstd SmashRockScript

MtMoonZubatSign:
	jumptext MtMoonZubatSignText
MtMoonZubatSignText:
	text "Beware! ZUBAT is"
	line "a blood sucker!"
	done

MountMoon_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  5, MOUNT_MOON, 5        ; 1
	warp_event 15,  9, MOUNT_MOON, 9        ; 2
	warp_event 25, 15, MOUNT_MOON, 6        ; 3
	warp_event 13, 33, ROUTE_3, 1           ; 4
	warp_event  3, 39, MOUNT_MOON, 1        ; 5
	warp_event 21, 41, MOUNT_MOON, 3        ; 6
	warp_event 29, 41, MOUNT_MOON_SQUARE, 1 ; 7
	warp_event 13, 43, MOUNT_MOON_B2F, 3    ; 8
	warp_event  7, 49, MOUNT_MOON, 2        ; 9
	warp_event 29, 49, MOUNT_MOON_B2F, 1    ; 10
	warp_event  3, 51, MOUNT_MOON_B2F, 2    ; 11
	warp_event 13, 51, MOUNT_MOON_B2F, 4    ; 12
	warp_event 35, 51, ROUTE_4, 1           ; 13

	def_coord_events

	def_bg_events
	bg_event 14, 21, BGEVENT_READ, MtMoonZubatSign

	def_object_events
	object_event 30,  4, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerLassLinda, -1
	object_event  5,  6, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerHikerDaniel, -1
	object_event 10, 12, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerYoungsterGordon, -1
	object_event  7, 20, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherDane, -1
	object_event 15, 21, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerLassKrise, -1
	object_event 30, 27, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerBugCatcherKen, -1
	object_event 24, 31, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_TRAINER, 3, TrainerSuperNerdEric, -1
	object_event  3,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MtMoonMoonStone, EVENT_MT_MOON_MOON_STONE
	object_event  2, 19, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MtMoonPotion1, EVENT_MT_MOON_POTION1
	object_event 36, 23, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MtMoonEscapeRope, EVENT_MT_MOON_ESCAPE_ROPE
	object_event 35, 31, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MtMoonRareCandy, EVENT_MT_MOON_RARE_CANDY
	object_event  4, 32, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, MtMoonTM12WaterGun, EVENT_MT_MOON_TM12_WATER_GUN
	object_event 20, 33, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MtMoonPotion2, EVENT_MT_MOON_POTION2
	object_event 33, 45, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MtMoonRock, -1
;	object_event 36, 48, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MtMoonRock, -1
