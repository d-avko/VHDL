----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:53:32 09/19/2020 
-- Design Name: 
-- Module Name:    and_3 - Behavioral 
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

entity and_3 is
Port 		( in1 : in  STD_LOGIC;
           in2: in  STD_LOGIC;
           in3 : in  STD_LOGIC;
           out1 : out STD_LOGIC
			  );
end and_3;

architecture Behavioral of and_3 is

begin

out1 <= in1 and in2 and in3;

end Behavioral;

