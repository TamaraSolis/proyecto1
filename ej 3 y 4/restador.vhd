library ieee;
use ieee. std_logic_1164.all;
use ieee. std_logic_arith.all;
use ieee. std_logic_unsigned.all;

entity restador is
	port(
		A,B: in std_logic;
		Q,P: out std_logic);
end restador;

architecture behavioral of restador is
	begin
		Q <= A xor B;
		P <= (not A) and B;
end behavioral;
		