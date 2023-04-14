library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;

entity rom is
port
(
    clk : in std_logic;
    read : in std_logic;
    addr : in std_logic_vector(5 downto 0);
    data : out std_logic_vector(7 downto 0)
);
end rom;

architecture Behavioral of rom is

type data_array is array (0 to 63) of std_logic_vector(7 downto 0);
constant memoria_rom : data_array := (
"00000001",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000010"
);

signal data_aux : std_logic_vector(7 downto 0);

begin

process(clk, read)
begin
    if(read'EVENT) then
        if (read='1') then
            if(to_integer(unsigned(addr)) > memoria_rom'low or to_integer(unsigned(addr)) < memoria_rom'high) then
                data_aux <= memoria_rom(to_integer(unsigned(addr)));
            end if;
        end if;
    end if;
end process;

data <= data_aux;

--indice <= to_integer(unsigned(addr));
--index <= indice;

--data <= memoria_rom(indice);

end Behavioral;
