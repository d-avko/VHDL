----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:12:23 10/17/2020 
-- Design Name: 
-- Module Name:    MyShiftRegisterStruct - Behavioral 
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

entity MyShiftRegisterStruct is
	generic (
		bitness : integer := 8
	);
	
	port (
		E : in std_logic;
		C : in std_logic;
		R : in std_logic;
		D : in std_logic;
		Q : out std_logic_vector(bitness - 1 downto 0)
	);
end MyShiftRegisterStruct;

architecture Behavioral of MyShiftRegisterStruct is
	component MyDFlipFlopWithAsyncResetBeh
		port (
			D : in std_logic;
			E : in std_logic;
			C : in std_logic;
			R : in std_logic;
			Q : out std_logic;
			nQ : out std_logic
		);
	end component;
	
	signal outSignals : std_logic_vector(bitness - 1 downto 0);
begin
	firstFlipFlop : MyDFlipFlopWithAsyncResetBeh
	port map (D, E, C, R, outSignals(0));
	
	flipFlops : for i in 1 to bitness - 1 generate
		flipFlop : MyDFlipFlopWithAsyncResetBeh
		port map(outSignals(i - 1), E, C, R, outSignals(i));
	end generate;
	
	Q <= outSignals;
end Behavioral;

