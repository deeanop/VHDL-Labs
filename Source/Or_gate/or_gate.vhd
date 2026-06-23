library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity or_gate is
	Port (
		A, B : in STD_LOGIC;
		Y : out STD_LOGIC
	);
end or_gate;

architecture behavior of or_gate is
begin
	Y <= A OR B;
end behavior;
