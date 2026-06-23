library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SISORegister is
	Port(
		serialInput, clk : in STD_LOGIC
		serialOutput, nSerialOutput : out STD_LOGIC
	);
end SISORegister;

architecture compose of SISORegister is
	signal intern, nintern : STD_LOGIC_VECTOR(7 downto 0);
begin 
	gen_ff: for i in 0 to 7 generate begin
		FF: entity work.SRFlipFlop
			port map(
				S => serialInput when i = 7 else intern(i+1),
				R => not serialInput when i = 7 else nintern(i+1),
				clk => clk,
				Q => intern(i),
				nQ => nintern(i)
			);
	end generate;
	serialOutput <= intern(0);
	nSerialOutput <= nintern(0);
end compose;
	

		