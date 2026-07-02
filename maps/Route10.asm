	object_const_def

Route10_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, RockTunnelFlypointCallback

RockTunnelFlypointCallback:
	setflag ENGINE_FLYPOINT_ROCK_TUNNEL
	setmapscene CINNABAR_ISLAND, SCENE_CINNABARISLAND_NOOP
	callasm Route10ForceLandmarkSpecialAsm
	endcallback

Route10ForceLandmarkSpecialAsm:
	ld a, MAPGROUP_CERULEAN
	ld [wPrevMapGroup], a
	ld a, MAP_ROUTE_10
	ld [wPrevMapNumber], a
	ret

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
	ntag "PICNICKER:"
	text "I've been to a"
	line "#MON GYM a few"
	cont "times. But, I"
	roll "lost each time."
	done

PicnickerAzrielBeatenText:
	ntag "AZRIEL:"
	text "Ohh!"
	line "Blew it again!"
	done

PicnickerAzrielAfterBattleText:
	ntag "PICNICKER:"
	text "I noticed some"
	line "#MANIACs"
	cont "prowling around."
	done


TrainerPokemaniacBrent:
	trainer POKEMANIAC, BRENT1, EVENT_BEAT_POKEMANIAC_BRENT, PokemaniacBrentSeenText, PokemaniacBrentBeatenText, 0, .Script
.Script:
;	endifjustbattled
;	opentext
;	writetext PokemaniacBrentAfterBattleText
;	waitbutton
;	closetext
;	end

	loadvar VAR_CALLERID, PHONE_POKEMANIAC_BRENT
	opentext
	checkflag ENGINE_BRENT_READY_FOR_REMATCH
	iftrue .WantsBattle
	checkcellnum PHONE_POKEMANIAC_BRENT
	iftrue .BrentDefeated
	checkevent EVENT_BRENT_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedAlready
;	writetext PokemaniacBrentAfterBattleText
;	promptbutton
	setevent EVENT_BRENT_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	sjump .AskForNumber

.AskedAlready:
	scall .AskNumber2
.AskForNumber:
	askforphonenumber PHONE_POKEMANIAC_BRENT
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	gettrainername STRING_BUFFER_3, POKEMANIAC, BRENT1
	scall .RegisteredNumber
	sjump .NumberAccepted

.WantsBattle:
	scall .Rematch
	winlosstext PokemaniacBrentBeatenText, 0
	loadtrainer POKEMANIAC, BRENT_0
	checkflag ENGINE_FLYPOINT_INDIGO_PLATEAU
	iftrue .LoadFight
	loadtrainer POKEMANIAC, BRENT_2
	readvar VAR_BADGES
	ifgreater 3, .LoadFight ;4_BADGES
	loadtrainer POKEMANIAC, BRENT1
.LoadFight:
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_BRENT_READY_FOR_REMATCH
	end

.BrentDefeated:
	writetext PokemaniacBrentAfterBattleText
	promptbutton
	closetext
	end

.AskNumber1:
	jumpstd AskNumber1MScript
	end

.AskNumber2:
	jumpstd AskNumber2MScript
	end

.RegisteredNumber:
	jumpstd RegisteredNumberMScript
	end

.NumberAccepted:
	jumpstd NumberAcceptedMScript
	end

.NumberDeclined:
	jumpstd NumberDeclinedMScript
	end

.PhoneFull:
	jumpstd PhoneFullMScript
	end

.Rematch:
	jumpstd RematchMScript
	end

PokemaniacBrentSeenText:
	ntag "#MANIAC:"
	text "Wow, are you a"
	line "#MANIAC too?"
	cont "Want to see my"
	roll "collection?"
	done

PokemaniacBrentBeatenText:
	ntag "BRENT:"
	text "Humph."
	line "I'm not angry!"
	done

PokemaniacBrentAfterBattleText:
	ntag "BRENT:"
	text "I have more rare"
	line "#MON at home!"
	done


Route10RockTunnelSign:
	jumptext Route10RockTunnelSignText
Route10RockTunnelSignText:
	text "ROCK TUNNEL"
	done

Route10PokecenterSign:
	jumpstd PokecenterSignScript

PowerPlantSign:
	jumptext PowerPlantSignText
PowerPlantSignText:
	text "KANTO POWER PLANT"
	done

Route10Rock:
	jumpstd SmashRockScript

; itemballs
Route10Magnet:
	itemball MAGNET

; hidden items
Route10HiddenSuperPotion:
	hiddenitem SUPER_POTION, EVENT_ROUTE_10_HIDDEN_SUPER_POTION

Route10_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 23, ROUTE_10_POKECENTER_1F, 1
	warp_event  4, 21, ROCK_TUNNEL_1F, 1
	warp_event  4, 41, POWER_PLANT, 1

	def_coord_events

	def_bg_events
	bg_event  5, 23, BGEVENT_READ, Route10RockTunnelSign
	bg_event 10, 23, BGEVENT_READ, Route10PokecenterSign
	bg_event  3, 43, BGEVENT_READ, PowerPlantSign
	bg_event  7, 21, BGEVENT_ITEM, Route10HiddenSuperPotion

	def_object_events
	object_event  5, 29, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerPicnickerAzriel, -1
	object_event 10, 44, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 4, TrainerPokemaniacBrent, -1
	object_event 14, 36, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route10Magnet, EVENT_ROUTE_10_MAGNET
	object_event 14, 34, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route10Rock, -1
;	object_event 15, 32, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route10Rock, -1
;	object_event 14, 34, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route10Rock, -1
