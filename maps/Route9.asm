	object_const_def

Route9_MapScripts:
	def_scene_scripts
	scene_script Route9CheckFlashScene, SCENE_ROUTE9_CHECK_FLASH
	scene_script Route9NoopScene,       SCENE_ROUTE9_NOOP

	def_callbacks

Route9CheckFlashScene:
	checkevent EVENT_GOT_HM05_FLASH
	iftrue .GotFlash
	specialphonecall SPECIALCALL_FLASH
.GotFlash
	setscene SCENE_ROUTE9_NOOP
	end

Route9NoopScene:
	end


TrainerBugCatcherDoug:
	trainer BUG_CATCHER, DOUG1, EVENT_BEAT_BUG_CATCHER_DOUG, BugCatcherDougSeenText, BugCatcherDougBeatenText, 0, .Script
.Script:
;	endifjustbattled
;	opentext
;	writetext BugCatcherDougAfterBattleText
;	waitbutton
;	closetext
;	end

	loadvar VAR_CALLERID, PHONE_BUG_CATCHER_DOUG
	opentext
	checkflag ENGINE_DOUG_READY_FOR_REMATCH
	iftrue .WantsBattle
	checkflag ENGINE_DOUG_HAS_BERRY
	iftrue .DougItem
	checkcellnum PHONE_BUG_CATCHER_DOUG
	iftrue .DougDefeated
	checkevent EVENT_DOUG_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedBefore
	writetext BugCatcherDougAfterBattleText
	promptbutton
	setevent EVENT_DOUG_ASKED_FOR_PHONE_NUMBER
	scall Route9AskNumber1
	jump .AskForNumber

.AskedBefore:
	scall Route9AskNumber2
.AskForNumber:
	askforphonenumber PHONE_BUG_CATCHER_DOUG
	ifequal PHONE_CONTACTS_FULL, Route9PhoneFull
	ifequal PHONE_CONTACT_REFUSED, Route9NumberDeclined
	gettrainername STRING_BUFFER_3, BUG_CATCHER, DOUG1
	scall Route9RegisteredNumber
	jump Route9NumberAccepted

.WantsBattle:
	scall Route9Rematch
	winlosstext BugCatcherDougBeatenText, 0
	loadtrainer BUG_CATCHER, DOUG_0
	checkflag ENGINE_FLYPOINT_INDIGO_PLATEAU
	iftrue .LoadFight
	loadtrainer BUG_CATCHER, DOUG_2
.LoadFight:
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_DOUG_READY_FOR_REMATCH
	end

.DougItem:
	scall Route9GiftItem
	random 4
	random 4
;	ifequal 0, .lumberry
;	ifequal 1, .lumberry
	ifequal 2, .leppaberry
	ifequal 3, .sitrusberry

.lumberry:
	verbosegiveitem LUM_BERRY
	iffalse .PackFull
	jump .Done

.leppaberry:
	verbosegiveitem LEPPA_BERRY
	iffalse .PackFull
	jump .Done

.sitrusberry:
	verbosegiveitem SITRUS_BERRY
	iffalse .PackFull

.Done:
	clearflag ENGINE_DOUG_HAS_BERRY
	setflag ENGINE_DOUG_GAVE_BERRY
	jump Route9NumberAccepted

.DougDefeated:
	writetext BugCatcherDougAfterBattleText
	promptbutton
	closetext
	end

BugCatcherDougSeenText:
	text "I got up early"
	line "every day to"
	cont "raise my #MON!"
;	roll "from cocoons!"
	done

BugCatcherDougBeatenText:
	text "WHAT?"

	para "What a total"
	line "waste of time!"
	done

BugCatcherDougAfterBattleText:
	text "I have to collect"
	line "more than bugs to"
	cont "get stronger…"
	done


TrainerHikerBenjamin:
	trainer HIKER, BENJAMIN, EVENT_BEAT_HIKER_BENJAMIN, HikerBenjaminSeenText, HikerBenjaminBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext HikerBenjaminAfterBattleText
	waitbutton
	closetext
	end

HikerBenjaminSeenText:
	text "Hahaha!"
	line "Aren't you a"
	cont "little toughie!"
	done

