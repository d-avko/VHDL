--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:32:50 10/18/2020
-- Design Name:   
-- Module Name:   D:/XilinxLabs/Lab4/MyLFSRWithInternalAdder_tb.vhd
-- Project Name:  Lab4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MyLFSRWithInternalAdder
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
 
ENTITY MyLFSRWithInternalAdder_tb IS
END MyLFSRWithInternalAdder_tb;
 
ARCHITECTURE behavior OF MyLFSRWithInternalAdder_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MyLFSRWithInternalAdder
    PORT(
         C : IN  std_logic;
         Q : OUT  std_logic_vector(9 downto 0)
        );
    END COMPONENT;
    
	constant clk_period : time := 1ps; 

   --Inputs
   signal C : std_logic;

 	--Outputs
   signal Q : std_logic_vector(9 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   LFSR: MyLFSRWithInternalAdder PORT MAP (
          C => C,
          Q => Q
        );
		  
	c_proc : process
	begin
		C <= '0';
		wait for clk_period;
		C <= '1';
		wait for clk_period;
	end process;
END;
