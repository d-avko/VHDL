----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:51:01 10/24/2019 
-- Design Name: 
-- Module Name:    task4_Beh - Behavioral 
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

entity task4_Beh is
    Port ( IN11 : in  STD_LOGIC;
           IN12 : in  STD_LOGIC;
           IN21 : in  STD_LOGIC;
           IN22 : in  STD_LOGIC;
           OUT1 : out  STD_LOGIC;
           OUT2 : out  STD_LOGIC;
           P : out  STD_LOGIC);
end task4_Beh;

architecture Behavioral of task4_Beh is

	signal P1: STD_LOGIC;

begin

	OUT1 <= IN11 xor IN21;
	P1 <= IN11 and IN21;
	OUT2 <= IN12 xor IN22 xor P1;
	P <= (IN12 and IN22) or (IN12 and P1) or (IN22 and P1);

end Behavioral;

