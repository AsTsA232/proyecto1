

numero rn r0 
sumuno rn r1
sumdos rn r2
suc rn r4
punt rn r5

	area pn, code, readonly
	entry
	export __main

		
__main
	mov numero,#34
	;condicional
	
	mov sumuno,#0
	mov sumdos,#1
	ldr punt,=0x20000000
	
ciclo	
;sucesion
	add suc,sumuno
	add suc,sumdos
	mov sumuno,sumdos
	mov sumdos,suc
	cmp numero,suc
;carga en la memoria
	
	str suc, [punt]
	add punt,#1
;reinicio del ciclo
	mov suc,#0
	beq final
	b ciclo
	
final
fin b fin
	
	end