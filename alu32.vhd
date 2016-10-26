
library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_arith.all;

entity alu32 is
    Port ( crs1 : in  STD_LOGIC_VECTOR (31 downto 0);
           crs2 : in  STD_LOGIC_VECTOR (31 downto 0);
           ucalu : in  STD_LOGIC_VECTOR (5 downto 0);
           alu_result : out  STD_LOGIC_VECTOR (31 downto 0);
			  c : in  STD_LOGIC);
end alu32;

architecture arq_alu of alu32 is
 signal entero_crs2: integer;
begin

process(crs1,crs2,ucalu,c)
	begin
		if(ucalu = "000000")then  --suma
			alu_result <= crs1 + crs2;
		end if;
		
		if(ucalu = "000111")then --sub
			alu_result <= crs1 - crs2;
		end if;
		
		if(ucalu = "000001")then --and
			alu_result <= (crs1 and crs2);
		end if;
		
		if(ucalu = "000010")then --nand
			alu_result <= (crs1  nand crs2);
		end if;
		
		if(ucalu = "000011")then -- or
			alu_result <= (crs1 or crs2);
		end if;
		
		if(ucalu = "000110")then --nor
			alu_result <=(crs1 nor crs2);
		end if;
		
		if(ucalu = "000101")then --xor
			alu_result <= (crs1 xor crs2);
		end if;	
		
		if(ucalu = "000110")then --xnor
			alu_result <= (crs1 xnor crs2);
		end if;
		
		if(ucalu = "001000")then --addcc
			alu_result <= (crs1 + crs2);
		end if;
		
		if(ucalu = "001001")then --subcc
			alu_result <= (crs1 - crs2);
		end if;
				
		if(ucalu = "001010")then --addx
			alu_result <= (crs1 + crs2 + c);
		end if;
				
		if(ucalu = "001011")then --addxcc
			alu_result <= (crs1 + crs2 + c);
		end if;	
		
		if(ucalu = "001100")then --subx
			alu_result <= (crs1 - crs2 + c);
		end if;
				
		if(ucalu = "001101")then --subxcc
			alu_result <= (crs1 - crs2 + c);
		end if;
				
		if(ucalu = "001110")then --orcc
			alu_result <= (crs1 or crs2);
		end if;
				
		if(ucalu = "001111")then --andcc
			alu_result <= (crs1 and crs2);
		end if;
					
		if(ucalu = "010000")then --xorcc
			alu_result <= (crs1 xor crs2);
		end if;
				
		if(ucalu = "010001")then --andncc
			alu_result <= (crs1 nand crs2);
		end if;
				
		if(ucalu = "010010")then --orncc
			alu_result <= (crs1 nor crs2);
		end if;
				
		if(ucalu = "010011")then --xnorcc
			alu_result <= (crs1 xnor crs2);
		end if;
		
		if(ucalu = "010111")then --SLL
--			entero_crs2 <= conv_integer(crs2(4 downto 0));
--			alu_result <= conv_std_logic_vector ((crs1 SLL entero_crs2),32);
		end if;
		
		if(ucalu = "010011")then --SRL
--			entero_crs2 <= conv_integer(crs2(4 downto 0));
--			alu_result <= conv_std_logic_vector ((crs1 SRL entero_crs2),32);
		end if;

		if(ucalu = "010011")then --Save (Rs1 viejo + Rs2 viejo) => Rd nuevo
			alu_result <= (crs1 + crs2);
		end if;
		
		if(ucalu = "010011")then --Restore (Rs1 viejo + Rs2 viejo) => Rd nuevo
			alu_result <= (crs1 + crs2);
		end if;
		
		

end process;

end arq_alu;

