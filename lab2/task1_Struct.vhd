----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:58:04 10/16/2019 
-- Design Name: 
-- Module Name:    task1_Struct - Behavioral 
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

entity task1_Struct is
    Port ( str_A : in  STD_LOGIC;
           str_B : in  STD_LOGIC;
           str_S : in  STD_LOGIC;
           str_Z : out  STD_LOGIC);
end task1_Struct;

architecture Struct of task1_Struct is

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

signal not_B : STD_LOGIC;
signal A_and_notB : STD_LOGIC;
signal S_and_B : STD_LOGIC;

begin

	U1: lab2_not port map(
		NOT_IN => str_B,
		NOT_OUT => not_B
	);
	
	U2: lab2_and port map(
		AND_IN1 => str_A,
		AND_IN2 => not_B,
		AND_OUT => A_and_notB
	);
	
	U3: lab2_and port map(
		AND_IN1 => str_B,
		AND_IN2 => str_S,
		AND_OUT => S_and_B
	);
	
	U4: lab2_or port map(
		OR2_IN1 => A_and_notB,
		OR2_IN2 => S_and_B,
		OR2_OUT => str_Z
	);

end Struct;

