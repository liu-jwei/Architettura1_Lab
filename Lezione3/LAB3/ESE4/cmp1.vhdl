library IEEE;
use IEEE.std_logic_1164.all;

-- entity
entity cmp1 is
port(	A, B: in std_logic;
	Y: out std_logic);
end cmp1;

-- architecture
architecture arch_cmp1 of cmp1 is
begin
	-- Inserisci qui la logica dell'architettura (vedi slide). Una riga... 
	Y <= A xnor B;	
end arch_cmp1;
