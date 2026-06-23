library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
	
entity multiplexer4_to_1_tb is
end multiplexer4_to_1_tb;

architecture simulation of multiplexer4_to_1_tb is
	signal D0, D1, D2, D3, S0, S1, Y : STD_LOGIC;
begin
	uut: entity work.multiplexer4_to_1
		port map(
			D0 => D0,
			D1 => D1,
			D2 => D2,
			D3 => D3,	
			S0 => S0,
			S1 => S1,
			Y => Y
		);
	stim_proc: process begin
		S0 <= '0'; S1 <= '0';
		D0 <= '0'; D1 <= '0'; D2 <= '0'; D3 <= '0'; wait for 10 ns;
		D0 <= '0'; D1 <= '0'; D2 <= '0'; D3 <= '1'; wait for 10 ns;
		D0 <= '0'; D1 <= '0'; D2 <= '1'; D3 <= '0'; wait for 10 ns;
		D0 <= '0'; D1 <= '0'; D2 <= '1'; D3 <= '1'; wait for 10 ns;
		D0 <= '0'; D1 <= '1'; D2 <= '0'; D3 <= '0'; wait for 10 ns;
		D0 <= '0'; D1 <= '1'; D2 <= '0'; D3 <= '1'; wait for 10 ns;
		D0 <= '0'; D1 <= '1'; D2 <= '1'; D3 <= '0'; wait for 10 ns;
		D0 <= '0'; D1 <= '1'; D2 <= '1'; D3 <= '1'; wait for 10 ns;
		D0 <= '1'; D1 <= '0'; D2 <= '0'; D3 <= '0'; wait for 10 ns;
		D0 <= '1'; D1 <= '0'; D2 <= '0'; D3 <= '1'; wait for 10 ns;
		D0 <= '1'; D1 <= '0'; D2 <= '1'; D3 <= '0'; wait for 10 ns;
		D0 <= '1'; D1 <= '0'; D2 <= '1'; D3 <= '1'; wait for 10 ns;
		D0 <= '1'; D1 <= '1'; D2 <= '0'; D3 <= '0'; wait for 10 ns;
		D0 <= '1'; D1 <= '1'; D2 <= '0'; D3 <= '1'; wait for 10 ns;
		D0 <= '1'; D1 <= '1'; D2 <= '1'; D3 <= '0'; wait for 10 ns;
		D0 <= '1'; D1 <= '1'; D2 <= '1'; D3 <= '1'; wait for 10 ns;
		S0 <= '0'; S1 <= '1'; 
		D0 <= '0'; D1 <= '0'; D2 <= '0'; D3 <= '0'; wait for 10 ns;
		D0 <= '0'; D1 <= '0'; D2 <= '0'; D3 <= '1'; wait for 10 ns;
		D0 <= '0'; D1 <= '0'; D2 <= '1'; D3 <= '0'; wait for 10 ns;
		D0 <= '0'; D1 <= '0'; D2 <= '1'; D3 <= '1'; wait for 10 ns;
		D0 <= '0'; D1 <= '1'; D2 <= '0'; D3 <= '0'; wait for 10 ns;
		D0 <= '0'; D1 <= '1'; D2 <= '0'; D3 <= '1'; wait for 10 ns;
		D0 <= '0'; D1 <= '1'; D2 <= '1'; D3 <= '0'; wait for 10 ns;
		D0 <= '0'; D1 <= '1'; D2 <= '1'; D3 <= '1'; wait for 10 ns;
		D0 <= '1'; D1 <= '0'; D2 <= '0'; D3 <= '0'; wait for 10 ns;
		D0 <= '1'; D1 <= '0'; D2 <= '0'; D3 <= '1'; wait for 10 ns;
		D0 <= '1'; D1 <= '0'; D2 <= '1'; D3 <= '0'; wait for 10 ns;
		D0 <= '1'; D1 <= '0'; D2 <= '1'; D3 <= '1'; wait for 10 ns;
		D0 <= '1'; D1 <= '1'; D2 <= '0'; D3 <= '0'; wait for 10 ns;
		D0 <= '1'; D1 <= '1'; D2 <= '0'; D3 <= '1'; wait for 10 ns;
		D0 <= '1'; D1 <= '1'; D2 <= '1'; D3 <= '0'; wait for 10 ns;
		D0 <= '1'; D1 <= '1'; D2 <= '1'; D3 <= '1'; wait for 10 ns;
		S0 <= '1'; S1 <= '0';
		D0 <= '0'; D1 <= '0'; D2 <= '0'; D3 <= '0'; wait for 10 ns;
		D0 <= '0'; D1 <= '0'; D2 <= '0'; D3 <= '1'; wait for 10 ns;
		D0 <= '0'; D1 <= '0'; D2 <= '1'; D3 <= '0'; wait for 10 ns;
		D0 <= '0'; D1 <= '0'; D2 <= '1'; D3 <= '1'; wait for 10 ns;
		D0 <= '0'; D1 <= '1'; D2 <= '0'; D3 <= '0'; wait for 10 ns;
		D0 <= '0'; D1 <= '1'; D2 <= '0'; D3 <= '1'; wait for 10 ns;
		D0 <= '0'; D1 <= '1'; D2 <= '1'; D3 <= '0'; wait for 10 ns;
		D0 <= '0'; D1 <= '1'; D2 <= '1'; D3 <= '1'; wait for 10 ns;
		D0 <= '1'; D1 <= '0'; D2 <= '0'; D3 <= '0'; wait for 10 ns;
		D0 <= '1'; D1 <= '0'; D2 <= '0'; D3 <= '1'; wait for 10 ns;
		D0 <= '1'; D1 <= '0'; D2 <= '1'; D3 <= '0'; wait for 10 ns;
		D0 <= '1'; D1 <= '0'; D2 <= '1'; D3 <= '1'; wait for 10 ns;
		D0 <= '1'; D1 <= '1'; D2 <= '0'; D3 <= '0'; wait for 10 ns;
		D0 <= '1'; D1 <= '1'; D2 <= '0'; D3 <= '1'; wait for 10 ns;
		D0 <= '1'; D1 <= '1'; D2 <= '1'; D3 <= '0'; wait for 10 ns;
		D0 <= '1'; D1 <= '1'; D2 <= '1'; D3 <= '1'; wait for 10 ns;
		S0 <= '1'; S1 <= '1';
		D0 <= '0'; D1 <= '0'; D2 <= '0'; D3 <= '0'; wait for 10 ns;
		D0 <= '0'; D1 <= '0'; D2 <= '0'; D3 <= '1'; wait for 10 ns;
		D0 <= '0'; D1 <= '0'; D2 <= '1'; D3 <= '0'; wait for 10 ns;
		D0 <= '0'; D1 <= '0'; D2 <= '1'; D3 <= '1'; wait for 10 ns;
		D0 <= '0'; D1 <= '1'; D2 <= '0'; D3 <= '0'; wait for 10 ns;
		D0 <= '0'; D1 <= '1'; D2 <= '0'; D3 <= '1'; wait for 10 ns;
		D0 <= '0'; D1 <= '1'; D2 <= '1'; D3 <= '0'; wait for 10 ns;
		D0 <= '0'; D1 <= '1'; D2 <= '1'; D3 <= '1'; wait for 10 ns;
		D0 <= '1'; D1 <= '0'; D2 <= '0'; D3 <= '0'; wait for 10 ns;
		D0 <= '1'; D1 <= '0'; D2 <= '0'; D3 <= '1'; wait for 10 ns;
		D0 <= '1'; D1 <= '0'; D2 <= '1'; D3 <= '0'; wait for 10 ns;
		D0 <= '1'; D1 <= '0'; D2 <= '1'; D3 <= '1'; wait for 10 ns;
		D0 <= '1'; D1 <= '1'; D2 <= '0'; D3 <= '0'; wait for 10 ns;
		D0 <= '1'; D1 <= '1'; D2 <= '0'; D3 <= '1'; wait for 10 ns;
		D0 <= '1'; D1 <= '1'; D2 <= '1'; D3 <= '0'; wait for 10 ns;
		D0 <= '1'; D1 <= '1'; D2 <= '1'; D3 <= '1'; wait for 10 ns;
		wait;
	end process;
end simulation;  
		