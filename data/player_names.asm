ChrisNameMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 3, 11, TEXTBOX_Y - 1
	dw .MaleNames
	db 1 ; default option
	db 0 ; ????

.MaleNames:
	db STATICMENU_CURSOR | STATICMENU_PLACE_TITLE | STATICMENU_DISABLE_B ; flags
	db 3 ;5 ; items
	db "NEW NAME@"
MalePlayerNameArray:
	db "RED@"
	db "ASH@"
;	db "ETHAN@"
;	db "CHRIS@"
	db 2 ; title indent
	db " NAME @" ; title

KrisNameMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 3, 11, TEXTBOX_Y - 1
	dw .FemaleNames
	db 1 ; default option
	db 0 ; ????

.FemaleNames:
	db STATICMENU_CURSOR | STATICMENU_PLACE_TITLE | STATICMENU_DISABLE_B ; flags
	db 3 ;5 ; items
	db "NEW NAME@"
FemalePlayerNameArray:
	db "GREEN@"
	db "LEAF@"
;	db "LYRA@"
;	db "KRIS@"
	db 2 ; title indent
	db " NAME @" ; title
