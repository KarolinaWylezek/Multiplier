LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY testbench_multiplier IS
END testbench_multiplier;

ARCHITECTURE Behavior OF testbench_multiplier IS

COMPONENT multiplier
port(
	SW	:	in std_logic_vector(3 downto 0);
	SW1	:	in std_logic_vector(3 downto 0);
	OUTs	:	out std_logic_vector (7 downto 0));
END COMPONENT;

signal An : std_logic_vector(3 downto 0);
signal Bn : std_logic_vector(3 downto 0);
signal ot : std_logic_vector(7 downto 0);

Begin
Process 
begin

An <= "0110";
Bn <= "1110";

wait for 20 ns;

An <= "1111";
Bn <= "0010";

wait for 20 ns;

An <= "0000";
Bn <= "1110";

wait for 20 ns;


end process;
FIG1: multiplier PORT MAP (An, Bn, ot);
end;

