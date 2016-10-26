library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity sumador_32b is
    port(A,B : in std_logic_vector(31 downto 0);
         SUM : out std_logic_vector(31 downto 0));
end sumador_32b;

architecture arq_sum32 of sumador_32b is
begin
    SUM <= (A + B);
end arq_sum32;

