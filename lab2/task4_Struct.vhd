----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:59:46 10/24/2019 
-- Design Name: 
-- Module Name:    task4_Struct - Behavioral 
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

entity task4_Struct is
    Port ( IN11 : in  STD_LOGIC;
           IN12 : in  STD_LOGIC;
           IN21 : in  STD_LOGIC;
           IN22 : in  STD_LOGIC;
           OUT1 : out  STD_LOGIC;
           OUT2 : out  STD_LOGIC;
           P : out  STD_LOGIC);
end task4_Struct;

architecture Behavioral of task4_Struct is

component half_adder is
    Port ( IN1 : in  STD_LOGIC;
           IN2 : in  STD_LOGIC;
           OUT1 : out  STD_LOGIC;
           P : out  STD_LOGIC);
end component;

component full_adder is
    Port ( IN1 : in  STD_LOGIC;
           IN2 : in  STD_LOGIC;
           IN_P : in  STD_LOGIC;
           OUT1 : out  STD_LOGIC;
           OUT_P : out  STD_LOGIC);
end component;

signal P1: STD_LOGIC;

begin

	U1: half_adder port map (IN1 => IN11, IN2 => IN21, OUT1 => OUT1, P => P1);
	U2: full_adder port map (IN1 => IN12, IN2 => IN22, IN_P => P1, OUT1 => OUT2, OUT_P => P);

end Behavioral;

