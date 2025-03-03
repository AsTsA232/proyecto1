

numero rn r0 
sumuno rn r1
sumdos rn r2
suc rn r4

	area pn, code, readonly
	entry
	export __main
		
__main
	mov numero,#8
	mov sumuno,#0
	mov sumdos,#1
	
	
ciclo	
	
	add suc,sumuno
	add suc,sumdos
	mov sumuno,sumdos
	mov sumdos,suc
	cmp numero,suc
	mov suc,#0
	beq final
	b ciclo
	
final
fin b fin
	
	end