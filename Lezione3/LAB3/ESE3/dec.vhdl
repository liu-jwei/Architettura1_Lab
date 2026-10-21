library IEEE;
use IEEE.std_logic_1164.all;

-- entity
entity dec is
port(   I: in std_logic_vector(1 downto 0);
        O: out std_logic_vector(3 downto 0));
end dec;

-- architecture
architecture archi_dec of dec is
begin
        -- Inserisci qui la logica dell'architettura. NB: usa SSA (vedi slide)
	with I select 
		O <= "0001" when "00",
	     	     "0010" when "01", 	     
	     	     "0010" when "10", 	     
	     	     "0010" when "11", 	     
	     	     "0000" when others; 	     

end archi_dec;
