----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:36:27 10/06/2020 
-- Design Name: 
-- Module Name:    MyDFlipFlopWithAsyncResetBeh - Behavioral 
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

entity MyDFlipFlopWithAsyncResetBeh is
    Port ( D : in  STD_LOGIC;
           E : in  STD_LOGIC;
           C : in  STD_LOGIC;
           R : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           nQ : out  STD_LOGIC);
end MyDFlipFlopWithAsyncResetBeh;

architecture Behavioral of MyDFlipFlopWithAsyncResetBeh is
begin
	main : process(D, E, C, R)
	begin
		if R = '1' then
			Q <= '0';
			nQ <= '1';
		elsif E = '1' then
			if falling_edge(C) then
				Q <= D;
				nQ <= not D;
			end if;
		end if;
	end process;
end Behavioral;

