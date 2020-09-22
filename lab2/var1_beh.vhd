----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:36:15 09/22/2020 
-- Design Name: 
-- Module Name:    var1_beh - Behavioral 
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

entity var1_beh is
port (
	X: in std_logic;
	Y: in std_logic;
	Z: in std_logic;
	F: out std_logic
);
end var1_beh;

architecture Behavioral of var1_beh is
begin

F <= ((X or (not Y)) and Z) or (not (X) and Y and (not Z));

end Behavioral;
