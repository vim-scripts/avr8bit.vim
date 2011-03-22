" Vim syntax file
" Language:     Avr 8bit Assembler (Atmel's microcontroller)
" Maintainer:   Alfred Hell <alhell@gmx.net>
" Last Change:  2011 Mar 21
" Revision:     0.3
" for M8, M16, ATTiny2313, M48, M88, M168, 4434, 8535

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn keyword avrTodo NOTE TODO XXX contained

syn case ignore

" Directives
syn match avrDirective		"\.[a-z]\+"

syn match avrIdentifier 	"[a-z_$][a-z0-9_$]*"
syn match avrLabel      	"^[A-Z_$][A-Z0-9_$]*:"

syn match decNumber		"0\+[1-7]\=[\t\n$,; ]"
syn match decNumber		"[1-9]\d*"
syn match octNumber		"0[oO][0-7]\+"
syn match octNumber		"0[0-7][0-7]\+"
syn match hexNumber		"0[xX][0-9A-Fa-f]\+"
syn match hexNumber     	"\$[0-9A-Fa-f]\+\>"
syn match binNumber		"0[bB][0-1]*"

syn match avrComment    	";.*" contains=avrTodo

syn region avrString    	start=+"+ end=+"+

" REGISTER
syn keyword avrRegister		SREG SPH SPL SPMCR ASSR WDTCR 
syn keyword avrRegister		MCUCR MCUCSR OSCCAL OCDR SFIOR 
syn keyword avrRegister		SPMCSR MCUSR CLKPR DIDR
syn keyword avrRegister		GTCCR  GPIOR2 GPIOR1 GPIOR0 

" EEPROM
syn keyword avrRegister         EEARH EEARL EEDR EECR EEAR

" PORT
syn match avrRegister           "PORT[A-F]" 
syn match avrRegister           "DDR[A-F]" 
syn match avrRegister           "PIN[A-F]" 

" INT
syn keyword avrRegister         GICR GIFR TIMSK TIFR TWCR EIFR PCMSK 

" TiCou
syn keyword avrRegister         TCCR1A TCCR1B TCNT1H TCNT1L OCR1AH OCR1AL OCR1BH 
syn keyword avrRegister         OCR1BL ICR1H ICR1L TCCR2 TCNT2 OCR2 TCCR0 TCNT0 
syn keyword avrRegister         GIMSK ICR1H ICR1L TCCR0B TCCR0A TCCR1C OCR0 
syn keyword avrRegister         OCR0B OCR0A 

" UART
syn keyword avrRegister         UDR UCSRA UCSRB UBRRL UCSRC UBRRH

" ADC
syn keyword avrRegister         ACSR ADMUX ADCSRA ADCH ADCL 

" USI
syn keyword avrRegister         USIDR USISR USICR 

" SPI
syn keyword avrRegister         SPDR SPSR SPCR 

" TWI
syn keyword avrRegister         TWDR TWAR TWSR TWBR 

" Rx
syn match avrRegister           "\<[Rr]\([0-9]\|[0-2][0-9]\|30\|31\)\>" 
syn keyword avrRegister 	ZL ZH YL YH XL XH


" REGISTER BITS
syn match avrRegisterPart	"PCINT[0-9]"
syn match avrRegisterPart	"PCINT[1-3][0-9]"
syn match avrRegisterPart	"CAL[0-6]"
syn match avrRegisterPart	"TWA[0-6]"
syn match avrRegisterPart	"TWS[0-7]"
syn match avrRegisterPart	"TWAM[0-6]"
syn match avrRegisterPart	"PORT[A-F][0-7]"
syn match avrRegisterPart	"DDR[A-F][0-7]"
syn match avrRegisterPart	"PIN[A-F][0-7]"
syn match avrRegisterPart	"P[A-F][0-7]"

" eeprom
syn keyword avrRegisterPart     EEAR8 EERIE EEMWE EEWE EERE EEAR7 EEAR6 EEAR5 EEAR4
syn keyword avrRegisterPart     EEAR3 EEAR2 EEAR1 EEAR0 EEPE EEMPE EEPM1 EEPM0  

" UART
syn keyword avrRegisterPart     RXC TXC UDRE FE OR DOR PE U2X MPCM RXCIE TXCIE UDRIE 
syn keyword avrRegisterPart     RXEN TXEN UCSZ2 RXB8 TXB8 UMSEL01 UMSEL00 CHR9 UPE
syn keyword avrRegisterPart     UPM01 UPM00 USBS0 UDORD0 UCPHA0 UCPOL0 RXCIE0 TXCIE0
syn keyword avrRegisterPart     UDRIE0 RXEN0 TXEN0 UCSZ02 RXB80 TXB80 RXC0 TXC0 UDRE0 
syn keyword avrRegisterPart     FE0 DOR0 UPE0 U2X0 MPCM0 URSEL UMSEL UPM1 UPM0 USBS

" ADC
syn keyword avrRegisterPart     ACD ACBG ACO ACI ACIE ACIC
syn keyword avrRegisterPart     ACIS1 ACIS0 REFS1 REFS0 ADLAR MUX4 MUX3 MUX2 MUX1 MUX0
syn keyword avrRegisterPart     ADEN ADSC ADATE ADIF ADIE ADPS2 ADPS1 ADPS0 
syn keyword avrRegisterPart     ADTS2 ADTS1 ADTS0 ADC5D ADC4D ADC3D ADC2D ADC1D ADC0D 

" TWI				
syn keyword avrRegisterPart     TWGCE TWPS1 TWPS0 SPIF WCOL SPI2X 
syn keyword avrRegisterPart     SPIE SPE DORD MSTR CPOL CPHA SPR1 SPR0
syn keyword avrRegisterPart     TWSTO TWWC TWEN TWIE 
syn keyword avrRegisterPart     TWINT TWEA TWSTA TWSTO TWWC TWEN TWIE


