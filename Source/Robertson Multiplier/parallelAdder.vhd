library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity parallelAdder is
    Port(
        A, B : in STD_LOGIC_VECTOR(7 downto 0);
        S : out STD_LOGIC_VECTOR(7 downto 0);
        AdderCout : out STD_LOGIC
    );
end parallelAdder;

architecture compose of parallelAdder is
    signal intern : STD_LOGIC_VECTOR(7 downto 0);
begin
    HAC: entity work.HalfAdderCell
        port map(
            A => A(7),
            B => B(7),
            S => S(7),
            Cout => intern(7)
        );
    FA_GEN: for i in 6 downto 1 generate
        FAC: entity work.FullAdderCell
            port map(
                A => A(i),
                B => B(i),
                Cin => intern(i+1),
                S => S(i),
                Cout => intern(i)
            );
    end generate FA_GEN;
    FAC0: entity work.FullAdderCell
        port map(
            A => A(0),
            B => B(0),
            Cin => intern(1),
            S => S(0),
            Cout => AdderCout
        );
end compose;
