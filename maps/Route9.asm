	object_const_def

Route9_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerBugCatcherDoug:
	trainer BUG_CATCHER, DOUG1, EVENT_BEAT_BUG_CATCHER_DOUG, BugCatcherDougSeenText, BugCatcherDougBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext BugCatcherDougAfterBattleText
	waitbutton
	closetext
	end

BugCatcherDougSeenText:
	text "I got up early"
	line "every day to"
	cont "raise my #MON"
	cont "from cocoons!"
	done

BugCatcherDougBeatenText:
	text "WHAT?"

	para "What a total"
	line "waste of time!"
	done

BugCatcherDougAfterBattleText:
	text "I have to collect"
	line "more than bugs to"
	cont "get stronger..."
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
	cont "LAVENDER..."
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
	text "My"
	line "bugs..."
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
	endifjustbattled
	opentext
	writetext PicnickerGinaAfterBattleText
	waitbutton
	closetext
	end

PicnickerGinaSeenText:
	text "You have #MON"
	line "with you!"
	cont "You're mine!"
	done

PicnickerGinaBeatenText:
	text "You"
	line "deceived me!"
	done

PicnickerGinaAfterBattleText:
	text "You need light to"
	line "get through that"
	cont "dark tunnel ahead."
	done

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
Route9TMTeleport:
	itemball TM_TELEPORT

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
	object_event 22,  2, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerBugCatcherDoug, -1
	object_event 43,  3, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerHikerBenjamin, -1
	object_event 24,  7, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerCamperDean, -1
	object_event 31,  7, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerCamperSid, -1
	object_event 40,  8, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerBugCatcherDon, -1
	object_event 48,  8, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_TRAINER, 2, TrainerPicnickerEllie, -1
	object_event 13, 10, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerPicnickerGina, -1
	object_event 16, 15, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerHikerErik, -1
	object_event 45, 15, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerHikerMichael, -1
	object_event 10, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route9TMTeleport, EVENT_ROUTE_9_TM_TELEPORT
