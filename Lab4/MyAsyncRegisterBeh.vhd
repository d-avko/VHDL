----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:51:47 10/17/2020 
-- Design Name: 
-- Module Name:    MyAsyncRegisterBeh - Behavioral 
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

entity MyAsyncRegisterBeh is
	generic (
		bitness : integer := 4
	);
	port (
		D : in std_logic_vector(bitness - 1 downto 0);
		Q : out std_logic_vector(bitness - 1 downto 0)
	);
end MyAsyncRegisterBeh;

architecture Behavioral of MyAsyncRegisterBeh is
	signal data : std_logic_vector(bitness - 1 downto 0);
begin
	main : process(D)
	begin
		if data /= D then
			data <= D;
		end if;
	end process;
	
	Q <= data;
end Behavioral;

