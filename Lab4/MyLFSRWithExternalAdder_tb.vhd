--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:16:14 10/17/2020
-- Design Name:   
-- Module Name:   D:/XilinxLabs/Lab4/MyLFSRWithExternalAdder_tb.vhd
-- Project Name:  Lab4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MyLFSRWithExternalAdder
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
 
ENTITY MyLFSRWithExternalAdder_tb IS
END MyLFSRWithExternalAdder_tb;
 
ARCHITECTURE behavior OF MyLFSRWithExternalAdder_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
	component MyLFSRWithExternalAdder
		port (
			C : in std_logic;
			Q : out std_logic_vector(9 downto 0)
		);
	end component;

	constant clk_period : time := 1ps;

   --Inputs
   signal C : std_logic := '0';

 	--Outputs
   signal Q : std_logic_vector(9 downto 0);

BEGIN
	
	LFSR : MyLFSRWithExternalAdder
	port map (C, Q);
	
	c_proc : process
	begin
		C <= '0';
		wait for clk_period;
		C <= '1';
		wait for clk_period;
	end process;
	
END;