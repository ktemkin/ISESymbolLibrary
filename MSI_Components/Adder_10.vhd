--
-- Equality comparator template.
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Adder_10 is
  generic(BusWidth : integer := 10);
  port(
        --Data signals.
        a : in std_logic_vector(BusWidth - 1 downto 0);
        b : in std_logic_vector(BusWidth - 1 downto 0);
        sum : out std_logic_vector(BusWidth - 1  downto 0);
        carry : out std_logic
      );
end Adder_10;

architecture Behavioral of Adder_10 is
begin
  q <= std_logic_vector(unsigned(a) + unsigned(b));
end Behavioral;

