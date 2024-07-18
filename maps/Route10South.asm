	object_const_def

Route10South_MapScripts:
	def_scene_scripts

	def_callbacks

;TrainerPokemaniacBrent:
;	trainer POKEMANIAC, BRENT1, EVENT_BEAT_POKEMANIAC_BRENT, PokemaniacBrentSeenText, PokemaniacBrentBeatenText, 0, .Script
;.Script:
;	endifjustbattled
;	opentext
;	writetext PokemaniacBrentAfterBattleText
;	waitbutton
;	closetext
;	end
;
;PokemaniacBrentSeenText:
;	text "Wow, are you a"
;	line "#MANIAC too?"
;	cont "Want to see my"
;	cont "collection?"
;	done
;
;PokemaniacBrentBeatenText:
;	text "Humph."
;	line "I'm not angry!"
;	done
;
;PokemaniacBrentAfterBattleText:
;	text "I have more rare"
;	line "#MON at home!"
;	done

TrainerPicnickerErin:
	trainer PICNICKER, ERIN1, EVENT_BEAT_PICNICKER_ERIN, PicnickerErinSeenText, PicnickerErinBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext PicnickerErinAfterBattleText
	waitbutton
	closetext
	end

PicnickerErinSeenText:
	text "I'm feeling a bit"
	line "faint from this"
	cont "tough hike."
	done

PicnickerErinBeatenText:
	text "I'm"
	line "not up to it!"
	done

PicnickerErinAfterBattleText:
	text "The #MON here"
	line "are so chunky!"
	cont "There should be a"
	cont "pink one with a"
	cont "floral pattern!"
	done

TrainerHikerJim:
	trainer HIKER, JIM, EVENT_BEAT_HIKER_JIM, HikerJimSeenText, HikerJimBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext HikerJimAfterBattleText
	waitbutton
	closetext
	end

HikerJimSeenText:
	text "Ha-hahah-ah-ha!"
	done

HikerJimBeatenText:
	text "Ha-haha!"
	line "Not laughing!"
	cont "Ha-hay fever!"
	cont "Haha-ha-choo!"
	done

HikerJimAfterBattleText:
	text "Haha-ha-choo!"
	line "Ha-choo!"
	cont "Snort! Snivel!"
	done

TrainerHikerTimothy:
	trainer HIKER, TIMOTHY, EVENT_BEAT_HIKER_TIMOTHY, HikerTimothySeenText, HikerTimothyBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext HikerTimothyAfterBattleText
	waitbutton
	closetext
	end

HikerTimothySeenText:
	text "Ah! This mountain"
	line "air is delicious!"
	done

HikerTimothyBeatenText:
	text "That"
	line "cleared my head!"
	done

HikerTimothyAfterBattleText:
	text "I feel bloated on"
	line "mountain air!"
	done

TrainerPokemaniacLarry:
	trainer POKEMANIAC, LARRY, EVENT_BEAT_POKEMANIAC_LARRY, PokemaniacLarrySeenText, PokemaniacLarryBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext PokemaniacLarryAfterBattleText
	waitbutton
	closetext
	end

PokemaniacLarrySeenText:
	text "Hi kid, want to"
	line "see my #MON?"
	done

PokemaniacLarryBeatenText:
	text "Oh no!"
	line "My #MON!"
	done

PokemaniacLarryAfterBattleText:
	text "I don't like you"
	line "for beating me!"
	done

; signs
Route10Sign:
	jumptext Route10SignText
Route10SignText:
	text "ROUTE 10"

	para "CERULEAN CITY -"
	line "LAVENDER TOWN"
	done

;PowerPlantSign:
;	jumptext PowerPlantSignText
;PowerPlantSignText:
;	text "KANTO POWER PLANT"
;	done
;
;Route10SouthRock:
;	jumpstd SmashRockScript

; hidden items
Route10HiddenMaxEther:
	hiddenitem MAX_ETHER, EVENT_ROUTE_10_HIDDEN_MAX_ETHER

Route10South_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  8,  3, ROCK_TUNNEL_1F, 2

	def_coord_events

	def_bg_events
;	bg_event  3, 11, BGEVENT_READ, PowerPlantSign
	bg_event  9,  5, BGEVENT_READ, Route10Sign
	bg_event 16,  3, BGEVENT_ITEM, Route10HiddenMaxEther

	def_object_events
;	object_event 10, 14, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerPokemaniacBrent, -1
	object_event  7,  4, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerPicnickerErin, -1
	object_event  3,  7, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerHikerJim, -1
	object_event  3, 11, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerHikerTimothy, -1
	object_event 12, 14, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerPokemaniacLarry, -1
;	object_event 14,  6, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route10SouthRock, -1
;	object_event 15,  7, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route10SouthRock, -1
;	object_event 14,  9, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route10SouthRock, -1
