library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_or_gate is
end tb_or_gate;

architecture test of tb_or_gate is
	signal A, B, Y : STD_LOGIC;
begin
	uut: entity work.or_gate 
		port map (
			A => A,
			B => B,
			Y => Y
		);
	stim_proc: process
	begin
		A <= '0'; B <= '0'; wait for 10 ns;
		A <= '0'; B <= '1'; wait for 10 ns;
		A <= '1'; B <= '0'; wait for 10 ns;
		A <= '1'; B <= '1'; wait for 10 ns;
		wait;
	end process;
end test;	
	
	