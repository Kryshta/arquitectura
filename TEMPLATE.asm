RWM	EQU	$0000
ROM	EQU	$C000
RESET	EQU	$FFFE

	ORG 	RwM
	
	
	ORG	ROM



FIN 	BRA	FIN

	ORG	RESET
	DW	ROM