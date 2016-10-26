
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_signed.all;
use IEEE.std_logic_arith.all;

entity WM is

port (	 rst : in std_logic:='0';
			 rs1 : in std_logic_vector(4 downto 0);
			 rs2  : in std_logic_vector(4 downto 0);
          rd : in std_logic_vector(4 downto 0);
          OP3 : in std_logic_vector(5 downto 0);
          OP : in std_logic_vector(1 downto 0);
			 cwp : in std_logic:='0';
			 ncwp : out std_logic:='0';
			 nrs1 : out std_logic_vector(5 downto 0);
			 nrs2 : out std_logic_vector(5 downto 0);
			 nrd : out std_logic_vector(5 downto 0)
			 );
end WM;	

architecture Behavioral of WM is
 
begin
process(rst, cwp, rs1, rs2, rd, OP, OP3)
	begin
			if (rst = '1') then
				ncwp <= '0';
				nrs1 <= "000000";
				nrs2 <= "000000";
				nrd <= "000001";
			end if;
			
			if (rst = '0') then
			
				if(OP = "10") then 	
					case  OP3  is
						when "111100" => --SAVE
							ncwp <= '0';
						when "111101" => --RESTORE
							ncwp <= '1';
						when others => null;
					end case;
				end if;
			
				-- RS1
				if ( rs1 >= "00000" and rs1 <= "00111") then --r[0] - r[7]
					nrs1 <= conv_std_logic_vector(conv_integer(rs1),6);
				end if;
				
				if ( rs1 >= "11000" and rs1 <= "11111") then --r[24] - r[31]
					nrs1 <= conv_std_logic_vector(conv_integer(rs1),6) - conv_std_logic_vector((conv_integer(cwp)*16),6);
				end if;
				
				if ( rs1 >= "10000" and rs1 <= "10111") then --r[16] - r[23]
					nrs1 <= conv_std_logic_vector(conv_integer(rs1),6) + conv_std_logic_vector((conv_integer(cwp)*16),6);
				end if;
				
				if ( rs1 >= "01000" and rs1 <= "01111") then --r[8] - r[15]
					nrs1 <= conv_std_logic_vector(conv_integer(rs1),6) + conv_std_logic_vector((conv_integer(cwp)*16),6);
				end if;
				--
				-- RS2 Ventana 1
				if ( rs2 >= "00000" and rs2 <= "00111") then --r[0] - r[7]
					nrs2 <= conv_std_logic_vector(conv_integer(rs2),6);
				end if;
				
				if ( rs2 >= "11000" and rs2 <= "11111") then --r[24] - r[31]
					nrs2 <= conv_std_logic_vector(conv_integer(rs2),6) - conv_std_logic_vector((conv_integer(cwp)*16),6);
				end if;
				
				if ( rs2 >= "10000" and rs2 <= "10111") then --r[16] - r[23]
					nrs2 <= conv_std_logic_vector(conv_integer(rs2),6) + conv_std_logic_vector((conv_integer(cwp)*16),6);
				end if;
				
				if ( rs2 >= "01000" and rs2 <= "01111") then --r[8] - r[15]
					nrs2 <= conv_std_logic_vector(conv_integer(rs2),6) + conv_std_logic_vector((conv_integer(cwp)*16),6);
				end if;
				--
				-- RD Ventana 1
				if ( rd >= "00000" and rd <= "00111") then --r[0] - r[7]
					nrd <= conv_std_logic_vector(conv_integer(rd),6);
				end if;
				
				if ( rd >= "11000" and rd <= "11111") then --r[24] - r[31]
					nrd <= conv_std_logic_vector(conv_integer(rd),6) - conv_std_logic_vector((conv_integer(cwp)*16),6);
				end if;
				
				if ( rd >= "10000" and rd <= "10111") then --r[16] - r[23]
					nrd <= conv_std_logic_vector(conv_integer(rd),6) + conv_std_logic_vector((conv_integer(cwp)*16),6);
				end if;
				
				if ( rd >= "01000" and rd <= "01111") then --r[8] - r[15]
					nrd <= conv_std_logic_vector(conv_integer(rd),6) + conv_std_logic_vector((conv_integer(cwp)*16),6);
				end if;
				
			end if;
		

end process;
end Behavioral;

