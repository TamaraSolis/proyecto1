library IEEE;
use ieee.std_logic_1164.all;

entity negador is 
	port(
	sw1,sw2: in std_logic;
	led: out std_logic);
end negador;

architecture behavioral of negador is
begin
	led<=not(sw1 and sw2);
end behavioral;
