----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:31:05 10/30/2020 
-- Design Name: 
-- Module Name:    Task3_D_latch_struct - Structural 
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

entity Task3_D_latch_struct is
port (
	d: in STD_LOGIC;
	q: out STD_LOGIC;
	nq: out STD_LOGIC);
end Task3_D_latch_struct;

architecture Structural of Task3_D_latch_struct is

component Task2_RS_latch_beh
port (
	r: in STD_LOGIC;
	s: in STD_LOGIC;
	q: out STD_LOGIC;
	nq: out STD_LOGIC);
end component;

component My_Invertor
port (
	a: in STD_LOGIC;
	not_a: out STD_LOGIC);
end component;

	signal inv_d_s: STD_LOGIC;

begin
	inv_0: My_Invertor port map (d,inv_d_s); 
	RS_latch_0:Task2_RS_latch_beh port map(inv_d_s, d, q, nq);
end Structural;


