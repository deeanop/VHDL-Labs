library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity simple_circuit_tb is
end simple_circuit_tb;

architecture test of simple_circuit_tb is
	signal X, Y, Bin, D, Bout : STD_LOGIC;
	signal Z_xor_1, Z_not_1, Z_not_2, Z_and_1, Z_and_2 : STD_LOGIC;
begin
	uut_and1: entity work.and_gate
		port map (
			A => Z_not_1,
			B => Y,
			Y => Z_and_1
		);
	uut_and2: entity work.and_gate
		port map (
			A => Bin,
			B => Z_not_2,
			Y => Z_and_2	
		);
	uut_or: entity work.or_gate
		port map (
			A => Z_and_1,
			B => Z_and_2,
			Y => Bout
		);
	uut_xor_1: entity work.xor_gate
		port map (
			A => X,
			B => Y,
			Y => Z_xor_1
		);
	uut_xor_2: entity work.xor_gate
		port map (
			A => Z_xor_1,
			B => Bin,
			Y => D
		);
	uut_not_1: entity work.not_gate
		port map (
			A => X,
			Y => Z_not_1
		);
	uut_not_2: entity work.not_gate
		port map (
			A => Z_xor_1,
			Y => Z_not_2
		);
	stim_proc: process
	begin
		X <= '0'; Y <= '0'; Bin <= '0'; wait for 10 ns;
		X <= '0'; Y <= '0'; Bin <= '1'; wait for 10 ns;
		X <= '0'; Y <= '1'; Bin <= '0'; wait for 10 ns;
		X <= '0'; Y <= '1'; Bin <= '1'; wait for 10 ns;
		X <= '1'; Y <= '0'; Bin <= '0'; wait for 10 ns;
		X <= '1'; Y <= '0'; Bin <= '1'; wait for 10 ns;
		X <= '1'; Y <= '1'; Bin <= '0'; wait for 10 ns;
		X <= '1'; Y <= '1'; Bin <= '1'; wait for 10 ns;
		wait;
	end process;
end test;
	
			 