" TimerCounter
syn keyword avrRegisterPart     INT1 INT0 INT2 IVSEL IVCE INTF1 INTF0 INTF2 OCIE2
syn keyword avrRegisterPart     TOIE2 TICIE1 OCIE1A OCIE1B TOIE1 OCIE0 TOIE0 OCF2
syn keyword avrRegisterPart     TOV2 ICF1 OCF1A OCF1B TOV1 OCF0 TOV0
syn keyword avrRegisterPart     FOC0 WGM00 COM01 COM00 WGM01 CS02 CS01 CS00 PSR10 
syn keyword avrRegisterPart     COM1A0 COM1B1 COM1B0 FOC1A FOC1B WGM11 WGM10 COM1A1
syn keyword avrRegisterPart     ICNC1 ICES1 WGM13 WGM12 CS12 CS11 CS10 
syn keyword avrRegisterPart     FOC2 WGM20 COM21 COM20 WGM21 CS22 CS21 CS20 
syn keyword avrRegisterPart     AS2 TCN2UB OCR2UB TCR2UB PSR2 FOC2A FOC2B WGM22
syn keyword avrRegisterPart     RWWSRE BLBSET PGWRT PGERS SPMEN TWINT TWEA TWSTA SPMIE RWWSB
syn keyword avrRegisterPart     ICIE1 ICF1 OCIE0A OCIE0B OCF0A OCF0B RFLB FOC0B WGM02 
syn keyword avrRegisterPart     WGM01 WGM00 COM0A1 COM0A0 COM0B0 COM0B1
syn keyword avrRegisterPart     CLKPCE CLKPS3 CLKPS2 CLKPS1 CLKPS0 FOC0A OCIE2B OCIE2A TOIE2 PCIE2 PCIE1
syn keyword avrRegisterPart     TCN2UB OCR2AUB OCR2BUB TCR2AUB TCR2BUB OCF2B OCF2A OCF0A OCF0B

" other
syn keyword avrRegisterPart     SM2 SE SM1 SM0 ISC11 ISC10 
syn keyword avrRegisterPart     ISC01 ISC00 JTD ISC2 JTRF WDRF BORF EXTRF PORF
syn keyword avrRegisterPart     ADTS2 ADTS1 ADTS0 ADHSM ACME PUD CTPB PUD
syn keyword avrRegisterPart     WDTOE WDE WDP2 WDP1 WDP0 UCSZ1 UCSZ0 UCPOL 
syn keyword avrRegisterPart     PCIE PCIF RFLB WDIF WDIE WDP3
syn keyword avrRegisterPart     WDCE USISF USIOIF USIPF USIDC 
syn keyword avrRegisterPart     USICNT3 USICNT2 USICNT1 USICNT0 USISIE USIOIE USIWM1
syn keyword avrRegisterPart     USIWM0 USICS1 USICS0 USICLK USITC AIN1D AIN0D
syn keyword avrRegisterPart     TWS3 TWPS1 TWPS0 EXCLK AS2 TWBR TWSR TWGCEADFR
syn keyword avrRegisterPart     PRTWI PRTIM2 PRTIM0 PRTIM1 PRSPI PRUSART0 PCIE0 
syn keyword avrRegisterPart     PRADC WDIF WDIE WDP3 WDCE WDE WDP2 WDP1 WDP0 SELFPRGEN
syn keyword avrRegisterPart     IVSEL IVCE TSM PSRASY PSRSYNC 
syn keyword avrRegisterPart     PCIF2 PCIF1 PCIF0



" OpCodes...
syn keyword avrOpcode  		ADD ADC ADIW SUB SUBI SBC SBCI SBIW AND ANDI OR ORI EOR
syn keyword avrOpcode  		COM NEG SBR CBR INC DEC TST CLR SER MUL MULS MULSU FMUL
syn keyword avrOpcode  		FMULS FMULSU RJMP IJMP EJMP JMP RCALL ICALL EICALL CALL
syn keyword avrOpcode  		RET RETI CPSE CP CPC CPI SBRC SBRS SBIC SBIS BRBS BRBC
syn keyword avrOpcode  		BREQ BRNE BRCS BRCC BRSH BRLO BRMI BRPL BRGE BRLT BRHS
syn keyword avrOpcode  		BRHC BRTS BRTC BRVS BRVC BRIE BRID MOV MOVW LDI LDS LD
syn keyword avrOpcode  		LDD STS ST STD LPM ELPM SPM IN OUT PUSH POP LSL LSR ROL
syn keyword avrOpcode  		ROR ASR SWAP BSET BCLR SBI CBI BST BLD SEC CLC SEN CLN
syn keyword avrOpcode  		SEZ CLZ SEI CLI SES CLS SEV CLV SET CLT SEH CLH BREAK
syn keyword avrOpcode  		NOP SLEEP WDR


syn case match

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_avr_syntax_inits")
  if version < 508
    let did_avr_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink avrTodo		Todo
  HiLink avrComment		Comment
  HiLink avrDirective		PreProc
  HiLink avrLabel		Label
  HiLink avrString		String
  HiLink avrOpcode		Statement
  HiLink avrRegister		StorageClass
  HiLink avrRegisterPart	Special
  HiLink hexNumber		Number
  HiLink decNumber		Number
  HiLink octNumber		Number
  HiLink binNumber		Number
  HiLink avrIdentifier		Identifier

  delcommand HiLink
endif

let b:current_syntax = "avr8bit"

" vim: ts=8
