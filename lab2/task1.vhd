----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:38:54 10/09/2019 
-- Design Name: 
-- Module Name:    task1 - Behavioral 
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

entity task1 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           S : in  STD_LOGIC;
           Z1 : out  STD_LOGIC;
           Z2 : out  STD_LOGIC);
end task1;

architecture Behavioral of task1 is

component task1_Struct is
    Port ( str_A : in  STD_LOGIC;
           str_B : in  STD_LOGIC;
           str_S : in  STD_LOGIC;
           str_Z : out  STD_LOGIC);
end component;

component task1_Beh is
    Port ( beh_A : in  STD_LOGIC;
           beh_B : in  STD_LOGIC;
           beh_S : in  STD_LOGIC;
           beh_Z : out  STD_LOGIC);
end component;

begin

	U1 : task1_Struct port map(str_A => A, str_B => B, str_S => S, str_Z => Z1);
	U2 : task1_Beh port map(beh_A => A, beh_B => B, beh_S => S, beh_Z => Z2);

end Behavioral;
