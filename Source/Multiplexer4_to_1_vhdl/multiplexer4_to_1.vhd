library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity multiplexer4_to_1 is
	Port(
		D0, D1, D2, D3 : in STD_LOGIC;
		S0, S1 : in STD_LOGIC;
		Y : out STD_LOGIC
	);
end multiplexer4_to_1;

architecture behavior of multiplexer4_to_1 is begin
	Y <= D0 when (S0 <= '0' AND S1 <= '0') else
		D1 when (S0 <= '0' AND S1 <= '1') else
		D2 when (S0 <= '1' AND S1 <= '0') else
		D3; 
end behavior;