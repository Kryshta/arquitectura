ROM	EQU	$0000
RWM	EQU	$C000

	ORG 	ROM
uno	RMB	1
dos	RMB	1
	
	
	ORG	RWM
	LDAA	#0
	INCA
	STAA	$00


FIN 	BRA	FIN

