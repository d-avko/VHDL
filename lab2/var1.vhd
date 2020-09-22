----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:35:49 09/22/2020 
-- Design Name: 
-- Module Name:    var1 - Behavioral 
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

entity var1 is
port (
	X: in std_logic;
	Y: in std_logic;
	Z: in std_logic;
	F1: out std_logic;
	F2: out std_logic
);
end var1;

architecture Behavioral of var1 is

component var1_beh is
port (
	X: in std_logic;
	Y: in std_logic;
	Z: in std_logic;
	F: out std_logic
);
end component;

component var1_struct is
port (
	X: in std_logic;
	Y: in std_logic;
	Z: in std_logic;
	F: out std_logic
);
end component;

begin

U1: var1_beh port map (X,Y,Z,F1);
U2: var1_struct port map (X,Y,Z,F2);

end Behavioral;

