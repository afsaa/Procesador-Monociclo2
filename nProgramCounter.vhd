
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nProgramCounter is
    Port ( nPC_in : in  STD_LOGIC_VECTOR (31 downto 0);
           nPC_out : out  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC);
end nProgramCounter;

architecture Behavioral of nProgramCounter is

begin
process (nPC_in, clk, reset)
begin
	if (reset = '1') then
		nPC_out <= "00000000000000000000000000000000";
	else
		if (rising_edge(clk)) then
			nPC_out <= nPC_in;
		end if;
	end if;
end process;

end Behavioral;

