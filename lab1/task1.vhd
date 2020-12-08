library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity task1 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           D : in  STD_LOGIC;
			  C: out std_logic
			  );
end task1;

architecture Behavioral of task1 is
begin

process(A)
begin
	if (A='1') then
		if (B = '1') then
			C <= D;
		end if;
	end if;
end process;

end Behavioral;

