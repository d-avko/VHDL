library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity task6 is
    Port ( A : in  STD_LOGIC_VECTOR(0 to 1);
           B : in  STD_LOGIC_VECTOR(0 to 1);
           S : in  STD_LOGIC;
           Z : out  STD_LOGIC_VECTOR(0 to 1));
end task6;

architecture Behavioral of task6 is

begin
 Z <= A when S = '0' else B;

end Behavioral;

