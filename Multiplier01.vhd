library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity multiplier is

port(
	SW	:	in std_logic_vector(3 downto 0);
	SW1	:	in std_logic_vector(3 downto 0);
	OUTs	:	out std_logic_vector (7 downto 0));
end multiplier;

architecture behaviour of multiplier is

component fulladd 
port(
	A    : in STD_LOGIC;
	B    : in STD_LOGIC;
	Cin  : in STD_LOGIC;
	S    : out STD_LOGIC;
	Cout : out STD_LOGIC);

end component;

--signal Am : std_logic_vector(3 downto 0);
--signal Bm : std_logic_vector(3 downto 0);
signal A1 : std_logic;
signal B1 : std_logic;
signal A2 : std_logic;
signal B2 : std_logic;
signal A3 : std_logic;
signal B3 : std_logic;
signal A4 : std_logic;
signal B4 : std_logic;
signal A5 : std_logic;
signal B5 : std_logic;
signal A6 : std_logic;
signal B6 : std_logic;
signal A7 : std_logic;
signal B7 : std_logic;
signal A8 : std_logic;
signal B8 : std_logic;
signal A9 : std_logic;
signal B9 : std_logic;
signal A10 : std_logic;
signal B10 : std_logic;
signal A11 : std_logic;
signal B11 : std_logic;
signal A12 : std_logic;
signal B12 : std_logic;
signal carry: std_logic_vector(4 downto 0);
signal carry1 : std_logic_vector (4 downto 0);
signal carry2: std_logic_vector(4 downto 0);

begin 

--Am <= SW(3 downto 0);
--Bm <= SW1(3 downto 0);
carry(0)<='0';
carry1(0)<='0';
carry2(0)<='0';


OUTs(0) <= SW(0) and SW1(0);

A1 <= SW(1) and SW1(0);
B1 <= SW(0) and SW1(1);


add0 : component fulladd 

port map ( A=>A1, B => B1, Cin => carry(0), S =>OUTs(1), Cout=>carry(1));

A2 <= SW(2) and SW1(0);
B2 <= SW(1) and SW1(1);
add1 : component fulladd

port map (A=>A2, B=>B2, Cin=>carry(1), S=>A3, Cout=>carry(2));

B3<=SW(0) and SW1(2);
add2 : component fulladd

port map (A=>A3, B=>B3, Cin=>carry1(0), S=>OUTs(2), Cout=>carry1(1));

A4<=SW(3) and SW1(0);
B4<=SW(2) and SW1(1);
add3 : component fulladd

port map (A=>A4, B=>B4, Cin=>carry(2), S=>A5, Cout=>carry(3));

B5<=SW(1) and SW1(2);
add4 : component fulladd

port map (A=>A5, B=>B5, Cin=>carry1(1), S=> A6, Cout=>carry1(2));

B6<=SW(0) and SW1(3);
add5: component fulladd

port map (A=>A6, B=>B6, Cin=>carry2(0), S=>OUTs(3), Cout=>carry2(1));

A7<='0';
B7<= SW(3) and SW1(1);
add6: component fulladd

port map (A=>A7, B=> B7, Cin=>carry(3), S=>A8, Cout=>carry(4));

B8<=SW(2) and SW1(2);
add7 : component fulladd

port map (A=>A8, B=>B8, Cin=>carry1(2), S=>A9, Cout=>carry1(3));

B9<=SW(1) and SW1(3);
add8 : component fulladd

port map (A=>A9, B=>B9, Cin=>carry2(1), S=>OUTs(4), Cout=>carry2(2));

B10<=SW(3) and SW1(2);
add9 : component fulladd

port map (A=>carry(4), B=>B10, Cin=>carry1(3), S=>A11, Cout=>carry1(4));

B11<=SW(2) and SW1(3);
add10 : component fulladd

port map (A=>A11, B=>B11, Cin=>carry2(2), S=>OUTs(5), Cout=>carry2(3));

B12<=SW(3) and SW1(3);
add11 : component fulladd

port map (A=> carry1(4), B=>B12, Cin=>carry2(3), S=>OUTs(6), Cout=>OUTs(7));

end behaviour;

