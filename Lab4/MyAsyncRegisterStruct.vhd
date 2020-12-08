----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:12:34 10/17/2020 
-- Design Name: 
-- Module Name:    MyAsyncRegisterStruct - Behavioral 
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

entity MyAsyncRegisterStruct is
	generic (
		bitness : integer := 4
	);
	port (
		D : in std_logic_vector(bitness - 1 downto 0);
		Q : out std_logic_vector(bitness - 1 downto 0)
	);
end MyAsyncRegisterStruct;

architecture Behavioral of MyAsyncRegisterStruct is
	component MyDLatchBeh
		port (
			D : in std_logic;
			Q : out std_logic;
			nQ : out std_logic
		);
	end component;
begin
	MyDLatches : for i in 0 to bitness - 1 generate
		DLatch : MyDLatchBeh
		port map (D(i), Q(i));
	end generate;
end Behavioral;