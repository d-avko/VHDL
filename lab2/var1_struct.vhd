----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:40:59 09/22/2020 
-- Design Name: 
-- Module Name:    var1_struct - Behavioral 
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

entity var1_struct is
port (
	X: in std_logic;
	Y: in std_logic;
	Z: in std_logic;
	F: out std_logic
);
end var1_struct;

architecture Behavioral of var1_struct is

component or_2 is
Port 		( in1 : in  STD_LOGIC;
           in2: in  STD_LOGIC;
           out1 : out STD_LOGIC
			  );
end component;

component and_2 is
Port 		( in1 : in  STD_LOGIC;
           in2: in  STD_LOGIC;
           out1 : out STD_LOGIC
			  );
end component;

component my_not is
Port 		( in1 : in  STD_LOGIC;
           out1 : out STD_LOGIC
			  );
end component;

component and_3 is
Port 		( in1 : in  STD_LOGIC;
           in2: in  STD_LOGIC;
           in3 : in  STD_LOGIC;
           out1 : out STD_LOGIC
			  );
end component;


signal notY, notX, notZ, XorNotY, part1, part2 : std_logic;

begin

U1: my_not port map (Y, notY);
U2: my_not port map (X, notX);
U3: my_not port map (Z, notZ);
U4: or_2 port map (X, notY, XorNotY);
U5: and_2 port map (XorNotY, Z, part1);
U6: and_3 port map (notX, notZ, Y, part2);
U7: or_2 port map (part1, part2, F);

end Behavioral;

