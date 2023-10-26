library ieee;
use ieee. std_logic_1164.all;
use ieee. std_logic_arith.all;
use ieee. std_logic_unsigned.all;

entity D_FF is
port(D,clock:in std_logic;
Q:out std_logic);
end D_FF;

architecture behavioral of D_FF is
begin
process(clock)
begin
if(rising_edge(clock)) then
Q<= D;
end if;
end process;
end behavioral;