LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
entity multiplex is
Port ( SEL  : IN  STD_LOGIC; 
       A, B : IN  STD_LOGIC; 
       X    : OUT STD_LOGIC);
end multiplex;

architecture Behavioral of multiplex is

begin
    X <= A when SEL = '1' ELSE
         B when SEL = '0';
end Behavioral;
