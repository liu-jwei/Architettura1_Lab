library ieee;
use ieee.std_logic_1164.all;

entity signals is
	port(A, B: in std_logic;
		Y1, Y2, Y3: out std_logic);
end;

architecture arch_signals of signal is 
	signal S1: std_logic;