HikerBenjaminBeatenText:
	text "What's that?"
	done

HikerBenjaminAfterBattleText:
	text "Hahaha! Kids"
	line "should be tough!"
	done


TrainerCamperDean:
	trainer CAMPER, DEAN, EVENT_BEAT_CAMPER_DEAN, CamperDeanSeenText, CamperDeanBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext CamperDeanAfterBattleText
	waitbutton
	closetext
	end

CamperDeanSeenText:
	text "Who's that walking"
	line "with those good"
	cont "looking #MON?"
	done

CamperDeanBeatenText:
	text "Out"
	line "like a light!"
	done

CamperDeanAfterBattleText:
	text "Keep walking!"
	done


TrainerCamperSid:
	trainer CAMPER, SID, EVENT_BEAT_CAMPER_SID, CamperSidSeenText, CamperSidBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext CamperSidAfterBattleText
	waitbutton
	closetext
	end

CamperSidSeenText:
	text "I'm taking ROCK"
	line "TUNNEL to go to"
	cont "LAVENDER…"
	done

CamperSidBeatenText:
	text "Can't"
	line "measure up!"
	done

CamperSidAfterBattleText:
	text "Are you off to"
	line "ROCK TUNNEL too?"
	done


TrainerBugCatcherDon:
	trainer BUG_CATCHER, DON, EVENT_BEAT_BUG_CATCHER_DON, BugCatcherDonSeenText, BugCatcherDonBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext BugCatcherDonAfterBattleText
	waitbutton
	closetext
	end

BugCatcherDonSeenText:
	text "Go, my super bug"
	line "#MON!"
	done

BugCatcherDonBeatenText:
	text "My bugs…"
	done

BugCatcherDonAfterBattleText:
	text "If you don't like"
	line "bug #MON, you"
	cont "bug me!"
	done


TrainerPicnickerEllie:
	trainer PICNICKER, ELLIE, EVENT_BEAT_PICNICKER_ELLIE, PicnickerEllieSeenText, PicnickerEllieBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext PicnickerEllieAfterBattleText
	waitbutton
	closetext
	end

PicnickerEllieSeenText:
	text "Don't you dare"
	line "condescend me!"
	done

PicnickerEllieBeatenText:
	text "No!"
	line "You're too much!"
	done

PicnickerEllieAfterBattleText:
	text "You're obviously"
	line "talented! Good"
	cont "luck to you!"
	done


TrainerPicnickerGina:
	trainer PICNICKER, GINA1, EVENT_BEAT_PICNICKER_GINA, PicnickerGinaSeenText, PicnickerGinaBeatenText, 0, .Script
.Script:
;	endifjustbattled
;	opentext
;	writetext PicnickerGinaAfterBattleText
;	waitbutton
;	closetext
;	end

	loadvar VAR_CALLERID, PHONE_PICNICKER_GINA
	opentext
	checkflag ENGINE_GINA_READY_FOR_REMATCH
	iftrue .Rematch
	checkflag ENGINE_GINA_HAS_LEAF_STONE
	iftrue .LeafStone
	checkcellnum PHONE_PICNICKER_GINA
	iftrue .GinaDefeated
	checkevent EVENT_GINA_ASKED_FOR_PHONE_NUMBER
	iftrue .AskAgain
	writetext PicnickerGinaAfterBattleText
	promptbutton
	setevent EVENT_GINA_ASKED_FOR_PHONE_NUMBER
	scall Route9AskNumber1
	sjump .FinishAsk

.AskAgain:
	scall Route9AskNumber2
.FinishAsk:
	askforphonenumber PHONE_PICNICKER_GINA
	ifequal PHONE_CONTACTS_FULL, Route9PhoneFull
	ifequal PHONE_CONTACT_REFUSED, Route9NumberDeclined
	gettrainername STRING_BUFFER_3, PICNICKER, GINA1
	scall Route9RegisteredNumber
	sjump Route9NumberAccepted

.Rematch:
	scall Route9Rematch
	winlosstext PicnickerGinaBeatenText, 0
	loadtrainer PICNICKER, GINA_0
	checkflag ENGINE_FLYPOINT_INDIGO_PLATEAU
	iftrue .LoadFight
	loadtrainer PICNICKER, GINA_3
	checkflag ENGINE_FLYPOINT_CELADON
	iftrue .LoadFight
	loadtrainer PICNICKER, GINA_2
