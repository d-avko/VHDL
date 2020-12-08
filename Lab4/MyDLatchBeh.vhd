----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:04:08 10/03/2020 
-- Design Name: 
-- Module Name:    MyDLatchBeh - Behavioral 
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

entity MyDLatchBeh is
    Port ( D : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           nQ : out  STD_LOGIC);
end MyDLatchBeh;

architecture Behavioral of MyDLatchBeh is
	signal res : std_logic;
begin
	main : process(D)
	begin
		if (res /= D) then
			Q <= D;
			nQ <= not D;
			res <= D;
		end if;
	end process;
end Behavioral;

