VanceAnswerPhoneText:
	text "Yes, hello?"
	line "@"
	text_ram wStringBuffer3
	text " here!"

	para "Morning, <PLAYER>!"

	para "Are you using bird"
	line "#MON?"
	done

VanceAnswerPhoneDayText:
	text "Yes, hello?"
	line "@"
	text_ram wStringBuffer3
	text " here!"

	para "Hi, <PLAYER>!"

	para "Are your bird"
	line "#MON flying?"
	done

VanceAnswerPhoneNiteText:
	text "Yes, hello?"
	line "@"
	text_ram wStringBuffer3
	text " here!"

	para "Evening, <PLAYER>!"
	line "Are you letting"
	cont "your bird #MON"
	roll "see some action?"
	done

VanceGreetText:
	text "Good morning,"
	line "<PLAYER>!"

	para "It's @"
	text_ram wStringBuffer3
	text "!"
	line "Good morning!"
	done

VanceGreetDayText:
	text "Hi, <PLAYER>!"

	para "It's @"
	text_ram wStringBuffer3
	text "!"
	line "Remember me?"
	done

VanceGreetNiteText:
	text "Good evening,"
	line "<PLAYER>!"

	para "It's @"
	text_ram wStringBuffer3
	text "!"
	line "Are you free now?"
	done

VanceGenericText:
	text "Are you and your"
	line "#MON fine?"

	para "My @"
	text_ram wStringBuffer4
	text_start
	line "looks like it will"
	cont "get tough enough"
	roll "to face and beat"
	cont "the legendary bird"
	roll "#MON!"
	done
