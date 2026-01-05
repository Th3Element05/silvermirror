	object_const_def
	const GOLDENRODFLOWERSHOP_TEACHER

GoldenrodFlowerShop_MapScripts:
	def_scene_scripts

	def_callbacks

FlowerShopTeacherScript:
	checkevent EVENT_FOUGHT_SUDOWOODO
	iftrue .Lalala
	checkevent EVENT_GOT_SQUIRTBOTTLE
	iftrue .GotSquirtbottle
	checkevent EVENT_MET_FLORIA
	iffalse .HaventMetFloria
	checkevent EVENT_TALKED_TO_FLORIA_AT_FLOWER_SHOP
	iffalse .Lalala
	faceplayer
	opentext
	writetext GoldenrodFlowerShopTeacherHeresTheSquirtbottleText
	promptbutton
	verbosegiveitem SQUIRTBOTTLE
	setevent EVENT_GOT_SQUIRTBOTTLE
	closetext
	setevent EVENT_FLORIA_AT_SUDOWOODO
	clearevent EVENT_FLORIA_AT_FLOWER_SHOP
	end

.HaventMetFloria:
	jumptextfaceplayer GoldenrodFlowerShopTeacherWeirdTreeText

.NoPlainBadge:
	jumptextfaceplayer GoldenrodFlowerShopTeacherAskWantToBorrowWaterBottleText

.GotSquirtbottle:
	jumptextfaceplayer GoldenrodFlowerShopTeacherWaterPlantsText

.Lalala:
	turnobject GOLDENRODFLOWERSHOP_TEACHER, LEFT
	opentext
	writetext GoldenrodFlowerShopTeacherLalalaHavePlentyOfWaterText
	waitbutton
	closetext
	end

GoldenrodFlowerShopTeacherWeirdTreeText:
	text "There's a weird"
	line "tree on ROUTE 36."

	para "My little sister"
	line "got all excited"
	cont "and went to see"
	line "it…"

	para "I'm worried… Isn't"
	line "it dangerous?"
	done

GoldenrodFlowerShopTeacherAskWantToBorrowWaterBottleText:
	text "Do you want to"
	line "borrow the water"
	cont "bottle too?"

	para "I don't want you"
	line "doing anything"
	cont "dangerous with it."
	done

GoldenrodFlowerShopTeacherHeresTheSquirtbottleText:
	text "You want to borrow"
	line "a SQUIRTBOTTLE?"

	para "Sure, any plants"
	line "you meet will love"
	cont "some water!"
	done

GoldenrodFlowerShopTeacherWaterPlantsText:
	text "Give water to all"
	line "the lovely plants"
	cont "you meet!"
	done

GoldenrodFlowerShopTeacherLalalaHavePlentyOfWaterText:
	text "Lalala lalalala."
	line "Have plenty of"
	cont "water, my lovely!"
	done

FlowerShopFloriaScript:
	checkevent EVENT_FOUGHT_SUDOWOODO
	iftrue .FoughtSudowoodo
	checkevent EVENT_BEAT_WHITNEY
	iftrue .BeatWhitney
	faceplayer
	opentext
	writetext GoldenrodFlowerShopFloriaToldSisText
	waitbutton
	closetext
	setevent EVENT_TALKED_TO_FLORIA_AT_FLOWER_SHOP
;	setevent EVENT_FLORIA_AT_FLOWER_SHOP
;	clearevent EVENT_FLORIA_AT_SUDOWOODO
	end

.FoughtSudowoodo:
	random 3
	ifequal 0, .BeatWhitney
	jumptextfaceplayer GoldenrodFlowerShopFloriaItReallyWasAMonText

.BeatWhitney:
	jumptextfaceplayer GoldenrodFlowerShopFloriaYouBeatWhitneyText

GoldenrodFlowerShopFloriaToldSisText:
	text "I told my sis"
	line "about the weird"
	cont "tree on ROUTE 36."

	para "She said it was"
	line "dangerous."
	done

GoldenrodFlowerShopFloriaYouBeatWhitneyText:
	text "Wow, you beat"
	line "WHITNEY? Cool!"
	done

GoldenrodFlowerShopFloriaItReallyWasAMonText:
	text "So the tree really"
	line "was a #MON!"
	done

;FlowerShopShelf1: ; unreferenced
;	jumpstd PictureBookshelfScript

;FlowerShopShelf2: ; unreferenced
;	jumpstd MagazineBookshelfScript

;FlowerShopRadio: ; unreferenced
;	jumpstd Radio2Script

GoldenrodFlowerShop_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, GOLDENROD_CITY, 5
	warp_event  3,  7, GOLDENROD_CITY, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  4, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FlowerShopTeacherScript, -1
	object_event  5,  6, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, FlowerShopFloriaScript, EVENT_FLORIA_AT_FLOWER_SHOP
