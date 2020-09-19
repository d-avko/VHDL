----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:28:00 10/24/2019 
-- Design Name: 
-- Module Name:    task4 - Behavioral 
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

entity task4 is
    Port ( IN11 : in  STD_LOGIC;
           IN12 : in  STD_LOGIC;
           IN21 : in  STD_LOGIC;
           IN22 : in  STD_LOGIC;
           OUT11 : out  STD_LOGIC;
           OUT12 : out  STD_LOGIC;
           OUT21 : out  STD_LOGIC;
           OUT22 : out  STD_LOGIC;
           P1 : out  STD_LOGIC;
           P2 : out  STD_LOGIC);
end task4;

architecture Behavioral of task4 is

component task4_Beh is
    Port ( IN11 : in  STD_LOGIC;
           IN12 : in  STD_LOGIC;
           IN21 : in  STD_LOGIC;
           IN22 : in  STD_LOGIC;
           OUT1 : out  STD_LOGIC;
           OUT2 : out  STD_LOGIC;
           P : out  STD_LOGIC);
end component;

component task4_Struct is
    Port ( IN11 : in  STD_LOGIC;
           IN12 : in  STD_LOGIC;
           IN21 : in  STD_LOGIC;
           IN22 : in  STD_LOGIC;
           OUT1 : out  STD_LOGIC;
           OUT2 : out  STD_LOGIC;
           P : out  STD_LOGIC);
end component;

begin

	U1: task4_Beh port map(IN11 => IN11, IN12 => IN12, IN21 => IN21, IN22 => IN22, 
									OUT1 => OUT11, OUT2 => OUT12, P => P1);
	U2: task4_Struct port map(IN11 => IN11, IN12 => IN12, IN21 => IN21, IN22 => IN22, 
									OUT1 => OUT21, OUT2 => OUT22, P => P2);

end Behavioral;

