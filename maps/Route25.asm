	object_const_def

Route25_MapScripts:
	def_scene_scripts

	def_callbacks

Route25Captain:
	opentext
	writetext Route25CaptainIntroText
	waitbutton
	faceplayer
	writetext Route25CaptainQuestionText
	promptbutton
	checkevent EVENT_GOT_MYSTIC_WATER
	iftrue .GotMysticWater
	writetext Route25CaptainMysticWaterText
	promptbutton
	verbosegiveitem MYSTIC_WATER
	iffalse .BagFull
	setevent EVENT_GOT_MYSTIC_WATER
.GotMysticWater
	writetext Route25CaptainEnjoyTheWaterText
	waitbutton
.BagFull
	closetext
	turnobject LAST_TALKED, RIGHT
	end

Route25CaptainIntroText:
	text "I come out to the"
	line "cape to enjoy the"
	cont "water."
	done

Route25CaptainQuestionText:
	text "Did you come out"
	line "here to enjoy the"
	cont "water, too?"

	para "<……>"
	done

Route25CaptainMysticWaterText:
	text "I like you."
	line "I want you to"
	cont "have this."
	done

Route25CaptainEnjoyTheWaterText:
	text "Let's enjoy the"
	line "water together."
	done

TrainerYoungsterSamuel:
	trainer YOUNGSTER, SAMUEL, EVENT_BEAT_YOUNGSTER_SAMUEL, YoungsterSamuelSeenText, YoungsterSamuelBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext YoungsterSamuelAfterBattleText
	waitbutton
	closetext
	end

YoungsterSamuelSeenText:
	text "Local trainers"
	line "come here to"
	cont "practice!"
	done

YoungsterSamuelBeatenText:
	text "You're"
	line "decent."
	done

YoungsterSamuelAfterBattleText:
	text "All #MON have"
	line "weaknesses. It's"
	cont "best to raise"
	roll "different kinds."
	done

TrainerYoungsterRicky:
	trainer YOUNGSTER, RICKY, EVENT_BEAT_YOUNGSTER_RICKY, YoungsterRickySeenText, YoungsterRickyBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext YoungsterRickyAfterBattleText
	waitbutton
	closetext
	end

YoungsterRickySeenText:
	text "I knew I had to"
	line "fight you!"
	done

YoungsterRickyBeatenText:
	text "I knew"
	line "I'd lose too!"
	done

YoungsterRickyAfterBattleText:
	text "If your #MON"
	line "gets confused or"
	cont "falls asleep,"
	roll "switch it!"
	done

TrainerHikerRussell:
	trainer HIKER, RUSSELL, EVENT_BEAT_HIKER_RUSSELL, HikerRussellSeenText, HikerRussellBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext HikerRussellAfterBattleText
	waitbutton
	closetext
	end

HikerRussellSeenText:
	text "I just got down"
	line "from MT.MOON,"
	cont "but I'm ready!"
	done

HikerRussellBeatenText:
	text "You"
	line "worked hard!"
	done

HikerRussellAfterBattleText:
	text "Drat!"
	line "A ZUBAT bit me"
	cont "back in there."
	done

TrainerCamperElliot:
	trainer CAMPER, ELLIOT, EVENT_BEAT_CAMPER_ELLIOT, CamperElliotSeenText, CamperElliotBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext CamperElliotAfterBattleText
	waitbutton
	closetext
	end

CamperElliotSeenText:
	text "I'm a cool guy."
	line "I've got a girl"
	cont "friend!"
	done

CamperElliotBeatenText:
	text "Aww,"
	line "darn…"
	done

CamperElliotAfterBattleText:
	text "Oh well. My girl"
	line "will cheer me up."
	done

TrainerLassHillary:
	trainer LASS, HILLARY1, EVENT_BEAT_LASS_HILLARY, LassHillarySeenText, LassHillaryBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext LassHillaryAfterBattleText
	waitbutton
	closetext
	end

LassHillarySeenText:
	text "My favorite are"
	line "cute #MON."
	cont "They're adorable!"
	done

LassHillaryBeatenText:
	text "That's not so"
	line "cute!"
	done

