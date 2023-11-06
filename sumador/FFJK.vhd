library ieee;
use ieee. std_logic_1164.all;
use ieee. std_logic_arith.all;
use ieee. std_logic_unsigned.all;

entity FFJK is
port(J,K,clock: in std_logic;
	Q: out std_logic);
end FFJK;

architecture behavioral of FFJK is
	signal s1: std_logic;
	signal s2: std_logic;
	begin
	process(clock)
	variable Qn: std_logic;
	begin 
	if(rising_edge(clock)) then
		Qn := Q;
		s1 <= J and (not Qn);
		s2 <= (not K) and Qn;
		Q <= s1 or s2;
	end if;
	end process;
end behavioral;