----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:06:29 10/30/2020 
-- Design Name: 
-- Module Name:    Task2_RS_latch_beh - Behavioral 
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

entity Task2_RS_latch_beh is
port (
	r: in STD_LOGIC;
	s: in STD_LOGIC;
	q: out STD_LOGIC;
	nq: out STD_LOGIC);

end Task2_RS_latch_beh;

architecture Behavioral of Task2_RS_latch_beh is
	signal i0_s, i1_s : STD_LOGIC;
begin
	i0_s <= s nor  i1_s ;
	i1_s <= r nor  i0_s ;	
	q <= i1_s;
	nq <= i0_s;
end Behavioral;


