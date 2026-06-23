library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity asynchronousCounter is
    port(
        clk : in STD_LOGIC;
        Q : out STD_LOGIC_VECTOR(2 downto 0)
    );
end asynchronousCounter;

architecture compose of asynchronousCounter is
begin
    gen_jk: for i in 0 to 2 generate begin
        JK: entity work.JKFlipFlop
            port map(
                J => '1',
                K => '1',
                clk => clk when i = 2 else Q(i+1),
                Q => Q(i)
            );
    end generate;
end compose;