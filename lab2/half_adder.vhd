----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:50:17 09/20/2020 
-- Design Name: 
-- Module Name:    half_adder - Behavioral 
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

entity half_adder is
port(
 A: in std_logic;
 B: in std_logic;
 S: out std_logic;
 C: out std_logic
);
end half_adder;

architecture Behavioral of half_adder is

component xor_2 is
port (
	in1: in std_logic;
	in2: in std_logic;
	out1: out std_logic
);
end component;

component and_2 is
Port 		( in1 : in  STD_LOGIC;
           in2: in  STD_LOGIC;
           out1 : out STD_LOGIC
			  );
end component;

begin

U1: xor_2 port map (A, B, S);
U2: and_2 port map (A, B, C);

end Behavioral;

