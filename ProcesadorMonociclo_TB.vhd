LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY ProcesadorMonociclo_TB IS
END ProcesadorMonociclo_TB;
 
ARCHITECTURE behavior OF ProcesadorMonociclo_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ProcesadorMonociclo
    PORT(
         clk_in : IN  std_logic;
         reset_in : IN  std_logic;
         ALUresult : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk_in : std_logic := '0';
   signal reset_in : std_logic := '0';

 	--Outputs
   signal ALUresult : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_in_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ProcesadorMonociclo PORT MAP (
          clk_in => clk_in,
          reset_in => reset_in,
          ALUresult => ALUresult
        );

   -- Clock process definitions
   clk_in_process :process
   begin
		clk_in <= '0';
		wait for clk_in_period/2;
		clk_in <= '1';
		wait for clk_in_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin	
	
      reset_in <= '1';
      	wait for 50 ns;	
		reset_in <= '0'; 

      wait;
   end process;

END;
