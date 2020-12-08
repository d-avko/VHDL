----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:31:40 10/30/2020 
-- Design Name: 
-- Module Name:    Task5_D_trigger_async_preset - Behavioral 
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

entity Task5_D_trigger_async_preset is
Port ( d : in  STD_LOGIC;
           async_preset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           q : out  STD_LOGIC;
           nq : out  STD_LOGIC);
end Task5_D_trigger_async_preset;

architecture Behavioral of Task5_D_trigger_async_preset is

begin

	process(clk, async_preset)
	begin
		if (asyncPreset = '1') then
			q <= '1';
			nq <= '0';
		elsif rising_edge(clk) then
			q <= d;
			nq <= NOT d;
		end if;
	end process;

	
end Behavioral;

