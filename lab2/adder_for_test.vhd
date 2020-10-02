----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:42:58 09/22/2020 
-- Design Name: 
-- Module Name:    adder_for_test - Behavioral 
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

entity adder_for_test is
port (
	A: in std_logic;
	B: in std_logic;
	Cin: in std_logic;
	S1: out std_logic;
	Cout1: out std_logic;
	S2: out std_logic;
	Cout2: out std_logic
);
end adder_for_test;

architecture Behavioral of adder_for_test is

component adder is
port (
	A: in std_logic;
	B: in std_logic;
	Cin: in std_logic;
	S: out std_logic;
	Cout: out std_logic
);
end component;

component adder_beh is
port (
	A: in std_logic;
	B: in std_logic;
	Cin: in std_logic;
	S: out std_logic;
	Cout: out std_logic
);
end component;

begin

U1: adder port map (A, B, Cin , S1, Cout1);
U2: adder_beh port map (A, B, Cin , S2, Cout2);

end Behavioral;

