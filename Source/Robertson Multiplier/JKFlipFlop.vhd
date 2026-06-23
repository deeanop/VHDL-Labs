library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity JKFlipFlop is
    port(
        J, K, clk : in STD_LOGIC;
        Q : out STD_LOGIC
    );
end JKFlipFlop;

architecture behavior of JKFlipFlop is begin
    process(clk) begin
        if rising_edge(clk) then
            Q <= (J and not Q) or (not K and Q);
        end if;
    end process;
end behavior;