.LoadFight:
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_GINA_READY_FOR_REMATCH
	end

.LeafStone:
	scall Route9GiftItem
	verbosegiveitem LEAF_STONE
	iffalse Route9PackFull
	clearflag ENGINE_GINA_HAS_LEAF_STONE
	setflag ENGINE_GINA_GAVE_LEAF_STONE
	sjump Route9NumberAccepted

.GinaDefeated:
	writetext PicnickerGinaAfterBattleText
	promptbutton
	closetext
	end

PicnickerGinaSeenText:
	text "You have #MON"
	line "with you!"
	cont "You're mine!"
	done

PicnickerGinaBeatenText:
	text "You deceived me!"
	done

PicnickerGinaAfterBattleText:
;	text "You need light to"
;	line "get through that"
;	cont "dark tunnel ahead."
;	done
	text "You're too strong"
	line "to be a practice"
	cont "partner."
	done

Route9AskNumber1:
	jumpstd AskNumber1MScript
	end

Route9AskNumber2:
	jumpstd AskNumber2MScript
	end

Route9RegisteredNumber:
	jumpstd RegisteredNumberMScript
	end

Route9NumberAccepted:
	jumpstd NumberAcceptedMScript
	end

Route9NumberDeclined:
	jumpstd NumberDeclinedMScript
	end

Route9PhoneFull:
	jumpstd PhoneFullMScript
	end

Route9Rematch:
	jumpstd RematchMScript
	end

Route9GiftItem:
	jumpstd GiftMScript
	end

Route9PackFull:
	jumpstd PackFullMScript
	end


TrainerHikerErik:
	trainer HIKER, ERIK, EVENT_BEAT_HIKER_ERIK, HikerErikSeenText, HikerErikBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext HikerErikAfterBattleText
	waitbutton
	closetext
	end

HikerErikSeenText:
	text "Bwahaha!"
	line "Great! I was"
	cont "bored, eh!"
	done

HikerErikBeatenText:
	text "Keep it"
	line "coming, eh!"

	para "Oh wait. I'm out"
	line "of #MON!"
	done

HikerErikAfterBattleText:
	text "You sure had guts"
	line "standing up to me"
	cont "there, eh?"
	done


TrainerHikerMichael:
	trainer HIKER, MICHAEL, EVENT_BEAT_HIKER_MICHAEL, HikerMichaelSeenText, HikerMichaelBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext HikerMichaelAfterBattleText
	waitbutton
	closetext
	end

HikerMichaelSeenText:
	text "Hahahaha!"
	line "Come on, dude!"
	done

HikerMichaelBeatenText:
	text "Hahahaha!"
	line "You beat me fair!"
	done

HikerMichaelAfterBattleText:
	text "Hahahaha!"
	line "Us hearty guys"
	cont "always laugh!"
	done


; signs
Route9Sign:
	jumptext Route9SignText
Route9SignText:
	text "ROUTE 9"

	para "CERULEAN CITY -"
	line "ROCK TUNNEL"
	done


; item balls
Route9TMEndure:
	itemball TM_ENDURE


; hidden items
Route9HiddenEther:
	hiddenitem ETHER, EVENT_ROUTE_9_HIDDEN_ETHER


Route9_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event 25,  7, BGEVENT_READ, Route9Sign
	bg_event 14,  7, BGEVENT_ITEM, Route9HiddenEther

	def_object_events
	object_event 22,  2, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerBugCatcherDoug, -1
	object_event 43,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerHikerBenjamin, -1
	object_event 24,  7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerCamperDean, -1
	object_event 31,  7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerCamperSid, -1
	object_event 40,  8, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerBugCatcherDon, -1
	object_event 48,  8, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerPicnickerEllie, -1
	object_event 13, 10, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerPicnickerGina, -1
	object_event 16, 15, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerHikerErik, -1
	object_event 45, 15, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerHikerMichael, -1
	object_event 10, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, Route9TMEndure, EVENT_ROUTE_9_TM_ENDURE
