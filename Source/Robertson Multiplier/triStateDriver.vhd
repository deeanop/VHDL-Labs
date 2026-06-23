library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity triStateDriver is
	Port(
		X, E : in STD_LOGIC;
		Y : out STD_LOGIC
	);
end triStateDriver;

architecture behavior of triStateDriver is begin
	y <= 'Z' when ((X = '0' and E = '0') or (X = '1' and E = '0')) else
		'0' when (X = '0' and E = '1') else
		'1' when (X = '1' and E = '1');
end behavior;