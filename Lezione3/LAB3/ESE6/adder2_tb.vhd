-- testbench generato automaticamente via script
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity adder2_tb is
end entity adder2_tb;

architecture behavior of adder2_tb is

    component adder2 is
        port(
            A : in std_logic_vector (1 downto 0);
            B : in std_logic_vector (1 downto 0);
            C_IN : in std_logic;
            S : out std_logic_vector (1 downto 0);
            C_OUT : out std_logic
        );
    end component;

    -- segnali interni per le port
    signal A : std_logic_vector (1 downto 0) := (others => '0');
    signal B : std_logic_vector (1 downto 0) := (others => '0');
    signal C_IN : std_logic := '0';
    signal S : std_logic_vector (1 downto 0) := (others => '0');
    signal C_OUT : std_logic := '0';

begin

    -- istanziazione dell'Unit Under Test (UUT)
    UUT: adder2
        port map (
            A => A,
            B => B,
            C_IN => C_IN,
            S => S,
            C_OUT => C_OUT
        );

    -- Processo di generazione degli stimoli
    stimulus_process: process
    begin
        -- Inserisci qui i tuoi casi di test (ne mancano 2 ... vedi slide)
	    A<="00"; B<="00";C_IN<='0';wait for 5 ns;  -- Tutti i segnali a 0 o 00.
	                                               -- (1 + 1 = 2, genera riporto interno).
	                                               -- (3 + 1 = 4, genera riporto sul C_OUT finale).
        wait for 5 ns;
        wait;	-- induce il motore degli eventi ad interrompere la simulazione
    end process;	

end architecture behavior;
