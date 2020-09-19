----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:11:52 10/24/2019 
-- Design Name: 
-- Module Name:    full_adder - Behavioral 
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

entity full_adder is
    Port ( IN1 : in  STD_LOGIC;
           IN2 : in  STD_LOGIC;
           IN_P : in  STD_LOGIC;
           OUT1 : out  STD_LOGIC;
           OUT_P : out  STD_LOGIC);
end full_adder;

architecture Behavioral of full_adder is

component half_adder is
    Port ( IN1 : in  STD_LOGIC;
           IN2 : in  STD_LOGIC;
           OUT1 : out  STD_LOGIC;
           P : out  STD_LOGIC);
end component;

component lab2_or is
    Port ( OR2_IN1 : in  STD_LOGIC;
           OR2_IN2 : in  STD_LOGIC;
           OR2_OUT : out  STD_LOGIC);
end component;

signal O1, P1, P2: STD_LOGIC;

begin

	U1: half_adder port map(IN1 => IN1, IN2 => IN2, OUT1 => O1, P => P1);
	U2: half_adder port map(IN1 => IN_P, IN2 => O1, OUT1 => OUT1, P => P2);	
	U3: lab2_or port map(OR2_IN1 => P1, OR2_IN2 => P2, OR2_OUT => OUT_P);

end Behavioral;

