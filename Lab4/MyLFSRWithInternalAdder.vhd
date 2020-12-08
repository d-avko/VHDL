----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:00:04 10/18/2020 
-- Design Name: 
-- Module Name:    MyLFSRWithInternalAdder - Behavioral 
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

entity MyLFSRWithInternalAdder is
	port (
		C : in std_logic;
		Q : out std_logic_vector(9 downto 0)
	);
end MyLFSRWithInternalAdder;

architecture Behavioral of MyLFSRWithInternalAdder is
	signal data : std_logic_vector(9 downto 0) := (others => '1'); 
begin
	main : process(C)
	begin
		if falling_edge(C) then
			data <= data(8 downto 3) &
						(data(9) xor data(2)) &
						data(1 downto 0) &
						data(9);
		end if;
	end process;
	
	Q <= data;
end Behavioral;

