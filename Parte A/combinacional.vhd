library IEEE;
use ieee.std_logic_1164.all;

entity combinacional is 
	port(
	sw1,sw2: in std_logic;
	led: out std_logic);
end combinacional;

architecture behavioral of combinacional is
begin
	led<=not(sw1 and sw2);
end behavioral;