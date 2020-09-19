----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:16:13 10/09/2019 
-- Design Name: 
-- Module Name:    task3 - Behavioral 
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

entity task3 is
    Port ( W : in  STD_LOGIC;
           X : in  STD_LOGIC;
           Y : in  STD_LOGIC;
           Z : in  STD_LOGIC;
           G1 : out  STD_LOGIC;
			  G2 : out  STD_LOGIC);
end task3;

architecture Behavioral of task3 is

component task3_Beh is
    Port ( beh_W : in  STD_LOGIC;
           beh_X : in  STD_LOGIC;
           beh_Y : in  STD_LOGIC;
           beh_Z : in  STD_LOGIC;
           beh_G : out  STD_LOGIC);
end component;

component task3_Struct is
    Port ( str_W : in  STD_LOGIC;
           str_X : in  STD_LOGIC;
           str_Y : in  STD_LOGIC;
           str_Z : in  STD_LOGIC;
           str_G : out  STD_LOGIC);
end component;

begin

	U1: task3_Beh port map(beh_W => W, beh_X => X, beh_Y => Y, beh_Z => Z, beh_G => G1);
	U2: task3_Struct port map(str_W => W, str_X => X, str_Y => Y, str_Z => Z, str_G => G2);

end Behavioral;

