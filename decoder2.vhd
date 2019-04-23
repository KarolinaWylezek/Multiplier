LIBRARY IEEE; 
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY seg7 IS
PORT ( c  : IN  STD_LOGIC_VECTOR(7 DOWNTO 0);	
       m  : OUT STD_LOGIC_VECTOR(6 DOWNTO 0));
END seg7; 

ARCHITECTURE Behavior OF seg7 IS
	
BEGIN 
     	m <= "1111110" WHEN c = "00000000" else	--0
	     "0110000" WHEN c = "00000001" else	--1
	     "1101101" WHEN c = "00000010" else	--2
	     "1111001" WHEN c = "00000011" else	--3
	     "0110011" WHEN c = "00000100" else	--4
	     "1011011" WHEN c = "00000101" else	--5
	     "1011111" WHEN c = "00000110" else --6
	     "1110000" WHEN c = "00000111" else	--7
	     "1111111" WHEN c = "00001000" else	--8
	     "1111011" WHEN c = "00001001" else	--9
	     "0000000";				
END Behavior;

