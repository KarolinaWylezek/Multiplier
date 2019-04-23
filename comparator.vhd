LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity comp9 is
PORT ( v : IN  STD_LOGIC_VECTOR(7 downto 0);
       z : OUT STD_LOGIC);
end entity;

architecture behavior of comp9 is
signal a : STD_LOGIC_VECTOR(7 downto 0);

BEGIN
   a <= "00001001";  
   z <= '1' when v>a else
        '0';
end behavior;

