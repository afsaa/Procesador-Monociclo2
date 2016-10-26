
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY MUX_32_TB IS
END MUX_32_TB;
 
ARCHITECTURE behavior OF MUX_32_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUX_32
    PORT(
         clk : IN  std_logic;
         opcion : IN  std_logic_vector(1 downto 0);
         entrada1 : IN  std_logic_vector(31 downto 0);
         entrada2 : IN  std_logic_vector(31 downto 0);
         salida : INOUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal opcion : std_logic_vector(1 downto 0) := (others => '0');
   signal entrada1 : std_logic_vector(31 downto 0) := (others => '0');
   signal entrada2 : std_logic_vector(31 downto 0) := (others => '0');

	--BiDirs
   signal salida : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUX_32 PORT MAP (
          clk => clk,
          opcion => opcion,
          entrada1 => entrada1,
          entrada2 => entrada2,
          salida => salida
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
		entrada1 <= x"00010101";
		entrada2 <= x"00000001";
      wait for 10 ns;
		opcion <= "00";
		wait for 100 ns;
		opcion <= "01";
		wait for 50 ns;
		
      wait;
   end process;

END;
