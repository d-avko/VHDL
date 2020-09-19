library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity task5 is
    Port ( in1 : in  STD_LOGIC;
           in2 : in  STD_LOGIC;
           in3 : in  STD_LOGIC;
           in4 : in  STD_LOGIC;
           Q : inout  STD_LOGIC;
           nQ : out  STD_LOGIC);
end task5;

architecture Behavioral of task5 is

begin

Q <= (in1 and in2) or (in3 and (not(in2)) and in4);
nQ <= not Q;

end Behavioral;

