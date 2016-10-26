
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY tb_psr IS
END tb_psr;
 
ARCHITECTURE behavior OF tb_psr IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT psr
    PORT(
         Clk : IN  std_logic;
         Reset : IN  std_logic;
         ncwp : IN  std_logic;
         nzvc : IN  std_logic_vector(3 downto 0);
         cwp : OUT  std_logic;
         Carry : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal Reset : std_logic := '0';
   signal ncwp : std_logic := '0';
   signal nzvc : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal cwp : std_logic;
   signal Carry : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: psr PORT MAP (
          Clk => Clk,
          Reset => Reset,
          ncwp => ncwp,
          nzvc => nzvc,
          cwp => cwp,
          Carry => Carry
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      
		Reset <= '1';
		nzvc <= "0001";
		ncwp <= '1';		
		
      wait for 100 ns;	

      Reset <= '1';
		nzvc <= "0010";
		ncwp <= '0';		
		
      wait for 100 ns; 
		
		Reset <= '0';
		nzvc <= "0001";
		ncwp <= '1';		
		

      wait;
   end process;

END;
