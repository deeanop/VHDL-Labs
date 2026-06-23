library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity and_gate is
	Port(
		A, B : in STD_LOGIC;
		Y : out STD_LOGIC
	);
end and_gate;

architecture behavior of and_gate is
begin
	Y <= A AND B;
end behavior;