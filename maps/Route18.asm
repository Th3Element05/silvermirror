	object_const_def

Route18_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, Route18AlwaysOnBikeCallback

Route18AlwaysOnBikeCallback:
	readvar VAR_XCOORD
	ifgreater 35, .CanWalk
	readvar VAR_YCOORD
	ifgreater 9, .CanWalk
	setflag ENGINE_ALWAYS_ON_BIKE
	endcallback

.CanWalk:
	clearflag ENGINE_ALWAYS_ON_BIKE
	endcallback


; trainers
TrainerBirdKeeperJose:
	trainer BIRD_KEEPER, JOSE1, EVENT_BEAT_BIRD_KEEPER_JOSE, BirdKeeperJoseSeenText, BirdKeeperJoseBeatenText, 0, .Script
.Script:
;	endifjustbattled
;	jumptextfaceplayer BirdKeeperJoseAfterBattleText

	loadvar VAR_CALLERID, PHONE_BIRDKEEPER_JOSE
	opentext
	checkflag ENGINE_JOSE_READY_FOR_REMATCH
	iftrue .WantsBattle
	checkflag ENGINE_JOSE_HAS_STAR_PIECE
	iftrue .HasStarPiece
	checkcellnum PHONE_BIRDKEEPER_JOSE
	iftrue .JoseDefeated
	checkevent EVENT_JOSE_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedAlready
	writetext BirdKeeperJoseAfterBattleText
	promptbutton
	setevent EVENT_JOSE_ASKED_FOR_PHONE_NUMBER
	scall Route17AskNumber1
	sjump .AskForNumber

.AskedAlready:
	scall Route17AskNumber2
.AskForNumber:
	askforphonenumber PHONE_BIRDKEEPER_JOSE
	ifequal PHONE_CONTACTS_FULL, Route17PhoneFull
	ifequal PHONE_CONTACT_REFUSED, Route17NumberDeclined
	gettrainername STRING_BUFFER_3, BIRD_KEEPER, JOSE1
	scall Route17RegisteredNumber
	sjump Route17NumberAccepted

.WantsBattle:
	scall Route17Rematch
	winlosstext BirdKeeperJoseBeatenText, 0
	loadtrainer BIRD_KEEPER, JOSE_0
	checkflag ENGINE_FLYPOINT_INDIGO_PLATEAU
	iftrue .LoadFight
	loadtrainer BIRD_KEEPER, JOSE_2
.LoadFight:
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_JOSE_READY_FOR_REMATCH
	end

.HasStarPiece:
	scall .Gift
	verbosegiveitem STAR_PIECE
	iffalse .PackFull
	clearflag ENGINE_JOSE_HAS_STAR_PIECE
	sjump Route17NumberAccepted

.JoseDefeated:
	writetext BirdKeeperJoseAfterBattleText
	promptbutton
	closetext
	end

.Gift:
	jumpstd GiftMScript
	end

.PackFull:
	jumpstd PackFullMScript
	end

;.AskNumber1:
;	jumpstd AskNumber1MScript
;	end
;
;.AskNumber2:
;	jumpstd AskNumber2MScript
;	end
;
;.RegisteredNumber:
;	jumpstd RegisteredNumberMScript
;	end
;
;.NumberAccepted:
;	jumpstd NumberAcceptedMScript
;	end
;
;.NumberDeclined:
;	jumpstd NumberDeclinedMScript
;	end
;
;.PhoneFull:
;	jumpstd PhoneFullMScript
;	end
;
;.Rematch:
;	jumpstd RematchMScript
;	end

BirdKeeperJoseSeenText:
	text "I always check"
	line "every grassy area"
	cont "for new #MON."
	done

BirdKeeperJoseBeatenText:
	text "Tch!"
	done

BirdKeeperJoseAfterBattleText:
	text "I wish I had a"
	line "BIKE!"
	done


TrainerBirdKeeperBryan:
	trainer BIRD_KEEPER, BRYAN, EVENT_BEAT_BIRD_KEEPER_BRYAN, BirdKeeperBryanSeenText, BirdKeeperBryanBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer BirdKeeperBryanAfterBattleText

BirdKeeperBryanSeenText:
	text "This is my turf!"
	line "Get out of here!"
	done

BirdKeeperBryanBeatenText:
	text "Darn!"
	done

BirdKeeperBryanAfterBattleText:
	text "This is my fave"
	line "#MON hunting"
	cont "area!"
	done


TrainerBirdKeeperPeter:
	trainer BIRD_KEEPER, PETER, EVENT_BEAT_BIRD_KEEPER_PETER, BirdKeeperPeterSeenText, BirdKeeperPeterBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer BirdKeeperPeterAfterBattleText

BirdKeeperPeterSeenText:
	text "Kurukkoo!"
	line "How do you like"
	cont "my bird call?"
	done

BirdKeeperPeterBeatenText:
	text "I had to"
	line "bug you!"
	done

BirdKeeperPeterAfterBattleText:
	text "I also collect"
	line "sea #MON on"
	cont "weekends!"
	done


; bg text
Route18CyclingRoadSign:
	jumptext Route18CyclingRoadSignText
Route18CyclingRoadSignText:
	text "CYCLING ROAD"
	line "No pedestrians"
	cont "permitted!"
	done

Route18Sign:
	jumptext Route18SignText
Route18SignText:
	text "ROUTE 18"

	para "CELADON CITY -"
	line "FUCHSIA CITY"
	done


Route18_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 35,  8, ROUTE_18_GATE, 1
	warp_event 35,  9, ROUTE_18_GATE, 2
	warp_event 40,  8, ROUTE_18_GATE, 3
	warp_event 40,  9, ROUTE_18_GATE, 4

	def_coord_events

	def_bg_events
	bg_event 33,  5, BGEVENT_READ, Route18CyclingRoadSign
	bg_event 43,  7, BGEVENT_READ, Route18Sign

	def_object_events
	object_event 36, 11, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBirdKeeperJose, -1
	object_event 42, 13, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBirdKeeperBryan, -1
	object_event 40, 15, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerBirdKeeperPeter, -1
