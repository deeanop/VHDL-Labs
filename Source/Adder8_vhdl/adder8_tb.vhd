library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity add8_tb is
end add8_tb;

architecture simulation of add8_tb is 
	signal A, B, SUM : STD_LOGIC_VECTOR(7 downto 0);
	signal COUT : STD_LOGIC;
begin
	uut: entity work.adder8 
		port map(
			A => A,
			B => B,
			SUM => SUM,
			COUT => COUT
		);
	stim_proc: process begin
		A <= "00000000";
		B <= "10101010";
		wait for 10 ns;	
		
		A <= "01010101";
		B <= "10101010";
		wait for 10 ns;
	
		A <= "00110011";
		B <= "10011001";
		wait for 10 ns;
		
		A <= "10011001";
		B <= "01001010";
		wait for 10 ns;
		
		wait;
	end process;
end simulation;