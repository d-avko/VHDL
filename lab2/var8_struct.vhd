----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:23:47 09/19/2020 
-- Design Name: 
-- Module Name:    var8_struct - Behavioral 
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

entity var8_struct is
Port 		( W : in  STD_LOGIC;
           X: in  STD_LOGIC;
           Y : in  STD_LOGIC;
           Z : in  STD_LOGIC;
           G : out  STD_LOGIC
			  );
end var8_struct;

architecture Behavioral of var8_struct is

component nand_3 is
Port 		( in1 : in  STD_LOGIC;
           in2: in  STD_LOGIC;
           in3 : in  STD_LOGIC;
           out1 : out STD_LOGIC
			  );
end component;

component nand_2 is
Port 		( in1 : in  STD_LOGIC;
           in2: in  STD_LOGIC;
           out1 : out STD_LOGIC
			  );
end component;

component nor_2 is
Port 		( in1 : in  STD_LOGIC;
           in2: in  STD_LOGIC;
           out1 : out STD_LOGIC
			  );
end component;

signal wxy, yz: std_logic;

begin

U1 : nand_3 port map( W, X, Y, wxy );
U2 : nand_2 port map( Y, Z, yz );
U3 : nor_2 port map( wxy, yz, G);
end Behavioral;

