--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:38:07 10/30/2020
-- Design Name:   
-- Module Name:   C:/Users/saks2/Desktop/4course/POCP/Lab3/Task4_D_latch_with_permition_tb.vhd
-- Project Name:  Lab3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Task4_D_latch_with_permition_struct
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
 
ENTITY Task4_D_latch_with_permition_tb IS
END Task4_D_latch_with_permition_tb;
 
ARCHITECTURE behavior OF Task4_D_latch_with_permition_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Task4_D_latch_with_permition_struct
    PORT(
         d : IN  std_logic;
         e : IN  std_logic;
         q : OUT  std_logic;
         nq : OUT  std_logic
        );
    END COMPONENT;
	 
	 COMPONENT Task4_D_latch_with_permition_beh
    PORT(
         d : IN  std_logic;
         e : IN  std_logic;
         q : OUT  std_logic;
         nq : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal d : std_logic := '0';
   signal e : std_logic := '0';

 	--Outputs
   signal q_beh, q_str: std_logic;
   signal nq_beh, nq_str : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

 
BEGIN
 
	
   structural: Task4_D_latch_with_permition_struct PORT MAP (
          d => d,
          e => e,
          q => q_str,
          nq => nq_str
        );
		  
	beh: Task4_D_latch_with_permition_beh PORT MAP (
          d => d,
          e => e,
          q => q_beh,
          nq => nq_beh
        );

 
 
	e_p:process
	begin
	e<='0';
	wait for 16 ns;
	e<='1';
	wait for 16 ns;
	end process;
	
	
	d_p:process
	begin
	d<='0';
	wait for 32 ns;
	d<='1';
	wait for 32 ns;
	end process;

END;
