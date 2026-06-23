library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decBCD_to_dec_tb is
end decBCD_to_dec_tb;

architecture simulation of decBCD_to_dec_tb is
	signal E, A, B, C, D : STD_LOGIC;
	signal D0, D1, D2, D3, D4, D5, D6, D7, D8, D9 : STD_LOGIC;
begin
	uut: entity work.decBCD_to_dec
		port map(
		E => E,
		A => A, 
		B => B,
		C => C,
		D => D,
		D0 => D0,
		D1 => D1, 
		D2 => D2,
		D3 => D3,
		D4 => D4,
		D5 => D5,
		D6 => D6,
		D7 => D7,
		D8 => D8,
		D9 => D9
	);
	
	stim_proc: process begin
		E <= '0'; A <= '0'; B <= '0'; C <= '0';  D <= '0'; wait for 100 ns;
		E <= '0'; A <= '0'; B <= '0'; C <= '0';  D <= '1'; wait for 100 ns;
		E <= '0'; A <= '0'; B <= '0'; C <= '1';  D <= '0'; wait for 100 ns;
		E <= '0'; A <= '0'; B <= '0'; C <= '1';  D <= '1'; wait for 100 ns;
		E <= '0'; A <= '0'; B <= '1'; C <= '0';  D <= '0'; wait for 100 ns;
		E <= '0'; A <= '0'; B <= '1'; C <= '0';  D <= '1'; wait for 100 ns;
		E <= '0'; A <= '0'; B <= '1'; C <= '1';  D <= '0'; wait for 100 ns;
		E <= '0'; A <= '0'; B <= '1'; C <= '1';  D <= '1'; wait for 100 ns;
		E <= '0'; A <= '1'; B <= '0'; C <= '0';  D <= '0'; wait for 100 ns;
		E <= '0'; A <= '1'; B <= '0'; C <= '0';  D <= '1'; wait for 100 ns;
		E <= '0'; A <= '1'; B <= '0'; C <= '1';  D <= '0'; wait for 100 ns;
		E <= '0'; A <= '1'; B <= '0'; C <= '1';  D <= '1'; wait for 100 ns;
		E <= '0'; A <= '1'; B <= '1'; C <= '0';  D <= '0'; wait for 100 ns;
		E <= '0'; A <= '1'; B <= '1'; C <= '0';  D <= '1'; wait for 100 ns;
		E <= '0'; A <= '1'; B <= '1'; C <= '1';  D <= '0'; wait for 100 ns;
		E <= '0'; A <= '1'; B <= '1'; C <= '1';  D <= '1'; wait for 100 ns;
		E <= '1'; A <= '0'; B <= '0'; C <= '0';  D <= '0'; wait for 100 ns;
		E <= '1'; A <= '0'; B <= '0'; C <= '0';  D <= '1'; wait for 100 ns;
		E <= '1'; A <= '0'; B <= '0'; C <= '1';  D <= '0'; wait for 100 ns;
		E <= '1'; A <= '0'; B <= '0'; C <= '1';  D <= '1'; wait for 100 ns;
		E <= '1'; A <= '0'; B <= '1'; C <= '0';  D <= '0'; wait for 100 ns;
		E <= '1'; A <= '0'; B <= '1'; C <= '0';  D <= '1'; wait for 100 ns;
		E <= '1'; A <= '0'; B <= '1'; C <= '1';  D <= '0'; wait for 100 ns;
		E <= '1'; A <= '0'; B <= '1'; C <= '1';  D <= '1'; wait for 100 ns;
		E <= '1'; A <= '1'; B <= '0'; C <= '0';  D <= '0'; wait for 100 ns;
		E <= '1'; A <= '1'; B <= '0'; C <= '0';  D <= '1'; wait for 100 ns;
		E <= '1'; A <= '1'; B <= '0'; C <= '1';  D <= '0'; wait for 100 ns;
		E <= '1'; A <= '1'; B <= '0'; C <= '1';  D <= '1'; wait for 100 ns;
		E <= '1'; A <= '1'; B <= '1'; C <= '0';  D <= '0'; wait for 100 ns;
		E <= '1'; A <= '1'; B <= '1'; C <= '0';  D <= '1'; wait for 100 ns;
		E <= '1'; A <= '1'; B <= '1'; C <= '1';  D <= '0'; wait for 100 ns;
		E <= '1'; A <= '1'; B <= '1'; C <= '1';  D <= '1'; wait for 100 ns;
		wait;
	end process;
end simulation;
			
