	object_const_def

PokemonFanClub_MapScripts:
	def_scene_scripts

	def_callbacks

PokemonFanClubChairmanScript:
	faceplayer
	opentext
	checkevent EVENT_LISTENED_TO_FAN_CLUB_PRESIDENT
	iftrue .HeardSpeech
	writetext PokemonFanClubChairmanIntroText
	yesorno
	iffalse .NotListening
	writetext PokemonFanClubChairmanRapidashText
	setevent EVENT_LISTENED_TO_FAN_CLUB_PRESIDENT
	promptbutton
	checkevent EVENT_GOT_BICYCLE
	iftrue .BoughtBike
	verbosegiveitem BIKE_VOUCHER
	writetext PokemonFanClubChairmanVoucherText
	waitbutton
	closetext
	end

.HeardSpeech:
	writetext PokemonFanClubChairmanAfterText
	waitbutton
	closetext
	end

.NotListening:
	writetext PokemonFanClubChairmanHowDisappointingText
	waitbutton
	closetext
	end

.BoughtBike:
	verbosegiveitem MASTER_BALL
	writetext PokemonFanClubChairmanMasterBallText
	waitbutton
	closetext
	end

PokemonFanClubReceptionistScript:
	jumptextfaceplayer PokemonFanClubReceptionistText
PokemonFanClubReceptionistText:
	text "Our CHAIRMAN is"
	line "very vocal when it"
	cont "comes to #MON…"
	done

PokemonFanClubPsyduckFanScript:
	faceplayer
	setval PSYDUCK
	special FindPartyMonThatSpecies
	iffalse .NoPsyduck
	opentext
	writetext PokemonFanClubShowPsyduckText
	promptbutton
	closetext
	cry PSYDUCK
	waitsfx
	jumptext PokemonFanClubPsyduckFanBetterText
.NoPsyduck
	jumptext PokemonFanClubPsyduckFanNormalText

PokemonFanClubPsyduckFanNormalText:
	text "I just love my"
	line "PSYDUCK!"

	para "It squeals when I"
	line "hug it!"
	done

PokemonFanClubShowPsyduckText:
	text "<PLAYER> showed"
	line "off PSYDUCK!"
	done

PokemonFanClubPsyduckFanBetterText:
	text "Oh dear!"

	para "My SEEL is far"
	line "more attractive!"
	done

PokemonFanClubPikachuFanScript:
	faceplayer
	setval PIKACHU
	special FindPartyMonThatSpecies
	iffalse .NoPikachu
	opentext
	writetext PokemonFanClubShowPikachuText
	promptbutton
	closetext
	cry PIKACHU
	waitsfx
	jumptext PokemonFanClubPikachuFanBetterText
.NoPikachu
	jumptext PokemonFanClubPikachuFanNormalText

PokemonFanClubPikachuFanNormalText:
	text "Won't you admire"
	line "my PIKACHU's"
	cont "adorable tail?"
	done

PokemonFanClubShowPikachuText:
	text "<PLAYER> showed"
	line "off PIKACHU!"
	done

PokemonFanClubPikachuFanBetterText:
	text "Humph! My PIKACHU"
	line "is twice as cute"
	cont "as that one!"
	done

PokemonFanClubPsyduckScript:
	opentext
	writetext PokemonFanClubPsyduckText
	cry PSYDUCK
	waitbutton
	closetext
	end

PokemonFanClubPsyduckText:
	text "PSYDUCK: Psy!"
	line "Psy, Duck!"
	done

PokemonFanClubPikachuScript:
	opentext
	writetext PokemonFanClubPikachuText
	cry PIKACHU
	waitbutton
	closetext
	end

PokemonFanClubPikachuText:
	text "PIKACHU: Chu!"
	line "Pikachu!"
	done

PokemonFanClubChairmanIntroText:
	text "I chair the"
	line "#MON Fan Club!"

	para "I have collected"
	line "over 100 #MON!"

	para "I'm very fussy"
	line "when it comes to"
	cont "#MON!"

	para "So..."

	para "Did you come"
	line "visit to hear"
	cont "about my #MON?"
	done

PokemonFanClubChairmanRapidashText:
	text "Good!"
	line "Then listen up!"

	para "So… my favorite"
	line "RAPIDASH…"

	para "It… cute… lovely…"
	line "smart… unbearably…"
	cont "plus… amazing… oh…"
	cont "you think so?…"
	cont "Too much… wild…"
	cont "beautiful… kindly…"
	cont "love it!"

	para "Hug it… when…"
	line "sleeping… warm and"
	cont "cuddly… Oh, and…"
	cont "spectacular…"
	cont "ravishing… simply"
	cont "divine…"
	cont "Oops! Look at the"
	cont "time! I've kept"
	cont "you too long!"

	para "Thanks for hearing"
	line "me out. I want you"
	cont "to have this!"
	done

PokemonFanClubChairmanVoucherText:
	text "Exchange that for"
	line "a BICYCLE!"

	para "Don't worry, my"
	line "FEAROW will FLY"
	cont "me anywhere!"

	para "So, I don't need a"
	line "BICYCLE!"

	para "I hope you like"
	line "cycling!"
	done

PokemonFanClubChairmanAfterText:
	text "Hello, <PLAY_G>!"

	para "Did you come to"
	line "hear about my"
	cont "#MON again?"

	para "No? Oh… I had more"
	line "tales to tell…"
	done

PokemonFanClubChairmanHowDisappointingText:
	text "How disappointing…"

	para "Come back if you"
	line "want to listen."
	done

PokemonFanClubChairmanMasterBallText:
	text "I won that in a"
	line "contest!  But you"
	cont "can have it."
	
	para "My RAPIDASH is"
	line "the only #MON"
	cont "I need!"
	done

PokemonFanClubListenSign:
	jumptext PokemonFanClubListenSignText
PokemonFanClubListenSignText:
	text "Let's all listen"
	line "politely to other"
	cont "trainers."
	done

PokemonFanClubBraggingSign:
	jumptext PokemonFanClubBraggingSignText
PokemonFanClubBraggingSignText:
	text "If someone brags,"
	line "brag right back!"
	done

PokemonFanClub_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, VERMILION_CITY, 3
	warp_event  3,  7, VERMILION_CITY, 3

	def_coord_events

	def_bg_events
	bg_event  1,  0, BGEVENT_READ, PokemonFanClubListenSign
	bg_event  7,  0, BGEVENT_READ, PokemonFanClubBraggingSign

	def_object_events
	object_event  3,  2, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonFanClubChairmanScript, -1
	object_event  4,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PokemonFanClubReceptionistScript, -1
	object_event  1,  4, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonFanClubPsyduckFanScript, -1
	object_event  6,  3, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonFanClubPikachuFanScript, -1
	object_event  1,  3, SPRITE_PSYDUCK, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, PokemonFanClubPsyduckScript, -1
	object_event  6,  4, SPRITE_PIKACHU, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_ROCK, OBJECTTYPE_SCRIPT, 0, PokemonFanClubPikachuScript, -1
