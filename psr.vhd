library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity psr is
    Port ( Clk : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
			  ncwp : in  STD_LOGIC:='0';
           nzvc : in  STD_LOGIC_VECTOR (3 downto 0);
			  cwp : out  STD_LOGIC;
           Carry : out  STD_LOGIC);
			  
end psr;

architecture arq_psr of psr is

begin
process(Clk, Reset,ncwp, nzvc)
begin 
	if Reset='1' then
			Carry <= '0';
		else
			if rising_edge(clk) then
				Carry<=nzvc(0);
				cwp<=ncwp;
			end if;
	end if;
	
end process;
end arq_psr;
