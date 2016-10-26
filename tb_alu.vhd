--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:42:25 10/06/2016
-- Design Name:   
-- Module Name:   C:/Users/utp.CRIE/Desktop/arqproyect/ALU/tb_alu.vhd
-- Project Name:  ALU
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: alu32
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_alu IS
END tb_alu;
 
ARCHITECTURE behavior OF tb_alu IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT alu32
    PORT(
         crs1 : IN  std_logic_vector(31 downto 0);
         crs2 : IN  std_logic_vector(31 downto 0);
         ucalu : IN  std_logic_vector(5 downto 0);
         alu_result : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal crs1 : std_logic_vector(31 downto 0) := (others => '0');
   signal crs2 : std_logic_vector(31 downto 0) := (others => '0');
   signal ucalu : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal alu_result : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: alu32 PORT MAP (
          crs1 => crs1,
          crs2 => crs2,
          ucalu => ucalu,
          alu_result => alu_result
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      
      

      crs1 <= "00000000000000000000000000000010";
 		crs2 <= "00000000000000000000000000000001";
		ucalu <= "000000";
		
		wait for 10 ns;	

      crs1 <= "00000000000000000000000000000010";
 		crs2 <= "00000000000000000000000000000001";
		ucalu <= "000001";
		
		wait for 10 ns;	

      crs1 <= "00000000000000000000000000000010";
 		crs2 <= "00000000000000000000000000000001";
		ucalu <= "000010";
		
		wait for 10 ns;	

      crs1 <= "00000000000000000000000000000010";
 		crs2 <= "00000000000000000000000000000001";
		ucalu <= "000011";
		
		wait for 10 ns;	

      crs1 <= "00000000000000000000000000000010";
 		crs2 <= "00000000000000000000000000000001";
		ucalu <= "000110";
		
		wait for 10 ns;	

      crs1 <= "00000000000000000000000000000010";
 		crs2 <= "00000000000000000000000000000001";
		ucalu <= "000101";
		
		wait for 10 ns;	

      crs1 <= "00000000000000000000000000000010";
 		crs2 <= "00000000000000000000000000000001";
		ucalu <= "000110";
		
		wait for 10 ns;	

      crs1 <= "00000000000000000000000000000010";
 		crs2 <= "00000000000000000000000000000001";
		ucalu <= "000111";
		
	
		

      wait;
   end process;

END;
