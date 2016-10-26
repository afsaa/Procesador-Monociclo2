LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY registerFile_tb IS
END registerFile_tb;
 
ARCHITECTURE behavior OF registerFile_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT registerFile
    PORT(
         rs1 : IN  std_logic_vector(4 downto 0);
         rs2 : IN  std_logic_vector(4 downto 0);
         rd : IN  std_logic_vector(4 downto 0);
         DWR : IN  std_logic_vector(31 downto 0);
         reset : IN  std_logic;
         crs1 : OUT  std_logic_vector(31 downto 0);
         crs2 : OUT  std_logic_vector(31 downto 0)
         
        );
    END COMPONENT;
    

   --Inputs
   signal rs1 : std_logic_vector(4 downto 0) := (others => '0');
   signal rs2 : std_logic_vector(4 downto 0) := (others => '0');
   signal rd : std_logic_vector(4 downto 0) := (others => '0');
   signal DWR : std_logic_vector(31 downto 0) := (others => '0');
   signal reset : std_logic := '0';

 	--Outputs
   signal crs1 : std_logic_vector(31 downto 0);
   signal crs2 : std_logic_vector(31 downto 0);
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: registerFile PORT MAP (
          rs1 => rs1,
          rs2 => rs2,
          rd => rd,
          DWR => DWR,
          reset => reset,
          crs1 => crs1,
          crs2 => crs2
          
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
		rs1 <= "00001";
		rs2 <= "00010";
		rd <= "00000";
      wait for 100 ns;
		rs1 <= "00011";
		rs2 <= "00110";
		rd <= "00000";      
		wait for 100 ns;
		rs1 <= "00011";
		rs2 <= "01010";
		rd <= "00011";
		wait;
   end process;

END;
