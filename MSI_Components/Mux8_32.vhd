----------------------------------------------------------------------------------
-- Binghamton University
-- Engineer: Kyle J. Temkin <ktemkin@binghamton.edu>
-- 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux8_32 is
  generic(BusWidth : integer := 32);
  port(
        d0, d1, d2, d3, d4, d5, d6, d7 : in std_logic_vector(BusWidth - 1 downto 0)
        s : in std_logic_vector(2 downto 0);
        o : out std_logic_vector(BusWidth - 1 downto 0)
      );
end Mux8_32;

architecture Behavioral of Mux8_32 is
begin

  --Ugly hardcoded multiplexer.
  --Unfortunaely, these need to be hard coded, or ISE's schematic tool will consolidate
  --all of the inputs into a single bus.
  o <= 
    d0  when sel = "000" else
    d1  when sel = "001" else
    d2  when sel = "010" else
    d3  when sel = "011" else
    d4  when sel = "100" else
    d5  when sel = "101" else
    d6  when sel = "110" else
    d7;

end Behavioral;

