LIBRARY IEEE; 
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY seg7 IS
PORT ( c  : IN  STD_LOGIC_VECTOR(7 DOWNTO 0);	
       m  : OUT STD_LOGIC_VECTOR(6 DOWNTO 0));
END seg7; 

ARCHITECTURE Behavior OF seg7 IS
	
BEGIN 
     	m <= "1000000" WHEN c = "00000000" else	--0
	     "1111001" WHEN c = "00000001" else	--1
	     "0100100" WHEN c = "00000010" else	--2
	     "0110000" WHEN c = "00000011" else	--3
	     "0011001" WHEN c = "00000100" else	--4
	     "0010010" WHEN c = "00000101" else	--5
	     "0000010" WHEN c = "00000110" else --6
	     "1111000" WHEN c = "00000111" else	--7
	     "0000000" WHEN c = "00001000" else	--8
	     "0010000" WHEN c = "00001001" else	--9
	     "1111111";				
END Behavior;

