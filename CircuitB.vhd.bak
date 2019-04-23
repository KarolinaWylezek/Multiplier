LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

ENTITY circuitB is
PORT(
	CBE : IN  STD_LOGIC_VECTOR(7 downto 0);
	CBS : OUT STD_LOGIC_VECTOR(6 downto 0));
END ENTITY;

ARCHITECTURE behavior of circuitB is

signal NEUF  : STD_LOGIC_VECTOR(7 downto 0); --9
signal DNEUF : STD_LOGIC_VECTOR(7 downto 0); --19
signal VNEUF : STD_LOGIC_VECTOR(7 downto 0); --29
signal TNEUF : STD_LOGIC_VECTOR(7 downto 0); --39
signal QNEUF : STD_LOGIC_VECTOR(7 downto 0); --49
signal CNEUF : STD_LOGIC_VECTOR(7 downto 0); --59
signal SEVENTY : std_logic_vector (6 downto 0);
signal ETY : std_logic_vector (6 downto 0);

BEGIN

NEUF  <= "00001001";
DNEUF <= "00010011";
VNEUF <= "00011101";
TNEUF <= "00100111";
QNEUF <= "00110001";
CNEUF <= "00111011";
SEVENTY <= "1000110";
ETY <= "1010000";

CBS <= "1000000" when CBE < NEUF else                  
       "1111001" when (CBE > NEUF AND CBE < DNEUF) else
       "0100100" when (CBE > DNEUF AND CBE < VNEUF) else 
       "0110000" when (CBE > VNEUF AND CBE < TNEUF) else 
       "0011001" when (CBE > TNEUF AND CBE < QNEUF) else 
       "0010010" when (CBE > QNEUF AND CBE < CNEUF) else
       "0000010" when (CBE > CNEUF AND CBE < SEVENTY) else
	"0001111" when (CBE > SEVENTY AND CBE < ETY) else
	"0000100";
END Behavior;

