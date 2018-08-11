		# Condicoes iniciais do programa
		addi $s1,$0,-1
		addi $s2,$0,3
		
		
		# Numero padrao de comparacao para todos os casos com s2
		addi $a0,$0,32
		
		bltz $s1,s1_negativo
		
		# Label fim sera executada como instrução break do switch-case
		
s1_positivo_ou_zero:
		bgt $s2,$a0,caso1
		beq $s2,$a0,caso2
		# Caso 3 executado por default por essa label
		# s2 < 32
		addi $s3,$0,3
		j fim

caso1:
		addi $s3,$0,1
		j fim
		
caso2:
		addi $s3,$0,2
		j fim		
		
s1_negativo:
		bgt $s2,$a0,caso4
		beq $s2,$a0,caso5
		# Caso 6 executado por default pela label
		# $s2 < 32
		addi $s3,$0, 6
		j fim
		
caso4:
		addi $s3,$0,4
		j fim
		
caso5:
		addi $s3,$0,5
		
fim: