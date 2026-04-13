MACRO phone
; trainer class, trainer id, map, callee time, callee script, caller time, caller script
	db \1, \2
	map_id \3
	db \4
	dba \5
	db \6
	dba \7
ENDM

PhoneContacts:
; entries correspond to PHONE_* constants
	table_width PHONE_CONTACT_SIZE, PhoneContacts
	phone TRAINER_NONE, PHONE_00,              N_A,                       0,       UnusedPhoneScript,        0,       UnusedPhoneScript
	phone TRAINER_NONE, PHONECONTACT_MOM,      PLAYERS_HOUSE_1F,          ANYTIME, MomPhoneCalleeScript,     0,       UnusedPhoneScript
	phone TRAINER_NONE, PHONECONTACT_OAK,      OAKS_LAB,                  ANYTIME, OakPhoneCalleeScript,     0,       OakPhoneCallerScript
	phone TRAINER_NONE, PHONECONTACT_BILL,     N_A,                       ANYTIME, BillPhoneCalleeScript,    0,       BillPhoneCallerScript
;	phone TRAINER_NONE, PHONECONTACT_BIKESHOP, ELMS_LAB,                  0,       UnusedPhoneScript,        0,       UnusedPhoneScript
	phone SCHOOLBOY,    JACK1,               NATIONAL_PARK,             ANYTIME, JackPhoneCalleeScript,    ANYTIME, JackPhoneCallerScript
	phone POKEFANF,     BEVERLY1,            ROUTE_11,                  ANYTIME, BeverlyPhoneCalleeScript, ANYTIME, BeverlyPhoneCallerScript
	phone SAILOR,       HUEY1,               OLIVINE_LIGHTHOUSE_2F,     ANYTIME, HueyPhoneCalleeScript,    ANYTIME, HueyPhoneCallerScript
	phone YOUNGSTER,    IAN1,                ROUTE_11,                  ANYTIME, IanPhoneCalleeScript,     ANYTIME, IanPhoneCallerScript
	phone FIREBREATHER, WALT1,               ROUTE_35,                  ANYTIME, WaltPhoneCalleeScript,    ANYTIME, WaltPhoneCallerScript
	phone LASS,         KRISE1,              MOUNT_MOON,                ANYTIME, KrisePhoneCalleeScript,   ANYTIME, KrisePhoneCallerScript
	phone COOLTRAINERM, GAVEN3,              ROUTE_23,                  ANYTIME, GavenPhoneCalleeScript,   ANYTIME, GavenPhoneCallerScript
	phone COOLTRAINERF, BETH1,               ROUTE_23,                  ANYTIME, BethPhoneCalleeScript,    ANYTIME, BethPhoneCallerScript
	phone BIRD_KEEPER,  JOSE2,               ROUTE_18,                  ANYTIME, JosePhoneCalleeScript,    ANYTIME, JosePhoneCallerScript
	phone COOLTRAINERF, REENA1,              ROUTE_18,                  ANYTIME, ReenaPhoneCalleeScript,   ANYTIME, ReenaPhoneCallerScript
	phone YOUNGSTER,    JOEY1,               ROUTE_30,                  ANYTIME, JoeyPhoneCalleeScript,    ANYTIME, JoeyPhoneCallerScript
	phone BUG_CATCHER,  WADE1,               ROUTE_31,                  ANYTIME, WadePhoneCalleeScript,    ANYTIME, WadePhoneCallerScript
	phone FISHER,       RALPH1,              ROUTE_32,                  ANYTIME, RalphPhoneCalleeScript,   ANYTIME, RalphPhoneCallerScript
	phone PICNICKER,    LIZ1,                ROUTE_32,                  ANYTIME, LizPhoneCalleeScript,     ANYTIME, LizPhoneCallerScript
	phone HIKER,        ANTHONY2,            ROUTE_33,                  ANYTIME, AnthonyPhoneCalleeScript, ANYTIME, AnthonyPhoneCallerScript
	phone CAMPER,       TODD1,               ROUTE_34,                  ANYTIME, ToddPhoneCalleeScript,    ANYTIME, ToddPhoneCallerScript
	phone PICNICKER,    GINA1,               ROUTE_9,                   ANYTIME, GinaPhoneCalleeScript,    ANYTIME, GinaPhoneCallerScript
	phone JUGGLER,      IRWIN1,              ROUTE_35,                  ANYTIME, IrwinPhoneCalleeScript,   ANYTIME, IrwinPhoneCallerScript
	phone BUG_CATCHER,  ARNIE1,              ROUTE_35,                  ANYTIME, ArniePhoneCalleeScript,   ANYTIME, ArniePhoneCallerScript
	phone SCHOOLBOY,    ALAN1,               ROUTE_11,                  ANYTIME, AlanPhoneCalleeScript,    ANYTIME, AlanPhoneCallerScript
	phone GENTLEMAN,    ALFRED1,             OLIVINE_LIGHTHOUSE_2F,     ANYTIME, AlfredPhoneCalleeScript,  ANYTIME, AlfredPhoneCallerScript
	phone LASS,         DANA1,               ROUTE_8,                   ANYTIME, DanaPhoneCalleeScript,    ANYTIME, DanaPhoneCallerScript
	phone SCHOOLBOY,    CHAD1,               ROUTE_38,                  ANYTIME, ChadPhoneCalleeScript,    ANYTIME, ChadPhoneCallerScript
	phone POKEFANM,     DEREK1,              ROUTE_39,                  ANYTIME, DerekPhoneCalleeScript,   ANYTIME, DerekPhoneCallerScript
	phone FISHER,       TULLY1,              ROUTE_12,                  ANYTIME, TullyPhoneCalleeScript,   ANYTIME, TullyPhoneCallerScript
	phone POKEMANIAC,   BRENT1,              ROUTE_10_SOUTH,            ANYTIME, BrentPhoneCalleeScript,   ANYTIME, BrentPhoneCallerScript
	phone PICNICKER,    TIFFANY3,            ROUTE_15,                  ANYTIME, TiffanyPhoneCalleeScript, ANYTIME, TiffanyPhoneCallerScript
	phone BIRD_KEEPER,  VANCE1,              ROUTE_20,                  ANYTIME, VancePhoneCalleeScript,   ANYTIME, VancePhoneCallerScript
	phone FISHER,       WILTON1,             ROUTE_44,                  ANYTIME, WiltonPhoneCalleeScript,  ANYTIME, WiltonPhoneCallerScript
	phone BLACKBELT_T,  KENJI1,              ROUTE_45,                  ANYTIME, KenjiPhoneCalleeScript,   ANYTIME, KenjiPhoneCallerScript
	phone HIKER,        PARRY1,              ROUTE_45,                  ANYTIME, ParryPhoneCalleeScript,   ANYTIME, ParryPhoneCallerScript
	phone PICNICKER,    ERIN1,               ROUTE_10_SOUTH,            ANYTIME, ErinPhoneCalleeScript,    ANYTIME, ErinPhoneCallerScript
	phone BUG_CATCHER,  DOUG1,               ROUTE_9,                   ANYTIME, DougPhoneCalleeScript,    ANYTIME, DougPhoneCallerScript
	phone BUG_CATCHER,  ROB1,                  VIRIDIAN_FOREST,           ANYTIME, RobPhoneCalleeScript,     ANYTIME, RobPhoneCallerScript
	phone FISHER,       KYLE1,               ROUTE_21,                  ANYTIME, KylePhoneCalleeScript,    ANYTIME, KylePhoneCallerScript
	phone CAMPER,       TANNER1,               ROUTE_24,                  ANYTIME, TannerPhoneCalleeScript,  ANYTIME, TannerPhoneCallerScript
	phone HIKER,        KENNY1,              ROCK_TUNNEL_B1F,           ANYTIME, KennyPhoneCalleeScript,   ANYTIME, KennyPhoneCallerScript
	phone COUPLE,       TIMANDSUE1,            ROUTE_6,                   ANYTIME, TimAndSuePhoneCalleeScript, ANYTIME, TimAndSuePhoneCallerScript
	phone BIRD_KEEPER,  JAMIE1,              ROUTE_14,                  ANYTIME, JamiePhoneCalleeScript,   ANYTIME, JamiePhoneCallerScript
	phone SCHOOLBOY,    TORIN1,              ROUTE_14,                  ANYTIME, TorinPhoneCalleeScript,   ANYTIME, TorinPhoneCallerScript
	phone SCHOOLBOY,    BILLY1,                ROUTE_3,                   ANYTIME, BillyPhoneCalleeScript,   ANYTIME, BillyPhoneCallerScript
	phone TEACHER,      HILLARY1,              ROUTE_25,                  ANYTIME, HillaryPhoneCalleeScript, ANYTIME, HillaryPhoneCallerScript
	phone TWINS,        KAYANDTIA1,          ROUTE_13,                  ANYTIME, KayAndTiaPhoneCalleeScript, ANYTIME, KayAndTiaPhoneCallerScript
	phone BIKER,        AIDEN1,              ROUTE_16,                  ANYTIME, AidenPhoneCalleeScript,   ANYTIME, AidenPhoneCallerScript
	phone BIKER,        EOIN1,               ROUTE_17,                  ANYTIME, EoinPhoneCalleeScript,    ANYTIME, EoinPhoneCallerScript
	phone BIKER,        REESE1,              ROUTE_14,                  ANYTIME, ReesePhoneCalleeScript,   ANYTIME, ReesePhoneCallerScript
	phone TRAINER_NONE, PHONECONTACT_BUENA,    GOLDENROD_DEPT_STORE_ROOF, ANYTIME, BuenaPhoneCalleeScript,   ANYTIME, BuenaPhoneCallerScript
	assert_table_length NUM_PHONE_CONTACTS + 1
