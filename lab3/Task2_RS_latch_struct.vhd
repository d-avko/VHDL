----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:07:59 10/30/2020 
-- Design Name: 
-- Module Name:    Task2_RS_latch_struct - Structural 
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

entity Task2_RS_latch_struct is

port (
	r: in STD_LOGIC;
	s: in STD_LOGIC;
	q: out STD_LOGIC;
	nq: out STD_LOGIC);
	
end Task2_RS_latch_struct;

architecture Structural of Task2_RS_latch_struct is

component My_NOR2

port (
	a: in STD_LOGIC;
	b: in STD_LOGIC;
	z: out STD_LOGIC);
	
end component;
		
signal  q_s, nq_s : STD_LOGIC;
	
begin
	
	nor2_1 : My_NOR2 port map (r, nq_s, q_s);
	nor2_0 :	My_NOR2 port map (s, q_s, nq_s);
	q <= q_s;
	nq <= nq_s;
	
end Structural;


