----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:22:01 10/15/2020 
-- Design Name: 
-- Module Name:    SyncRegister - Behavioral 
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

entity MySyncRegisterBeh is
	generic (
		bitness : integer := 4
	);
	port (
		C : in std_logic;
		D : in std_logic_vector(bitness - 1 downto 0);
		Q : out std_logic_vector(bitness - 1 downto 0)
	);
end MySyncRegisterBeh;

architecture Behavioral of MySyncRegisterBeh is
begin
	main : process(C, D)
	begin
		if (C = '1') then
			Q <= D;
		end if;
	end process;
	
end Behavioral;

