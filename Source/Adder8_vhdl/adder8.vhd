library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity adder8 is
	Port(
		A : in STD_LOGIC_VECTOR(7 downto 0);
		B : in STD_LOGIC_VECTOR(7 downto 0);
		SUM : out STD_LOGIC_VECTOR(7 downto 0);
		COUT : out STD_LOGIC
);
end adder8;
architecture behavior of adder8 is begin
	process(A, B) 
		variable temp : unsigned(7 downto 0);
		begin
			temp := unsigned(A) + unsigned(B);
			SUM <= std_logic_vector(temp(7 downto 0));
			COUT <= temp(7);
		end process;
end behavior;
	
		