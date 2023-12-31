library ieee;
use ieee. std_logic_1164.all;

entity sumador is
	port(
		in_a: in std_logic;
		in_b:in std_logic;
		in_cin:in std_logic;
		clk: in std_logic;
		o_f: out std_logic;
		o_cout:out std_logic);
end sumador;

architecture behavioral of sumador is

component D_FF
	port(D,CLOCK: in std_logic;
	Q: out std_logic);
end component;

signal a,b,cin,cout,f: std_logic;
begin
	f<= a xor b xor cin;
	cout <=(a and b) or (cin and(a xor b));
	
D1: D_FF port map (in_a,clk,a);
D2: D_FF port map (in_b,clk,b);
D3: D_FF port map (in_cin,clk,cin);
D4: D_FF port map (cout,clk,o_cout);
D5: D_FF port map (f,clk,o_f);
end behavioral;