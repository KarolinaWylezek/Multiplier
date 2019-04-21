library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

ENTITY fulladd IS 

PORT( 
	A    : in STD_LOGIC;
	B    : in STD_LOGIC;
	Cin  : in STD_LOGIC;
	S    : out STD_LOGIC;
	Cout : out STD_LOGIC);
END fulladd;

ARCHITECTURE behaviour of fulladd is

begin 	
	S<= A XOR B XOR Cin ;
	Cout <= (A AND B) OR (Cin AND A) OR (Cin AND B) ;

END behaviour;
