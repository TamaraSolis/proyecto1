library ieee;
use ieee. std_logic_1164.all;
use ieee. std_logic_arith.all;
use ieee. std_logic_unsigned.all;

entity FFJK is
port(J,K,clock: in std_logic;
	Q,Qn: out std_logic);
end FFJK;

architecture behavioral of FFJK is
	signal s1: std_logic;
	signal s2: std_logic;
	signal s3: std_logic;
	signal s4: std_logic;
	begin
	process(clock)
	begin 
	Qn <= s3;
	Q <= s4;
	if(rising_edge(clock)) then
		s1 <= J and s4;
		s2 <= (not K) and s4;
		s3 <= not s4;
	end if;
	end process;
end behavioral;