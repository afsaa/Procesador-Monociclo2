
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;


entity PC is
port(CLK, CLR : in std_logic;
			entrada_pc: in std_logic_vector(31 downto 0);
         salida_pc : out std_logic_vector(31 downto 0));
end PC;

architecture Behavioral of PC is

	signal tmp: std_logic_vector(31 downto 0);
	
begin
    process (entrada_pc, CLK, CLR)
    begin
		  
        if (CLK'event and CLK='1') then
          if (CLR='1') then
            salida_pc <= "00000000000000000000000000000000";
          else
            salida_pc <= entrada_pc;
          end if;
        end if;
    end process;

end Behavioral;

