ChrisNameMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 10, TEXTBOX_Y - 1
	dw .MaleNames
	db 1 ; default option
	db 0 ; ????

.MaleNames:
	db STATICMENU_CURSOR | STATICMENU_PLACE_TITLE | STATICMENU_DISABLE_B ; flags
	db 5 ; items
	db "NEW NAME@"
MalePlayerNameArray:
	db "RED@" ;silvermirror -db "CHRIS@"
	db "ASH@" ;silvermirror -db "MAT@"
	db "JACK@" ;silvermirror -db "ALLAN@"
	db "CHRIS@" ;silvermirror -db "JON@"
	db 2 ; title indent
	db " NAME @" ; title

KrisNameMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 10, TEXTBOX_Y - 1
	dw .FemaleNames
	db 1 ; default option
	db 0 ; ????

.FemaleNames:
	db STATICMENU_CURSOR | STATICMENU_PLACE_TITLE | STATICMENU_DISABLE_B ; flags
	db 5 ; items
	db "NEW NAME@"
FemalePlayerNameArray:
	db "GREEN@" ;silvermirror -db "KRIS@"
	db "AMANDA@"
	db "JODI@" ;silvermirror -db "JUANA@"
	db "KRIS@" ;silvermirror -db "JODI@"
	db 2 ; title indent
	db " NAME @" ; title
