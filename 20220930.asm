RWM	EQU	$0000
ROM	EQU	$C000
ROM2	EQU	$D000
RESET	EQU	$FFFE

		ORG 	RwM
vector2	RMB	(bogus-vector1)
var		RMB	1
	
		ORG	ROM
		LDY	#vector2
		LDX	#vector1
loop		LDAA	0,X
		CMPA	#'a
		BLO	sig
		CMPA	#'z
		BHI	sig
		STAA	0,y
		INY

sig		INX
		LDAA	0,x
		CMPA	#0
		BNE	loop
		STAA	0,y
FIN 		BRA	FIN

		ORG	ROM2
vector1	DB	'a,'s,'c,'i,'i,0
bogus		RMB	1




	ORG	RESET
	DW	ROM