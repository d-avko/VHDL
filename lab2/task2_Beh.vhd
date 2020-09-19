----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:36:30 10/23/2019 
-- Design Name: 
-- Module Name:    task2_Beh - Behavioral 
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

entity task2_Beh is
    Port ( beh_A : in  STD_LOGIC;
           beh_B : in  STD_LOGIC;
           beh_S : in  STD_LOGIC;
           beh_A1 : in  STD_LOGIC;
           beh_B1 : in  STD_LOGIC;
           beh_Z : out  STD_LOGIC;
           beh_Z1 : out  STD_LOGIC);
end task2_Beh;

architecture Behavioral of task2_Beh is

begin

 beh_Z <= (beh_A and (not beh_B)) or (beh_B and beh_S);
 beh_Z1 <= (beh_A1 and (not beh_B1)) or (beh_B1 and beh_S);

end Behavioral;

