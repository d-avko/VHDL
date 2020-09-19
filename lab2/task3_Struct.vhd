----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:07:11 10/23/2019 
-- Design Name: 
-- Module Name:    task3_Struct - Behavioral 
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

entity task3_Struct is
    Port ( str_W : in  STD_LOGIC;
           str_X : in  STD_LOGIC;
           str_Y : in  STD_LOGIC;
           str_Z : in  STD_LOGIC;
           str_G : out  STD_LOGIC);
end task3_Struct;

architecture Struct of task3_Struct is

component lab2_and_not is
    Port ( IN1 : in  STD_LOGIC;
           IN2 : in  STD_LOGIC;
           OUT1 : out  STD_LOGIC);
end component;

component lab2_not_not_and is
    Port ( IN1 : in  STD_LOGIC;
           IN2 : in  STD_LOGIC;
           OUT1 : out  STD_LOGIC);
end component;

component lab2_not is
    Port ( NOT_IN : in  STD_LOGIC;
           NOT_OUT : out  STD_LOGIC);
end component;

component lab2_and is
    Port ( AND_IN1 : in  STD_LOGIC;
           AND_IN2 : in  STD_LOGIC;
           AND_OUT : out  STD_LOGIC);
end component;

component lab2_or is
    Port ( OR2_IN1 : in  STD_LOGIC;
           OR2_IN2 : in  STD_LOGIC;
           OR2_OUT : out  STD_LOGIC);
end component;

signal not_W_X : STD_LOGIC;
signal not_Y : STD_LOGIC;
signal Y_Z : STD_LOGIC;
signal W_X_Y : STD_LOGIC;

begin

	U1: lab2_and_not port map(IN1 => str_W, IN2 => str_X, OUT1 => not_W_X);
	U2: lab2_not port map(NOT_IN => str_Y, NOT_OUT => not_Y);
	U3: lab2_and port map(AND_IN1 => str_Y, AND_IN2 => str_Z, AND_OUT => Y_Z);
	U4: lab2_not_not_and port map(IN1 => not_W_X, IN2 => not_Y, OUT1 => W_X_Y);
	U5: lab2_or port map(OR2_IN1 => W_X_Y, OR2_IN2 => Y_Z, OR2_OUT => str_G);

end Struct;

