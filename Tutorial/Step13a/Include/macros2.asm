macro Push_Pop (Arg1)
.if Arg1 xor 1;	// начало блока услованой компил€ции
    push ar0, gr0;	
    push ar1, gr1;	
    push ar2, gr2;	
.endif;         // конец блока условной компил€ции
.if Arg1;       // начало блока условной компил€ции
    pop ar2, gr2;	
    pop ar1, gr1;	
    pop ar0, gr0;	
.endif;         // конец блока условной компил€ции
end  Push_Pop;	
