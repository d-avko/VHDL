--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:24:39 10/24/2019
-- Design Name:   
-- Module Name:   E:/xilinx/projects/lab2/task3_testbench.vhd
-- Project Name:  lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: task3
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
 
ENTITY task3_testbench IS
END task3_testbench;
 
ARCHITECTURE behavior OF task3_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT task3
    PORT(
         W : IN  std_logic;
         X : IN  std_logic;
         Y : IN  std_logic;
         Z : IN  std_logic;
         G1 : OUT  std_logic;
         G2 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal W : std_logic := '0';
   signal X : std_logic := '0';
   signal Y : std_logic := '0';
   signal Z : std_logic := '0';

 	--Outputs
   signal G1 : std_logic;
   signal G2 : std_logic;
 
	signal ASSERT_SIGNAL: std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: task3 PORT MAP (
          W => W,
          X => X,
          Y => Y,
          Z => Z,
          G1 => G1,
          G2 => G2
        );

	W <= not W after 2 ns;
	X <= not X after 4 ns;
	Y <= not Y after 8 ns;
	Z <= not Z after 16 ns;

	ASSERT_SIGNAL <= G1 xor G2;

END;
