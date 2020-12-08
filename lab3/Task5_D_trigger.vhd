----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:14:59 10/30/2020 
-- Design Name: 
-- Module Name:    Task5_D_trigger - Behavioral 
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

entity Task5_D_trigger is
port (d : in std_logic;
		clk : in std_logic;
		q : out std_logic;
		nq : out std_logic
		);
end Task5_D_trigger;

architecture Behavioral of Task5_D_trigger is

begin
	process(clk)
	begin
		if rising_edge(clk) then
			q <= d;
			nq <= NOT d;
		end if;
	end process;

end Behavioral;

