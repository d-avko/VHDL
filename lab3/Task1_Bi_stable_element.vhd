----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:04:41 10/30/2020 
-- Design Name: 
-- Module Name:    Task1_Bi_stable_element - Behavioral 
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

entity Task1_Bi_stable_element is
port (q: out STD_LOGIC;
		nq: out STD_LOGIC);
end Task1_Bi_stable_element;

architecture Behavioral of Task1_Bi_stable_element is
	signal i_s : STD_LOGIC := '0';
begin
	
	q <= not i_s;
	nq <= i_s;

end Behavioral;

