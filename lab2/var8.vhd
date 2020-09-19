----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:18:03 09/19/2020 
-- Design Name: 
-- Module Name:    var8 - Behavioral 
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

entity var8 is
Port 		( W : in  STD_LOGIC;
           X: in  STD_LOGIC;
           Y : in  STD_LOGIC;
           Z : in  STD_LOGIC;
           G1 : out  STD_LOGIC;
			  G2: out  STD_LOGIC
			  );
end var8;

architecture Behavioral of var8 is

component var8_beh is
Port 		( W : in  STD_LOGIC;
           X: in  STD_LOGIC;
           Y : in  STD_LOGIC;
           Z : in  STD_LOGIC;
           G : out  STD_LOGIC
			  );
end component;

component var8_struct is
Port 		( W : in  STD_LOGIC;
           X: in  STD_LOGIC;
           Y : in  STD_LOGIC;
           Z : in  STD_LOGIC;
           G : out  STD_LOGIC
			  );
end component;

begin

U1: var8_beh port map( W,X,Y,Z,G1);
U2: var8_struct port map( W,X,Y,Z,G2);
end Behavioral;

