-- testbench generato automaticamente via script
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity mux_4_to_1_tb is
end entity mux_4_to_1_tb;

architecture behavior of mux_4_to_1_tb is

    component mux_4_to_1 is
        port(
            D3 : in std_logic;
            D2 : in std_logic;
            D1 : in std_logic;
            D0 : in std_logic;
            SEL : in std_logic_vector(1 downto 0);
            MOUT : out std_logic
        );
    end component;

    -- segnali interni per le port
    signal D3 : std_logic := '0';
    signal D2 : std_logic := '0';
    signal D1 : std_logic := '0';
    signal D0 : std_logic := '0';
    signal SEL : std_logic_vector(1 downto 0) := (others => '0');
    signal MOUT : std_logic := '0';

begin

    -- istanziazione dell'Unit Under Test (UUT)
    UUT: mux_4_to_1
        port map (
            D3 => D3,
            D2 => D2,
            D1 => D1,
            D0 => D0,
            SEL => SEL,
            MOUT => MOUT
        );

    -- Processo di generazione degli stimoli
    stimulus_process: process
    begin
        -- Inserisci qui i tuoi casi di test (vedi slide)
	 d3 <= '0'; d2 <= '1'; d1 <= '1'; d0 <= '1';
	 sel <= "00";
	 wait for 5 ns;

	 d3 <= '1'; d2 <= '0'; d1 <= '1'; d0 <= '1';
	 sel <= "01";
	 wait for 5 ns;
	
	 d3 <= '0'; d2 <= '1'; d1 <= '0'; d0 <= '1';
	 sel <= "10";
	 wait for 5 ns;
	
	 d3 <= '0'; d2 <= '1'; d1 <= '1'; d0 <= '0';
	 sel <= "11";
	 wait for 5 ns;

        wait;
    end process;

end architecture behavior;
