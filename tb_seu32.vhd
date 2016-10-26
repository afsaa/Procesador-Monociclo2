
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_seu32 IS
END tb_seu32;
 
ARCHITECTURE behavior OF tb_seu32 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT seu_32
    PORT(
         inme13 : IN  std_logic_vector(12 downto 0);
         seu_out : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal inme13 : std_logic_vector(12 downto 0) := (others => '0');

 	--Outputs
   signal seu_out : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: seu_32 PORT MAP (
          inme13 => inme13,
          seu_out => seu_out
        );


 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 10 ns;	
		
		inme13 <= "0000000000001";
      
		wait for 10 ns;	
		
		inme13 <= "1000000000000";

      wait;
   end process;

END;

