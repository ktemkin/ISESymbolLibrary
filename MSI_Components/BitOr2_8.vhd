--
-- Equality comparator template.
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BitOr2_8 is
  generic(BusWidth : integer := 8);
  port(
        --Data signals.
        i0 : in std_logic_vector(BusWidth - 1 downto 0);
        i1 : in std_logic_vector(BusWidth - 1 downto 0);
        o : out std_logic
      );
end BitOr2_8;

architecture Behavioral of BitOr2_8 is
begin
  o <= i0 or i1;
end Behavioral;

