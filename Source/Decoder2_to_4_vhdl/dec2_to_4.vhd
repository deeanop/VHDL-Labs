library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dec2_to_4 is
	Port(
		E, A, B : in STD_LOGIC;
		D3, D2, D1, D0 : out STD_LOGIC
	);
end dec2_to_4;
 
architecture behavior of dec2_to_4 is begin
	D3 <= A AND B AND E;
	D2 <= NOT A AND B AND E;
	D1 <= A AND NOT B AND E;
	D0 <= NOT A AND NOT B AND E;
end behavior; 