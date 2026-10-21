library IEEE;
use IEEE.std_logic_1164.all;

-- entity
entity adder2 is
port(	A, B: in std_logic_vector (1 downto 0);
	C_IN: in std_logic;
	S: out std_logic_vector (1 downto 0);
	C_OUT: out std_logic);
end adder2;

-- architecture
architecture arch_adder2 of adder2 is
	-- dichiarazione architettura del componente
	component adder1 is
		port(	A, B, C_IN: in std_logic;
			S, C_OUT: out std_logic);
	end component adder1;
	-- dichiarazione segnali necessari per legare 2 istanze del componente
	signal S0, S1, C_OUT_0, C_OUT_1: std_logic;
begin
	-- mapping (creazione fili mediante segnali dichiarati) tra le porte
	-- Inserisci qui port map per legare logicamente l'azione dei due componenti (vedi slide)
	
	
	-- Inserisci qui la logica dell'architettura (vedi slide)
	
	
end arch_adder2;
