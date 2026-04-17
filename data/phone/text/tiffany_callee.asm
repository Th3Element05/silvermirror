TiffanyAnswerPhoneText:
	text "Yes? This is"
	line "@"
	text_ram wStringBuffer3
	text "."

	para "Oh, <PLAYER>."
	line "Good morning."
	done

TiffanyAnswerPhoneDayText:
	text "Yes? This is"
	line "@"
	text_ram wStringBuffer3
	text "."

	para "Oh, <PLAYER>."
	line "Hello."
	done

TiffanyAnswerPhoneNiteText:
	text "Yes? This is"
	line "@"
	text_ram wStringBuffer3
	text "."

	para "Oh, <PLAYER>,"
	line "good evening."
	done

TiffanyGreetText:
	text "Is this <PLAYER>?"

	para "Good morning. This"
	line "is @"
	text_ram wStringBuffer3
	text "."
	done

TiffanyGreetDayText:
	text "Is this <PLAYER>?"

	para "Hi, it's @"
	text_ram wStringBuffer3
	text "."
	done

TiffanyGreetNiteText:
	text "Is this <PLAYER>?"

	para "Good evening. This"
	line "is @"
	text_ram wStringBuffer3
	text "."
	done

TiffanyGenericText:
	text "Are your #MON"
	line "doing well?"

	para "I hope you take"
	line "them to a #MON"
	cont "CENTER every day."

	para "Don't push them"
	line "too hard."

	para "My @"
	text_ram wStringBuffer4
	text " is"
	line "cute and lively"
	cont "precisely because"
	roll "I take it to a"
	cont "#MON CENTER"
	roll "every day."
	done
