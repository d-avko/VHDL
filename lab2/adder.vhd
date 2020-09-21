----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:49:46 09/20/2020 
-- Design Name: 
-- Module Name:    adder - Behavioral 
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

entity adder is
port (
	A: in std_logic;
	B: in std_logic;
	Cin: in std_logic;
	S: out std_logic;
	Cout: out std_logic
);
end adder;

architecture Behavioral of adder is

component half_adder is
port(
 A: in std_logic;
 B: in std_logic;
 S: out std_logic;
 C: out std_logic
);
end component;

component or_2 is
Port 		( in1 : in  STD_LOGIC;
           in2: in  STD_LOGIC;
           out1 : out STD_LOGIC
			  );
end component;

signal first_half_s,first_half_c, second_half_c: std_logic; 
begin

U1: half_adder port map (A, B, first_half_s, first_half_c);
U2: half_adder port map (first_half_s, Cin, S, second_half_c);
U3: or_2 port map (first_half_c, second_half_c, Cout);

end Behavioral;

