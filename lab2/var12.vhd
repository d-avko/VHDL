----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:05:29 09/19/2020 
-- Design Name: 
-- Module Name:    var12 - Behavioral 
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

entity var12 is
Port 		( X: in  STD_LOGIC;
           Y : in  STD_LOGIC;
           Z : in  STD_LOGIC;
           F1 : out  STD_LOGIC;
			  F2: out  STD_LOGIC;
			  G1: out  STD_LOGIC;
			  G2: out  STD_LOGIC
			  );
end var12;

architecture Behavioral of var12 is

component var12_beh is
Port 		( X: in  STD_LOGIC;
           Y : in  STD_LOGIC;
           Z : in  STD_LOGIC;
           F : out  STD_LOGIC;
			  G: out  STD_LOGIC
			  );
end component;

component var12_struct is
Port 		( X: in  STD_LOGIC;
           Y : in  STD_LOGIC;
           Z : in  STD_LOGIC;
           F : out  STD_LOGIC;
			  G: out  STD_LOGIC
			  );
end component;

begin

U1: var12_beh port map ( X, Y, Z, F1, G1 );
U2: var12_struct port map ( X, Y, Z, F2, G2 );
end Behavioral;

