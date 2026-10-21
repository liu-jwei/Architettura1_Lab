library IEEE;
use IEEE.std_logic_1164.all;

-- entity
entity cmp3 is
port (	A_IN, B_IN: in std_logic_vector(2 downto 0);
	Y: out std_logic);
end cmp3;

-- architecture
architecture arch_cmp3 of cmp3 is

	-- component declaration
	component cmp1 is
		port(	A,B: in std_logic;
			Y: out std_logic);
	end component cmp1;

	signal Y0, Y1, Y2: std_logic;
begin
	-- map of the signals (vedi slide)
	-- Inserisci qui il port mapping (hint: usa copia/incolla di vim)
	m0: cmp1 port map (A => A_IN(0), B => B_IN(0), Y => Y0);
	m1: cmp1 port map (A => A_IN(1), B => B_IN(1), Y => Y1);
	m2: cmp1 port map (A => A_IN(2), B => B_IN(2), Y => Y2);
	-- Inserisci qui la logica dell'architettura... (vedi slide)
	Y <= Y0 and Y1 and Y2;

end arch_cmp3;
