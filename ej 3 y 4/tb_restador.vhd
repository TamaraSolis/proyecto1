library ieee;
use ieee. std_logic_1164.all;
use ieee. std_logic_arith.all;
use ieee. std_logic_unsigned.all;

entity tb_restador is end tb_restador;

architecture behacior of tb_restador is

component restador 
port(
		A,B: in std_logic;
		Q,P: out std_logic);
end component;


signal A: std_logic:= '0';
signal B: std_logic:= '0';

signal Q: std_logic;
signal P: std_logic;

begin 
	uut: restador port map(
	A=>A,
	B=>B,
	Q=>Q,
	P=>P );
	
	stim_proc: process
		begin	
			A<='0';B<='0'; wait for 30ns;
			A<='0';B<='1'; wait for 30ns;
			A<='1';B<='0'; wait for 30ns;
			A<='1';B<='1'; wait for 30ns;
			wait;
		end process;
end;
	