	object_const_def

Route13_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerBirdKeeperJamie:
	trainer BIRD_KEEPER, JAMIE1, EVENT_BEAT_BIRD_KEEPER_JAMIE, BirdKeeperJamieSeenText, BirdKeeperJamieBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer BirdKeeperJamieAfterBattleText

BirdKeeperJamieSeenText:
	text "You need to use"
	line "TMs to teach good"
	cont "moves to #MON!"
	done

BirdKeeperJamieBeatenText:
	text "Not good"
	line "enough!"
	done

BirdKeeperJamieAfterBattleText:
	text "You have some HMs"
	line "right? Those moves"
	cont "are useful for"
	cont "getting around."
	done

TrainerBirdKeeperDennis:
	trainer BIRD_KEEPER, DENNIS, EVENT_BEAT_BIRD_KEEPER_DENNIS, BirdKeeperDennisSeenText, BirdKeeperDennisBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer BirdKeeperDennisAfterBattleText

BirdKeeperDennisSeenText:
	text "TMs are on sale"
	line "in CELADON!"
	cont "But, only a few"
	cont "people have HMs!"
	done

BirdKeeperDennisBeatenText:
	text "Aww, bummer!"
	done

BirdKeeperDennisAfterBattleText:
	text "Teach #MON"
	line "moves of the same"
	cont "element type for"
	cont "more power."
	done

TrainerBirdKeeperPerry:
	trainer BIRD_KEEPER, PERRY, EVENT_BEAT_BIRD_KEEPER_PERRY, BirdKeeperPerrySeenText, BirdKeeperPerryBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer BirdKeeperPerryAfterBattleText

BirdKeeperPerrySeenText:
	text "Have you taught"
	line "your bird #MON"
	cont "how to FLY?"
	done

BirdKeeperPerryBeatenText:
	text "Shot down"
	line "in flames!"
	done

BirdKeeperPerryAfterBattleText:
	text "Bird #MON are"
	line "my true love!"
	done

TrainerBirdKeeperToby:
	trainer BIRD_KEEPER, TOBY, EVENT_BEAT_BIRD_KEEPER_TOBY, BirdKeeperTobySeenText, BirdKeeperTobyBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer BirdKeeperTobyAfterBattleText

BirdKeeperTobySeenText:
	text "My bird #MON"
	line "should be ready"
	cont "for battle."
	done

BirdKeeperTobyBeatenText:
	text "Not ready"
	line "yet!"
	done

BirdKeeperTobyAfterBattleText:
	text "They need to learn"
	line "better moves."
	done

TrainerBirdKeeperRoy:
	trainer BIRD_KEEPER, ROY, EVENT_BEAT_BIRD_KEEPER_ROY, BirdKeeperRoySeenText, BirdKeeperRoyBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer BirdKeeperRoyAfterBattleText

BirdKeeperRoySeenText:
	text "I always go with"
	line "bird #MON!"
	done

BirdKeeperRoyBeatenText:
	text "Out of power!"
	done

BirdKeeperRoyAfterBattleText:
	text "I wish I could"
	line "fly like PIDGEY"
	cont "and PIDGEOTTO..."
	done

TrainerBikerDwayne:
	trainer BIKER, DWAYNE, EVENT_BEAT_BIKER_DWAYNE, BikerDwayneSeenText, BikerDwayneBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer BikerDwayneAfterBattleText

BikerDwayneSeenText:
	text "What're you"
	line "lookin' at?"
	done

BikerDwayneBeatenText:
	text "Dang!"
	line "Stripped gears!"
	done

BikerDwayneAfterBattleText:
	text "Get lost!"
	done

TrainerBirdKeeperRod:
	trainer BIRD_KEEPER, ROD, EVENT_BEAT_BIRD_KEEPER_ROD, BirdKeeperRodSeenText, BirdKeeperRodBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer BirdKeeperRodAfterBattleText

BirdKeeperRodSeenText:
	text "The wind's blowing"
	line "my way!"
	done

BirdKeeperRodBeatenText:
	text "The wind turned!"
	done

BirdKeeperRodAfterBattleText:
	text "I'm beat. I guess"
	line "I'll FLY home."
	done

TrainerPicnickerSelina:
	trainer PICNICKER, SELINA, EVENT_BEAT_PICNICKER_SELINA, PicnickerSelinaSeenText, PicnickerSelinaBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer PicnickerSelinaAfterBattleText

PicnickerSelinaSeenText:
	text "My cute #MON"
	line "wish to make your"
	cont "acquaintance."
	done

PicnickerSelinaBeatenText:
	text "Wow!"
	line "You totally won!"
	done

PicnickerSelinaAfterBattleText:
	text "You have to make"
	line "#MON fight to"
	cont "toughen them up!"
	done

TrainerPicnickerTanya:
	trainer PICNICKER, TANYA, EVENT_BEAT_PICNICKER_TANYA, PicnickerTanyaSeenText, PicnickerTanyaBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer PicnickerTanyaAfterBattleText

PicnickerTanyaSeenText:
	text "Wow! Your BADGEs"
	line "are too cool!"
	done

PicnickerTanyaBeatenText:
	text "Not enough!"
	done

