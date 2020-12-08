----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:53:46 10/16/2020 
-- Design Name: 
-- Module Name:    MyShiftRegisterBeh - Behavioral 
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

entity MyShiftRegisterBeh is
	generic (
		bitness : integer := 4
	);
	
	port (
		E : in std_logic;
		C : in std_logic;
		R : in std_logic;
		D : in std_logic;
		Q : out std_logic_vector(bitness - 1 downto 0)
	);
end MyShiftRegisterBeh;

architecture Behavioral of MyShiftRegisterBeh is
	signal data : std_logic_vector(bitness - 1 downto 0);
begin
	main : process (C, R)
	begin
		if R = '1' then
			data <= (others => '0');
		elsif C'EVENT and C = '0' then
			if E = '1' then
				data <= data(data'high - 1 downto data'low) & D;
			end if;
		end if;
	end process;
	
	Q <= data;
end Behavioral;

