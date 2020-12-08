----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:44:14 10/16/2020 
-- Design Name: 
-- Module Name:    MyTFlipFlop - Behavioral 
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

entity MyTFlipFlop is
    Port ( C : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end MyTFlipFlop;

architecture Behavioral of MyTFlipFlop is
	signal data : std_logic := '0';
begin
	main : process(C)
	begin
		if falling_edge(C) then
			data <= not data;
			Q <= not data;
		end if;
	end process;
end Behavioral;

