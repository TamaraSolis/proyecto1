library ieee;
use ieee. std_logic_1164.all;
use ieee. std_logic_arith.all;
use ieee. std_logic_unsigned.all;

entity FFJK is
port(J,K,clock: in std_logic;
	Q: out std_logic);
end FFJK;

architecture behavioral of FFJK is
	begin
	process(clock)
	variable Qn: std_logic;
	begin 
	if(rising_edge(clock)) then
				case (J,K) is
				when J= 1 => 
					Q <= 1;
				when K= 1 =>
					Q <= 0;
				when (J and K)= 1 =>
					Q <= not Q;
				when others =>
					Q <= Q;
				end case;
	end if;
	end process;
end behavioral;