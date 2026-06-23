library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xor_gate is	
	Port (
		A, B : in STD_LOGIC;
		Y : out STD_LOGIC
	);
end xor_gate;

architecture behavior of xor_gate is
begin
	Y <= A XOR B;
end behavior;