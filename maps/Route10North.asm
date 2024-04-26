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

Route10NorthRockTunnelSign:
	jumptext Route10NorthRockTunnelSignText
Route10NorthRockTunnelSignText:
	text "ROCK TUNNEL"
	done

Route10PokecenterSign:
	jumpstd PokecenterSignScript

; hidden items
Route10HiddenSuperPotion:
	hiddenitem SUPER_POTION, EVENT_ROUTE_10_HIDDEN_SUPER_POTION

Route10North_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11, 19, ROUTE_10_POKECENTER_1F, 1
	warp_event  8, 17, ROCK_TUNNEL_1F, 1

	def_coord_events

	def_bg_events
	bg_event  7, 19, BGEVENT_READ, Route10NorthRockTunnelSign
	bg_event 12, 19, BGEVENT_READ, Route10PokecenterSign
	bg_event  9, 17, BGEVENT_ITEM, Route10HiddenSuperPotion

	def_object_events
	object_event  7, 25, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerPicnickerAzriel, -1
