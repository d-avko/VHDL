library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity lab2_and is
    Port ( AND_IN1 : in  STD_LOGIC;
           AND_IN2 : in  STD_LOGIC;
           AND_OUT : out  STD_LOGIC);
end lab2_and;

architecture Behavioral of lab2_and is

begin

AND_OUT <= AND_IN1 and AND_IN2;

end Behavioral;

