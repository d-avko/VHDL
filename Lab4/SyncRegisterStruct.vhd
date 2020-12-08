----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:29:27 10/15/2020 
-- Design Name: 
-- Module Name:    SyncRegisterStruct - Behavioral 
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

entity MySyncRegisterStruct is
	generic (
		bitness : integer := 8
	);
	
	port (
		C : in std_logic;
		D : in std_logic_vector(bitness - 1 downto 0);
		Q : out std_logic_vector(bitness - 1 downto 0)
	);
end MySyncRegisterStruct;

architecture Behavioral of MySyncRegisterStruct is
	component MyDLatchWithEnableBeh
		port (
			D : in std_logic;
			E : in std_logic;
			Q : out std_logic;
			nQ : out std_logic
		);
	end component;
begin
	DLatches : for i in 0 to bitness - 1 generate
		DLatch : MyDLatchWithEnableBeh
		port map (D(i), C, Q(i));
	end generate;
end Behavioral;

