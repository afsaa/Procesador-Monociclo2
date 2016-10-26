library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity MUX_32 is
port (clk : in std_logic;
			 opcion  : in std_logic_vector(0 downto 0);
          entrada1 : in std_logic_vector(31 downto 0);
          entrada2 : in std_logic_vector(31 downto 0);
          salida : inout std_logic_vector(31 downto 0));
end MUX_32;

architecture Behavioral of MUX_32 is


begin
process (opcion, entrada1, entrada2, salida)
begin

   if (opcion = "0") then
		salida <= entrada1;
	end if;
	
	if (opcion = "1") then
		salida <= entrada2;
	end if;
	
	
end process;

end Behavioral;

