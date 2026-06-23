library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SRFlipFlop is
	Port(
		S, R, clk : in STD_LOGIC;
		Q, nQ : out STD_LOGIC
	);
end SRFlipFlop;

architecture behavior of SRFlipFlop is begin
	process(clk) begin
		if rising_edge(clk) then
			Q <= S or (not R and Q);
		end if;
	end process;
	nQ <= not Q;
end behavior;