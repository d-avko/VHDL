----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:39:29 10/30/2020 
-- Design Name: 
-- Module Name:    Task5_RS_trigger - Behavioral 
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

-- при запрещ ломается


entity Task5_RS_trigger is
Port ( r : in  STD_LOGIC;
           s : in  STD_LOGIC;
			  clk : in  STD_LOGIC;
           q : out  STD_LOGIC;
           nq : out  STD_LOGIC);
end Task5_RS_trigger;

architecture Behavioral of Task5_RS_trigger is

begin
	
	process (clk)
	begin
	
		if rising_edge(clk) then
			if r = '1' and s = '0' then
				q <= '0';
				nq <= '1';
			elsif r = '0' and s = '1' then
				q <= '1';
				nq <= '0';
			end if;				
		end if;
	
	end process;

end Behavioral;

