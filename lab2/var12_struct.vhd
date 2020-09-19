----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:11:48 09/19/2020 
-- Design Name: 
-- Module Name:    var12_struct - Behavioral 
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

entity var12_struct is
Port 		( X: in  STD_LOGIC;
           Y : in  STD_LOGIC;
           Z : in  STD_LOGIC;
           F : out  STD_LOGIC;
			  G: out  STD_LOGIC
			  );
end var12_struct;

architecture Behavioral of var12_struct is

component and_2 is
Port 		( in1 : in  STD_LOGIC;
           in2: in  STD_LOGIC;
           out1 : out STD_LOGIC
			  );
end component;

component or_2 is
Port 		( in1 : in  STD_LOGIC;
           in2: in  STD_LOGIC;
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

component my_not is
Port 		( in1 : in  STD_LOGIC;
           out1 : out STD_LOGIC
			  );
end component;

signal xy, notx, noty, notxyz, notxnoty: std_logic;

begin

notXBlock: my_not port map(X, notx);
notYBlock: my_not port map(Y, noty);
firstAnd: and_2 port map (X, Y, xy);
secondAnd: and_3 port map (notx, Y, Z, notxyz);
thirdAnd: and_2 port map (notx, noty, notxnoty);
output1: or_2 port map (xy, notxyz, F);
output2: or_2 port map (notxnoty, notxyz, G);
end Behavioral;

