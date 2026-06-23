library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dec2_to_4_tb is
end dec2_to_4_tb;

architecture simulation of dec2_to_4_tb is
	signal A, B, E : STD_LOGIC;
	signal D3, D2, D1, D0 : STD_LOGIC;
begin
	uut: entity work.dec2_to_4
		port map(
			A => A,
			B => B,
			E => E,
			D0 => D0,
			D1 => D1,
			D2 => D2,
			D3 => D3
		);
	stim_proc: process begin
		E <= '0'; A <= '0'; B <= '0'; wait for 10 ns;
		E <= '0'; A <= '0'; B <= '1'; wait for 10 ns;
		E <= '0'; A <= '1'; B <= '0'; wait for 10 ns;
		E <= '0'; A <= '1'; B <= '1'; wait for 10 ns;
		E <= '1'; A <= '0'; B <= '0'; wait for 10 ns;
		E <= '1'; A <= '0'; B <= '1'; wait for 10 ns;
		E <= '1'; A <= '1'; B <= '0'; wait for 10 ns;
		E <= '1'; A <= '1'; B <= '1'; wait for 10 ns;
		wait;
	end process;
end simulation; 
		 