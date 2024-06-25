	object_const_def

Route10North_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerPicnickerAzriel:
	trainer PICNICKER, AZRIEL, EVENT_BEAT_PICNICKER_AZRIEL, PicnickerAzrielSeenText, PicnickerAzrielBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext PicnickerAzrielAfterBattleText
	waitbutton
	closetext
	end

PicnickerAzrielSeenText:
	text "I've been to a"
	line "#MON GYM a few"
	cont "times. But, I"
	cont "lost each time."
	done

PicnickerAzrielBeatenText:
	text "Ohh!"
	line "Blew it again!"
	done

PicnickerAzrielAfterBattleText:
	text "I noticed some"
	line "#MANIACs"
	cont "prowling around."
	done

TrainerPokemaniacBrent:
	trainer POKEMANIAC, BRENT1, EVENT_BEAT_POKEMANIAC_BRENT, PokemaniacBrentSeenText, PokemaniacBrentBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext PokemaniacBrentAfterBattleText
	waitbutton
	closetext
	end

PokemaniacBrentSeenText:
	text "Wow, are you a"
	line "#MANIAC too?"
	cont "Want to see my"
	cont "collection?"
	done

PokemaniacBrentBeatenText:
	text "Humph."
	line "I'm not angry!"
	done

PokemaniacBrentAfterBattleText:
	text "I have more rare"
	line "#MON at home!"
	done

Route10NorthRockTunnelSign:
	jumptext Route10NorthRockTunnelSignText
Route10NorthRockTunnelSignText:
	text "ROCK TUNNEL"
	done

Route10PokecenterSign:
	jumpstd PokecenterSignScript

PowerPlantSign:
	jumptext PowerPlantSignText
PowerPlantSignText:
	text "KANTO POWER PLANT"
	done

Route10NorthRock:
	jumpstd SmashRockScript

; hidden items
Route10HiddenSuperPotion:
	hiddenitem SUPER_POTION, EVENT_ROUTE_10_HIDDEN_SUPER_POTION

Route10North_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11, 19, ROUTE_10_POKECENTER_1F, 1
	warp_event  6, 17, ROCK_TUNNEL_1F, 1
	warp_event  4, 37, POWER_PLANT, 1

	def_coord_events

	def_bg_events
	bg_event  7, 19, BGEVENT_READ, Route10NorthRockTunnelSign
	bg_event 12, 19, BGEVENT_READ, Route10PokecenterSign
	bg_event  3, 39, BGEVENT_READ, PowerPlantSign
	bg_event  9, 17, BGEVENT_ITEM, Route10HiddenSuperPotion

	def_object_events
	object_event  7, 25, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerPicnickerAzriel, -1
	object_event 10, 42, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerPokemaniacBrent, -1
;	object_event 14, 31, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route10NorthRock, -1
;	object_event 15, 32, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route10NorthRock, -1
;	object_event 14, 34, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route10NorthRock, -1
