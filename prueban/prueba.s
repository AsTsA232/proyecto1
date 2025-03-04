

numero rn r0 
sumuno rn r1
sumdos rn r2
suc rn r4
punt rn r5

	area pn, code, readonly
	entry
	export __main

		
__main
	mov numero,#45
	;condicional
	cmp numero, #46
	bge fin
	mov sumuno,#0
	mov sumdos,#1
	ldr punt,=0x20000000
	b ciclo
	
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
	cmp numero, #46
	bge fin
	b ciclo
	
final
	mov numero, suc
fin b fin
	
	end