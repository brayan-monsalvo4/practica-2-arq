library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity rom_testb is
--  Port ( );
end rom_testb;

architecture Behavioral of rom_testb is

signal clk : std_logic := '1';
signal addr : std_logic_vector(5 downto 0);
signal data : std_logic_vector(7 downto 0);
signal read : std_logic := '0';

begin

memoria : entity work.rom port map(
clk => clk,
read => read, 
addr => addr,
data => data
);

process
begin
    while true loop
        clk <= not clk;
        wait for 10 ns;
    end loop;
end process;

--addr <= "111111";

end Behavioral;
