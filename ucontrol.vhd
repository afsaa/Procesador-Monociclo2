
library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;



entity ucontrol is
    Port ( op : in  STD_LOGIC_VECTOR (1 downto 0);
           op3 : in  STD_LOGIC_VECTOR (5 downto 0);
           ucout : out  STD_LOGIC_VECTOR (5 downto 0));
end ucontrol;

architecture arq_uc of ucontrol is

begin
	process(op,op3)
		begin
		
		if(op = "10")then
			
			if(op3 = "000000")then --add
				ucout <= "000000";
			end if;
			
			if(op3 = "000001")then --and
				ucout <= "000001";
			end if;
			
			if(op3 = "000101")then --nand
				ucout <= "000010";
			end if;
			
			if(op3 = "000010")then --or
				ucout <= "000011";
			end if;
			
			if(op3 = "000110")then --nor
				ucout <= "000100";
			end if;
			
			if(op3 = "000011")then --xor
				ucout <= "000101";
			end if;
			
			if(op3 = "000111")then --xnor
				ucout <= "000110";
			end if;
			
			if(op3 = "000100")then --sub
				ucout <= "000111";
			end if;
			if(op3 = "010000")then --addcc
				ucout <= "001000";
			end if;
			if(op3 = "010100")then --subcc
				ucout <= "001001";
			end if;
			if(op3 = "001000")then --addx
				ucout <= "001010";
			end if;
			if(op3 = "011000")then --addxcc
				ucout <= "001011";
			end if;
			if(op3 = "001100")then --subx
				ucout <= "001111";
			end if;
			if(op3 = "011100")then --subxcc
				ucout <= "010000";
			end if;
			if(op3 = "010010")then --orcc
				ucout <= "010001";
			end if;
			if(op3 = "010001")then --andcc
				ucout <= "010010";
			end if;
			if(op3 = "010011")then --xorcc
				ucout <= "010011";
			end if;
			if(op3 = "010101")then --andncc
				ucout <= "010100";
			end if;
			if(op3 = "010110")then --orncc
				ucout <= "010101";
			end if;
			if(op3 = "010111")then --xnorcc
				ucout <= "010110";
			end if;
			
			if(op3 = "100101")then --SLL
				ucout <= "010111";
				
			if(op3 = "100110")then --SRL
				ucout <= "011000";
			end if;
			if(op3 = "111100")then --Save
				ucout <= "011001";
				
			if(op3 = "111101")then --Restore
				ucout <= "011010";
			end if;
			
			end if;
			
			
			end if;
						
			
			
			
			
		end if;
	
	end process;

end arq_uc;

