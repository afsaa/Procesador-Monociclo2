
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY nPrgramCounter_tb IS
END nPrgramCounter_tb;
 
ARCHITECTURE behavior OF nPrgramCounter_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT nProgramCounter
    PORT(
         nPC_in : IN  std_logic_vector(31 downto 0);
         nPC_out : OUT  std_logic_vector(31 downto 0);
         clk : IN  std_logic;
         reset : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal nPC_in : std_logic_vector(31 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal nPC_out : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: nProgramCounter PORT MAP (
          nPC_in => nPC_in,
          nPC_out => nPC_out,
          clk => clk,
          reset => reset
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
		begin
			nPC_in <= "00000000000000000000000000000000";
			clk <= '1';
			wait for 100 ns;
			reset <= '1';
			clk <= '0';
			wait for 100 ns;
			reset <= '0';
			wait for 100 ns;
			clk <= '1';
		wait;
   end process;

END;
