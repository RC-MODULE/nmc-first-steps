global _Copy: label;  // объявление глобальной метки _Copy
import from macros.mlb;	
begin ".textAAA"	
<_Copy>	
    ar5 = ar7 - 2;
	
    Push_Pop(0);      // подстановка макроса (сохранение регистров)
		
    ar0 = [--ar5];    // в ar0 адрес исходного массива А
    ar1 = [--ar5];    // в ar1 адрес массива результата В


    AAA (ar0, ar1, 16); // подстановка макроса ААА
		
    Push_Pop(1);      // подстановка макроса (восстановление регистров)
    return;	
end ".textAAA";	
