----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:41:35 10/30/2020 
-- Design Name: 
-- Module Name:    Task_T_trigger - Behavioral 
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

-- инв сост

entity Task_T_trigger is
    Port ( t : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           q : out  STD_LOGIC;
           nq : out  STD_LOGIC);
end Task_T_trigger;

architecture Behavioral of Task_T_trigger is

	signal temp : std_logic := '0';
begin

	process(clk)
	begin
		if (rising_edge(clk) and t = '1') then
			temp <= not temp;
		end if;
	end process;
	
	q <= not temp;
	nq <= temp;
	
end Behavioral;

