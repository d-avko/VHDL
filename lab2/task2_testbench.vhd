--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:48:48 10/23/2019
-- Design Name:   
-- Module Name:   E:/xilinx/projects/lab2/task2_testbench.vhd
-- Project Name:  lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: task2
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
 
ENTITY task2_testbench IS
END task2_testbench;
 
ARCHITECTURE behavior OF task2_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT task2
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         S : IN  std_logic;
         A1 : IN  std_logic;
         B1 : IN  std_logic;
         Str_Z : OUT  std_logic;
         Str_Z1 : OUT  std_logic;
         Beh_Z : OUT  std_logic;
         Beh_Z1 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal S : std_logic := '0';
   signal A1 : std_logic := '0';
   signal B1 : std_logic := '0';

 	--Outputs
   signal Str_Z : std_logic;
   signal Str_Z1 : std_logic;
   signal Beh_Z : std_logic;
   signal Beh_Z1 : std_logic;
	
	signal ASSERT_SIGNAL: std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: task2 PORT MAP (
          A => A,
          B => B,
          S => S,
          A1 => A1,
          B1 => B1,
          Str_Z => Str_Z,
          Str_Z1 => Str_Z1,
          Beh_Z => Beh_Z,
          Beh_Z1 => Beh_Z1
        );

			A <= not A after 2 ns;
			B <= not B after 4 ns;
			S <= not S after 8 ns;
			A1 <= not A1 after 16 ns;
			B1 <= not B1 after 32 ns;
	  
			ASSERT_SIGNAL <= (Str_Z xor Beh_Z) or (Str_Z1 xor Beh_Z1);

END;
