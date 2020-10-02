--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:35:49 09/20/2020
-- Design Name:   
-- Module Name:   C:/VHDL/lab2/adder_tests.vhd
-- Project Name:  lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: adder
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
 
ENTITY adder_tests IS
END adder_tests;
 
ARCHITECTURE behavior OF adder_tests IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    component adder_for_test is
		port (
			A: in std_logic;
			B: in std_logic;
			Cin: in std_logic;
			S1: out std_logic;
			Cout1: out std_logic;
			S2: out std_logic;
			Cout2: out std_logic
		);
		end component;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal Cin : std_logic := '0';

 	--Outputs
   signal S1 : std_logic;
	signal S2 : std_logic;
   signal Cout1 : std_logic;
   signal Cout2 : std_logic;
	
	signal ASSERT_SIGNAL: std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: adder_for_test PORT MAP (
          A => A,
          B => B,
          Cin => Cin,
          S1 => S1,
          Cout1 => Cout1,
			 Cout2 => Cout2,
			 S2 => S2
        );

   A <= not A after 2 ns;
	B <= not B after 4 ns;
	Cin <= not Cin after 8 ns;
	
	ASSERT_SIGNAL <= (Cout1 xor Cout2) or (S1 xor S2);

END;
