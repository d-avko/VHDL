--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:37:01 10/24/2019
-- Design Name:   
-- Module Name:   E:/xilinx/projects/lab2/task4_testbench.vhd
-- Project Name:  lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: task4
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
 
ENTITY task4_testbench IS
END task4_testbench;
 
ARCHITECTURE behavior OF task4_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT task4
    PORT(
         IN11 : IN  std_logic;
         IN12 : IN  std_logic;
         IN21 : IN  std_logic;
         IN22 : IN  std_logic;
         OUT11 : OUT  std_logic;
         OUT12 : OUT  std_logic;
         OUT21 : OUT  std_logic;
         OUT22 : OUT  std_logic;
         P1 : OUT  std_logic;
         P2 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal IN11 : std_logic := '0';
   signal IN12 : std_logic := '0';
   signal IN21 : std_logic := '0';
   signal IN22 : std_logic := '0';

 	--Outputs
   signal OUT11 : std_logic;
   signal OUT12 : std_logic;
   signal OUT21 : std_logic;
   signal OUT22 : std_logic;
   signal P1 : std_logic;
   signal P2 : std_logic;
	
	signal ASSERT_SIGNAL: std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: task4 PORT MAP (
          IN11 => IN11,
          IN12 => IN12,
          IN21 => IN21,
          IN22 => IN22,
          OUT11 => OUT11,
          OUT12 => OUT12,
          OUT21 => OUT21,
          OUT22 => OUT22,
          P1 => P1,
          P2 => P2
        );

   IN11 <= not IN11 after 2 ns;
	IN12 <= not IN12 after 4 ns;
	IN21 <= not IN21 after 8 ns;
	IN22 <= not IN22 after 16 ns;
	
	ASSERT_SIGNAL <= (OUT11 xor OUT21) or (OUT12 xor OUT22) or (P1 xor P2);

END;
