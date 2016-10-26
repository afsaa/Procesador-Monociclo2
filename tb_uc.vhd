
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_uc IS
END tb_uc;
 
ARCHITECTURE behavior OF tb_uc IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ucontrol
    PORT(
         op : IN  std_logic_vector(1 downto 0);
         op3 : IN  std_logic_vector(5 downto 0);
         ucout : OUT  std_logic_vector(5 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal op : std_logic_vector(1 downto 0) := (others => '0');
   signal op3 : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal ucout : std_logic_vector(5 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ucontrol PORT MAP (
          op => op,
          op3 => op3,
          ucout => ucout
        );

  
 

   -- Stimulus process
   stim_proc: process
   begin		
      
		op<= "10";
		op3 <= "000000";
		
      wait for 10 ns;

		op<= "10";
		op3 <= "000001";
		
      wait for 10 ns;	

		op<= "10";
		op3 <= "000101";
		
      wait for 10 ns;	

		op<= "10";
		op3 <= "000010";
		
      wait for 10 ns;	

		op<= "10";
		op3 <= "000110";
		
      wait for 10 ns;	

		op<= "10";
		op3 <= "000011";
		
      wait for 10 ns;	

		op<= "10";
		op3 <= "000111";
		
      wait for 10 ns;	

		op<= "10";
		op3 <= "000100";
		
      wait for 10 ns;		

    
      wait;
   end process;

END;
