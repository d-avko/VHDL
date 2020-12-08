--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:38:48 10/15/2020
-- Design Name:   
-- Module Name:   D:/XilinxLabs/Lab4/MySyncRegister_tb.vhd
-- Project Name:  Lab4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MySyncRegisterBeh
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY MySyncRegister_tb IS
END MySyncRegister_tb;
 
ARCHITECTURE behavior OF MySyncRegister_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MySyncRegisterBeh
		generic (
			bitness : integer
		);
		
		port (
			C : in std_logic;
			D : in std_logic_vector(bitness - 1 downto 0);
			Q : out std_logic_vector(bitness - 1 downto 0)
		);
    END COMPONENT;
	 
	 component MySyncRegisterStruct
		generic (
			bitness : integer
		);
		
		port (
			C : in std_logic;
			D : in std_logic_vector(bitness - 1 downto 0);
			Q : out std_logic_vector(bitness - 1 downto 0)
		);
	 end component;
    
	constant test_bitness : integer := 8;
	constant clk_period : time := 1ps;

   --Inputs
   signal C : std_logic;
   signal D : std_logic_vector(test_bitness - 1 downto 0);

 	--Outputs
   signal QBeh : std_logic_vector(test_bitness - 1 downto 0);
	signal QStruct : std_logic_vector(test_bitness - 1 downto 0);
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
	SyncRegisterBeh : MySyncRegisterBeh
	generic map (test_bitness)
	port map (C, D, QBeh);
	
	SyncRegisterStruct : MySyncRegisterStruct
	generic map(test_bitness)
	port map (C, D, QStruct);
	
	procGen : for i in 0 to test_bitness - 1 generate
		d_proc : process
		begin
			D(i) <= '0';
			wait for clk_period * (2 ** i);
			D(i) <= '1';
			wait for clk_period * (2 ** i);
		end process;
	end generate;
	
	c_proc : process
	begin
		C <= '0';
		wait for clk_period * (2 ** test_bitness);
		C <= '1';
		wait for clk_period * (2 ** test_bitness);
	end process;
END;
