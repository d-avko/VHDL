----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:08:07 11/02/2020 
-- Design Name: 
-- Module Name:    MySygTestLFSR - Behavioral 
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

entity MySygTestLFSR is
	port (
		C : in std_logic;
		Q : out std_logic_vector(3 downto 0)
	);
end MySygTestLFSR;

architecture Behavioral of MySygTestLFSR is
	signal data : std_logic_vector(3 downto 0) := (others => '1');
begin
	main : process(C)
	begin
		if (rising_edge(C)) then
			data <= data(2 downto 0) &
				(data(2) xor data(3));
		end if;
	end process;

	Q <= data;

end Behavioral;

