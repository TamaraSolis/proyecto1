library IEEE;
use ieee.std_logic_1164.all;

architecture behavior of negador_tb is
	component combinacional
	port(
	sw1,sw2: in std_logic;
	led: std_logic);
	end component;
	
signal sw1: std_logic:='0';
signal sw2: std_logic:='0';
signal led: std_logic;

begin	
	uut: combinacional port map(
	sw1=>sw1,
	sw2=>sw2,
	led=>led);
	
	stim_proc: process
	begin
		sw1<='0'; sw2<='0'; wait for 10ns;
		sw1<='0'; sw2<='1'; wait for 10ns;
		sw1<='1'; sw2<='0'; wait for 10ns;
		sw1<='1'; sw2<='1'; wait for 10ns;
		wait;
	end process;
end;