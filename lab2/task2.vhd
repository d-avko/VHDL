----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:55:47 10/09/2019 
-- Design Name: 
-- Module Name:    task2 - Behavioral 
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

entity task2 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           S : in  STD_LOGIC;
           A1 : in  STD_LOGIC;
           B1 : in  STD_LOGIC;
           Str_Z : out  STD_LOGIC;
           Str_Z1 : out  STD_LOGIC;
			  Beh_Z : out  STD_LOGIC;
           Beh_Z1 : out  STD_LOGIC);
end task2;

architecture Behavioral of task2 is

component task2_Beh is
    Port ( beh_A : in  STD_LOGIC;
           beh_B : in  STD_LOGIC;
           beh_S : in  STD_LOGIC;
           beh_A1 : in  STD_LOGIC;
           beh_B1 : in  STD_LOGIC;
           beh_Z : out  STD_LOGIC;
           beh_Z1 : out  STD_LOGIC);
end component;

component task2_Struct is
    Port ( str_A : in  STD_LOGIC;
           str_B : in  STD_LOGIC;
           str_S : in  STD_LOGIC;
           str_A1 : in  STD_LOGIC;
           str_B1 : in  STD_LOGIC;
           str_Z : out  STD_LOGIC;
           str_Z1 : out  STD_LOGIC);
end component;

begin

	U1 : task2_Struct port map(str_A => A, str_B => B, str_S => S, str_A1 => A1, str_B1 => B1, str_Z => Str_Z, str_Z1 => Str_Z1);
	U2 : task2_Beh port map(beh_A => A, beh_B => B, beh_S => S, beh_A1 => A1, beh_B1 => B1, beh_Z => Beh_Z, beh_Z1 => Beh_Z1);

end Behavioral;

