--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:36:42 10/30/2020
-- Design Name:   
-- Module Name:   C:/Users/saks2/Desktop/4course/POCP/Lab3/Task2_RS_latch_tb.vhd
-- Project Name:  Lab3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Task2_RS_latch_struct
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
 
ENTITY Task2_RS_latch_tb IS
END Task2_RS_latch_tb;
 
ARCHITECTURE behavior OF Task2_RS_latch_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Task2_RS_latch_struct
    PORT(
         r : IN  std_logic;
         s : IN  std_logic;
         q : OUT  std_logic;
         nq : OUT  std_logic
        );
    END COMPONENT;
    
	     COMPONENT Task2_RS_latch_beh
    PORT(
         r : IN  std_logic;
         s : IN  std_logic;
         q : OUT  std_logic;
         nq : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal r : std_logic := '0';
   signal s : std_logic := '0';

 	--Outputs
   signal q_str, q_beh : std_logic;
   signal nq_str, nq_beh : std_logic;

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   beh: Task2_RS_latch_struct PORT MAP (
          r => r,
          s => s,
          q => q_beh,
          nq => nq_beh
        );

	struct: Task2_RS_latch_struct PORT MAP (
          r => r,
          s => s,
          q => q_str,
          nq => nq_str
        );
		  
	r_p:process
	begin
	r<='0';
	wait for 8 ns;
	r<='1';
	wait for 8 ns;
	end process;
	
	
	s_p:process
	begin
	s<='0';
	wait for 16 ns;
	s<='1';
	wait for 16 ns;
	end process;
		  
	
	
	


END;