PicnickerTanyaAfterBattleText:
	text "You got those"
	line "BADGEs from GYM"
	cont "LEADERs. I know!"
	done

TrainerTwinsKayAndTia1:
	trainer TWINS, KAYANDTIA1, EVENT_BEAT_TWINS_KAYANDTIA, TwinsKayAndTiaSeenText, TwinsKayAndTiaBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer TwinsKayAndTia1AfterBattleText

TrainerTwinsKayAndTia2:
	trainer TWINS, KAYANDTIA1, EVENT_BEAT_TWINS_KAYANDTIA, TwinsKayAndTiaSeenText, TwinsKayAndTiaBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer TwinsKayAndTia2AfterBattleText

TwinsKayAndTiaSeenText:
	text "Sure, we'll play"
	line "with you!"
	done

TwinsKayAndTiaBeatenText:
	text "You brute!"
	done

TwinsKayAndTia1AfterBattleText:
	text "I wonder which is"
	line "stronger, male or"
	cont "female #MON?"
	done

TwinsKayAndTia2AfterBattleText:
	text "I don't know"
	line "anything about"
	cont "#MON. I just"
	cont "like cute ones!"
	done

TrainerPicnickerPiper:
	trainer PICNICKER, PIPER, EVENT_BEAT_PICNICKER_PIPER, PicnickerPiperSeenText, PicnickerPiperBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer PicnickerPiperAfterBattleText

PicnickerPiperSeenText:
	text "I'm told I'm good"
	line "for a kid!"
	done

PicnickerPiperBeatenText:
	text "Ohh!"
	line "I lost!"
	done

PicnickerPiperAfterBattleText:
	text "I want to become"
	line "a good trainer."
	cont "I'll train hard."
	done

TrainerBirdKeeperAbe:
	trainer BIRD_KEEPER, ABE, EVENT_BEAT_BIRD_KEEPER_ABE, BirdKeeperAbeSeenText, BirdKeeperAbeBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer BirdKeeperAbeAfterBattleText

BirdKeeperAbeSeenText:
	text "My bird #MON"
	line "want to scrap!"
	done

BirdKeeperAbeBeatenText:
	text "My bird combo"
	line "lost?"
	done

BirdKeeperAbeAfterBattleText:
	text "My #MON look"
	line "happy even though"
	cont "they lost."
	done

TrainerPicnickerDebra:
	trainer PICNICKER, DEBRA, EVENT_BEAT_PICNICKER_DEBRA, PicnickerDebraSeenText, PicnickerDebraBeatenText, 0, .Script
.Script:
	endifjustbattled
	jumptextfaceplayer PicnickerDebraAfterBattleText

PicnickerDebraSeenText:
	text "I found CARBOS in"
	line "a cave once."
	done

PicnickerDebraBeatenText:
	text "Just messed up!"
	done

PicnickerDebraAfterBattleText:
	text "CARBOS boosted"
	line "the SPEED of my"
	cont "#MON."
	done

Route13TrainerTips1:
	jumptext Route13TrainerTips1Text
Route13TrainerTips1Text:
	text "TRAINER TIPS"

	para "Look to the left"
	line "of that post!"
	done

Route13TrainerTips2:
	jumptext Route13TrainerTips2Text
Route13TrainerTips2Text:
	text "TRAINER TIPS"

	para "Use SELECT to"
	line "switch items in"
	cont "the ITEM window!"
	done

Route13Sign:
	jumptext Route13SignText
Route13SignText:
	text "ROUTE 13"

	para "NORTH TO"
	line "SILENCE BRIDGE"
	done

Route13HiddenCalcium:
	hiddenitem CALCIUM, EVENT_ROUTE_13_HIDDEN_CALCIUM

Route13HiddenPPUp:
	hiddenitem PP_UP, EVENT_ROUTE_13_HIDDEN_PP_UP

Route13_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event 35, 13, BGEVENT_READ, Route13TrainerTips1
	bg_event 53,  5, BGEVENT_READ, Route13TrainerTips2
	bg_event 51, 11, BGEVENT_READ, Route13Sign
	bg_event 36, 13, BGEVENT_ITEM, Route13HiddenCalcium
	bg_event 21, 14, BGEVENT_ITEM, Route13HiddenPPUp

	def_object_events
	object_event  4,  4, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerBirdKeeperJamie, -1
	object_event 12, 11, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerBirdKeeperDennis, -1
	object_event 14, 14, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerBirdKeeperPerry, -1
	object_event 15,  6, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerBirdKeeperToby, -1
	object_event 27, 13, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerBirdKeeperRoy, -1
	object_event 30,  7, SPRITE_BIKER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerBikerDwayne, -1
	object_event 32,  4, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerBirdKeeperRod, -1
	object_event 43, 10, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerPicnickerSelina, -1
	object_event 47,  9, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerPicnickerTanya, -1
	object_event 52,  6, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 1, TrainerTwinsKayAndTia1, -1
	object_event 53,  6, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 1, TrainerTwinsKayAndTia2, -1
	object_event 64, 10, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerPicnickerPiper, -1
	object_event 65, 10, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerBirdKeeperAbe, -1
	object_event 66,  5, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerPicnickerDebra, -1