LassHillaryAfterBattleText:
	text "You came from MT."
	line "MOON? Did you see"
	cont "any CLEFAIRY?"
	done

TrainerYoungsterMikey:
	trainer YOUNGSTER, MIKEY, EVENT_BEAT_YOUNGSTER_MIKEY, YoungsterMikeySeenText, YoungsterMikeyBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext YoungsterMikeyAfterBattleText
	waitbutton
	closetext
	end

YoungsterMikeySeenText:
	text "Dad took me to a"
	line "great party on"
	cont "S.S.ANNE at"
	roll "VERMILION CITY!"
	done

YoungsterMikeyBeatenText:
	text "I'm"
	line "not mad!"
	done

YoungsterMikeyAfterBattleText:
	text "On S.S.ANNE, I"
	line "saw trainers from"
	cont "around the world."
	done

TrainerHikerPhillip:
	trainer HIKER, PHILLIP, EVENT_BEAT_HIKER_PHILLIP, HikerPhillipSeenText, HikerPhillipBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext HikerPhillipAfterBattleText
	waitbutton
	closetext
	end

HikerPhillipSeenText:
	text "You're going to"
	line "see BILL? First,"
	cont "let's fight!"
	done

HikerPhillipBeatenText:
	text "You're"
	line "something."
	done

HikerPhillipAfterBattleText:
	text "The trail below"
	line "is a shortcut to"
	cont "CERULEAN CITY."
	done

TrainerLassMichelle:
	trainer LASS, MICHELLE, EVENT_BEAT_LASS_MICHELLE, LassMichelleSeenText, LassMichelleBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext LassMichelleAfterBattleText
	waitbutton
	closetext
	end

LassMichelleSeenText:
	text "Hi! My boy"
	line "friend is cool!"
	done

LassMichelleBeatenText:
	text "I was in"
	line "bad condition!"
	done

LassMichelleAfterBattleText:
	text "I wish my guy was"
	line "as good as you!"
	done

TrainerHikerLeonard:
	trainer HIKER, LEONARD, EVENT_BEAT_HIKER_LEONARD, HikerLeonardSeenText, HikerLeonardBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext HikerLeonardAfterBattleText
	waitbutton
	closetext
	end

HikerLeonardSeenText:
	text "I'm off to see a"
	line "#MON collector"
	cont "at the cape!"
	done

HikerLeonardBeatenText:
	text "You"
	line "got me."
	done

HikerLeonardAfterBattleText:
	text "The collector has"
	line "many rare kinds"
	cont "of #MON."
	done

Route25TMSeismicToss:
	itemball TM_SEISMIC_TOSS

Route25HiddenElixer:
	hiddenitem ELIXER, EVENT_ROUTE_25_HIDDEN_ELIXER

Route25HiddenEther:
	hiddenitem ETHER, EVENT_ROUTE_25_HIDDEN_ETHER

Route25BillsHouseSign:
	jumptext Route25BillsHouseSignText

Route25BillsHouseSignText:
	text "SEA COTTAGE"
	line "BILL lives here!"
	done

Route25_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 43,  3, BILLS_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event 41,  3, BGEVENT_READ, Route25BillsHouseSign
	bg_event 10,  1, BGEVENT_ITEM, Route25HiddenElixer
	bg_event 36,  3, BGEVENT_ITEM, Route25HiddenEther

	def_object_events
	object_event 14,  2, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerYoungsterSamuel, -1
	object_event 31,  3, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerYoungsterRicky, -1
	object_event  8,  4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerHikerRussell, -1
	object_event 24,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerCamperElliot, -1
	object_event 35,  4, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerLassHillary, -1
	object_event 18,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerYoungsterMikey, -1
	object_event 13,  7, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerHikerPhillip, -1
	object_event 18,  8, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerLassMichelle, -1
	object_event 23,  9, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerHikerLeonard, -1
	object_event 45,  9, SPRITE_CAPTAIN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route25Captain, -1
	object_event 22,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, Route25TMSeismicToss, EVENT_ROUTE_25_TM_SEISMIC_TOSS
