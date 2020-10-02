----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:35:59 09/22/2020 
-- Design Name: 
-- Module Name:    adder_beh - Behavioral 
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

entity adder_beh is
port (
	A: in std_logic;
	B: in std_logic;
	Cin: in std_logic;
	S: out std_logic;
	Cout: out std_logic
);
end adder_beh;

architecture Behavioral of adder_beh is

begin

S <= ((not A) and (not B) and Cin) or ((not A) and B and (not Cin)) or (A and (not B) and (not Cin)) or ((A and B and Cin));
Cout <= ((not A) and (B) and Cin) or ((A) and (not B) and (Cin)) or (A and (B) and (not Cin)) or ((A and B and Cin));

end Behavioral;

