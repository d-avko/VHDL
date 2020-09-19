----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:02:14 10/24/2019 
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
    Port ( IN1 : in  STD_LOGIC;
           IN2 : in  STD_LOGIC;
           OUT1 : out  STD_LOGIC;
           P : out  STD_LOGIC);
end half_adder;

architecture Struct of half_adder is

component lab2_xor is
    Port ( IN1 : in  STD_LOGIC;
           IN2 : in  STD_LOGIC;
           OUT1 : out  STD_LOGIC);
end component;

component lab2_and is
    Port ( AND_IN1 : in  STD_LOGIC;
           AND_IN2 : in  STD_LOGIC;
           AND_OUT : out  STD_LOGIC);
end component;

begin

	U1: lab2_xor port map(IN1 => IN1, IN2 => IN2, OUT1 => OUT1);
	U2: lab2_and port map(AND_IN1 => IN1, AND_IN2 => IN2, AND_OUT => P);

end Struct;

