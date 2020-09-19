----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:56:18 10/16/2019 
-- Design Name: 
-- Module Name:    tas1_Beh - Behavioral 
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

entity task1_Beh is
    Port ( beh_A : in  STD_LOGIC;
           beh_B : in  STD_LOGIC;
           beh_S : in  STD_LOGIC;
           beh_Z : out  STD_LOGIC);
end task1_Beh;

architecture Behavioral of task1_Beh is

begin

 beh_Z <= (beh_A and (not beh_B)) or (beh_B and beh_S);

end Behavioral;

