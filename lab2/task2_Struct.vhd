----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:38:52 10/23/2019 
-- Design Name: 
-- Module Name:    task2_Struct - Behavioral 
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

entity task2_Struct is
    Port ( str_A : in  STD_LOGIC;
           str_B : in  STD_LOGIC;
           str_S : in  STD_LOGIC;
           str_A1 : in  STD_LOGIC;
           str_B1 : in  STD_LOGIC;
           str_Z : out  STD_LOGIC;
           str_Z1 : out  STD_LOGIC);
end task2_Struct;

architecture Struct of task2_Struct is

component task1_Struct is
    Port ( str_A : in  STD_LOGIC;
           str_B : in  STD_LOGIC;
           str_S : in  STD_LOGIC;
           str_Z : out  STD_LOGIC);
end component;

begin

	U1: task1_Struct port map(str_A => str_A, str_B => str_B, str_S => str_S, str_Z => str_Z);
	U2: task1_Struct port map(str_A => str_A1, str_B => str_B1, str_S => str_S, str_Z => str_Z1);

end Struct;

