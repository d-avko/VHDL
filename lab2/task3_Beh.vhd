----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:06:14 10/23/2019 
-- Design Name: 
-- Module Name:    task3_Beh - Behavioral 
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

entity task3_Beh is
    Port ( beh_W : in  STD_LOGIC;
           beh_X : in  STD_LOGIC;
           beh_Y : in  STD_LOGIC;
           beh_Z : in  STD_LOGIC;
           beh_G : out  STD_LOGIC);
end task3_Beh;

architecture Behavioral of task3_Beh is

begin

	beh_G <= (beh_W and beh_X and beh_Y) or (beh_Y and beh_Z);

end Behavioral;

