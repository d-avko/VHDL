----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:46:53 10/30/2020 
-- Design Name: 
-- Module Name:    Task5_JK_trigger - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;


-- при запрещ инв з

entity Task5_JK_trigger is
	Port ( j : in  STD_LOGIC;
           k : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           q : out  STD_LOGIC;
           nq : out  STD_LOGIC);
end Task5_JK_trigger;

architecture Behavioral of Task5_JK_trigger is
	
		signal temp : std_logic;
begin

	process(clk)
	begin
		if (rising_edge(clk)) then
			if (j = '1' and k = '1') then
				temp <= NOT temp;
			else
				if (j = '1') then
					temp <= '1';
				elsif (k = '1') then
					temp <= '0';
				end if;
			end if;
		end if;
	end process;
	
	q <= temp;
	nq <= NOT temp;

end Behavioral;

