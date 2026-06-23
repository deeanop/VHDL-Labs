library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decBCD_to_dec is
	Port(
		E, A, B, C, D : in STD_LOGIC;
		D0, D1, D2, D3, D4, D5, D6, D7, D8, D9 : out STD_LOGIC
	);
end decBCD_to_dec;

architecture behavior of decBCD_to_dec is begin
	D0 <= E AND NOT A AND NOT B AND NOT C AND NOT D;
	D1 <= E AND NOT A AND NOT B AND NOT C AND D;
	D2 <= E AND NOT A AND NOT B AND C AND NOT D;
	D3 <= E AND NOT A AND NOT B AND C AND D;
	D4 <= E AND NOT A AND B AND NOT C AND NOT D;
	D5 <= E AND NOT A AND B AND NOT C AND D;
	D6 <= E AND NOT A AND B AND C AND NOT D;
	D7 <= E AND NOT A AND B AND C AND D;
	D8 <= E AND A AND NOT B AND NOT C AND NOT D;
	D9 <= E AND A AND NOT B AND NOT C AND D;
end behavior; 