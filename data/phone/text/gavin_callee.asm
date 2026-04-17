GavinAnswerPhoneText:
	text "Hello, this is"
	line "@"
	text_ram wStringBuffer3
	text " speaking…"

	para "Hi, <PLAYER>!"
	line "Good morning!"
	done

GavinAnswerPhoneDayText:
	text "Hello, this is"
	line "@"
	text_ram wStringBuffer3
	text " speaking…"

	para "Hi, <PLAYER>!"
	done

GavinAnswerPhoneNiteText:
	text "Hello, this is"
	line "@"
	text_ram wStringBuffer3
	text " speaking…"

	para "Hi, <PLAYER>!"
	line "Good evening!"
	done

GavinGreetText:
	text "<PLAYER>, good"
	line "morning!"

	para "It's me, @"
	text_ram wStringBuffer3
	text "."
	line "How are you doing?"
	done

GavinGreetDayText:
	text "Hi, <PLAYER>!"

	para "It's me, @"
	text_ram wStringBuffer3
	text "."
	line "How are you doing?"
	done

GavinGreetNiteText:
	text "<PLAYER>, good"
	line "evening!"

	para "It's me, @"
	text_ram wStringBuffer3
	text "."
	line "How are you doing?"
	done

GavinGenericText:
	text "How are your"
	line "#MON doing?"

	para "My @"
	text_ram wStringBuffer4
	text "'s"
	line "doing as great as"
	cont "ever."

	para "I'm going to keep"
	line "training and be a"
	cont "#MON CHAMP!"
	done
