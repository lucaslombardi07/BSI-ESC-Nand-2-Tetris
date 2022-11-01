		// armazena os valores limites na memoria, @0 o valor tual, @1 limite min, @2 limite max
	@16373
	D=A
	@0
	M=D
	@1
	M=D
	@24575
	D=A
	@2
	M=D
		// verifica a entrada do teclado no endereço 24576 e pula
	@24576
	D=M
	@LOOPB
	D;JGT
	@LOOPW
	0;JMP
		// loop preto, primeiro verifica se linMax-atual = 0, se for volta a verificar o teclado.
(LOOPB)
	@2	
	D=M
	@0
	D=D-M
	@10
	D;JEQ
		// se não for o limite max, atual+1.
	@0
	M=M+1
		// Address = valor em @0, inverte o valor no local indicado
	@0
	D=M
	A=D
	M=!M
		// volta a verificar o teclado.
	@10
	0;JMP
		// loop branco, primeiro verifica se atual-linMin = 0, se for volta a verificar o teclado.
(LOOPW)
	@1
	D=M
	@0
	D=M-D
	@10
	D;JEQ
		// se não for, Address = valor em @0, inverte o valor no local indicado
	@0
	D=M
	A=D
	M=!M
		// atual-1
	@0
	M=M-1
	@10
	0;JMP
