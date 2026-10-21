-- testbench generato automaticamente via script
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity cmp3_tb is
end entity cmp3_tb;

architecture behavior of cmp3_tb is

    component cmp3 is
        port(
            A_IN : in std_logic_vector(2 downto 0);
            B_IN : in std_logic_vector(2 downto 0);
            Y : out std_logic
        );
    end component;

    -- segnali interni per le port
    signal A_IN : std_logic_vector(2 downto 0) := (others => '0');
    signal B_IN : std_logic_vector(2 downto 0) := (others => '0');
    signal Y : std_logic := '0';

begin

    -- istanziazione dell'Unit Under Test (UUT)
    UUT: cmp3
        port map (
            A_IN => A_IN,
            B_IN => B_IN,
            Y => Y
        );

    -- Processo di generazione degli stimoli
	stimulus_process: process is
    begin
        -- Inserisci qui i tuoi casi di test (vedi slide)
	a_in <= "000"; b_in <= "001";
	wait for 5 ns;

	a_in <= "010"; b_in <= "010";
        wait for 5 ns;

	a_in <= "010"; b_in <= "001";
        wait for 5 ns;
        
	wait;
    end process;

end architecture behavior;
