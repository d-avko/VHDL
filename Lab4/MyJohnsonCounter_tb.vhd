--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:09:34 10/17/2020
-- Design Name:   
-- Module Name:   D:/XilinxLabs/Lab4/MyJohnsonCounter_tb.vhd
-- Project Name:  Lab4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MyJohnsonCounter
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
 
ENTITY MyJohnsonCounter_tb IS
END MyJohnsonCounter_tb;
 
ARCHITECTURE behavior OF MyJohnsonCounter_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
	component MyJohnsonCounter
		generic (
			bitness : integer
		);
		
		port (
			C : in std_logic;
			R : in std_logic;
			Q : out std_logic_vector(bitness - 1 downto 0)
		);
	end component;
 
	constant test_bitness : integer := 5;
	constant clk_period : time := 1ps;

   --Inputs
   signal C : std_logic;
	signal R : std_logic;

 	--Outputs
   signal Q : std_logic_vector(test_bitness - 1 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   JohnsonCounter: MyJohnsonCounter
	generic map (test_bitness)
	port map (C, R, Q);	  
	
	c_proc : process
	begin
		C <= '0';
		wait for clk_period;
		C <= '1';
		wait for clk_period;
	end process;
	
	r_proc : process
	begin
		R <= '0';
		wait for 20ps;
		R <= '1';
		wait for 20ps;
	end process;
END;
