--
-- Equality comparator template.
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Subtractor_9 is
  generic(BusWidth : integer := 9);
  port(
        --Data signals.
        a : in unsigned(BusWidth - 1 downto 0);
        b : in unsigned(BusWidth - 1 downto 0);
        diff : out unsigned(BusWidth - 1  downto 0);
        borrow : out std_logic
      );
end Subtractor_9;

architecture Behavioral of Subtractor_9 is
  signal a_padded, b_padded, with_borrow : unsigned(BusWidth downto 0);
begin

  --Bit pad A and B to create a signal with room for the borrow out.
  a_padded <= '0' & a;
  b_padded <= '0' & b;

  --Perform the subtraction...
  with_borrow <= a_padded - b_padded;

  --And break into into the difference and borrow.
  diff <= with_borrow(BusWidth - 1 downto 0);
  borrow <= with_borrow(BusWidth);
end Behavioral;
