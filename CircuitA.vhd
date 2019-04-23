LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

ENTITY circuitA is
port(	v : IN  STD_LOGIC_VECTOR(7 downto 0);
	x : OUT STD_LOGIC_VECTOR(3 downto 0));
END ENTITY;

ARCHITECTURE behavior of circuitA is

BEGIN

x <=	"0000" when v = "00000000" else --display 0
	"0001" when v = "00000001" else --display 1
	"0010" when v = "00000010" else --display 2
	"0011" when v = "00000011" else --display 3
	"0100" when v = "00000100" else --display 4
	"0101" when v = "00000101" else --display 5
	"0110" when v = "00000110" else --display 6
	"0111" when v = "00000111" else --display 7
	"1000" when v = "00001000" else --display 8
	"1001" when v = "00001001" else --display 9
	"1111";
END behavior;
