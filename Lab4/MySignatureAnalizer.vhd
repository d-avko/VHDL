----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:43:00 10/20/2020 
-- Design Name: 
-- Module Name:    MySignatureAnalizer - Behavioral 
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

entity MySignatureAnalizer is
	port (
		C : in std_logic;
		P : in std_logic;
		S : out std_logic_vector(9 downto 0);
--		S : out std_logic_vector(2 downto 0);
		Q : out std_logic
	);
end MySignatureAnalizer;

architecture Behavioral of MySignatureAnalizer is
	signal data : std_logic_vector(10 downto 0) := (others => '0');
--	signal data : std_logic_vector(3 downto 0) := (others => '0');
begin
	main : process(C)
	begin
		if rising_edge(C) then
			data <= data(9 downto 3) &
						(data(9) xor data(2)) &
						data(1 downto 0) &
						(data(9) xor P);
		end if;
	end process;
	
--	main : process(C)
--	begin
--		if C'EVENT and C = '0' then
--			data <= data(2 downto 1) &
--						(data(2) xor data(0)) &
--						(data(2) xor P);
--		end if;
--	end process;
	
--	S <= data(2 downto 0);
--	Q <= data(3);
	
	S <= data(9 downto 0);
	Q <= data(10);
	
end Behavioral;

