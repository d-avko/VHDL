--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:21:12 10/30/2020
-- Design Name:   
-- Module Name:   C:/Users/saks2/Desktop/4course/POCP/Lab3/Task5_D_trigger_AR_tb.vhd
-- Project Name:  Lab3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Task5_D_trigger_async_reset
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
 
ENTITY Task5_D_trigger_AR_tb IS
END Task5_D_trigger_AR_tb;
 
ARCHITECTURE behavior OF Task5_D_trigger_AR_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Task5_D_trigger_async_reset
    PORT(
         d : IN  std_logic;
         async_reset : IN  std_logic;
         clk : IN  std_logic;
         q : OUT  std_logic;
         nq : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal d : std_logic := '0';
   signal async_reset : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal q : std_logic;
   signal nq : std_logic;

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Task5_D_trigger_async_reset PORT MAP (
          d => d,
          async_reset => async_reset,
          clk => clk,
          q => q,
          nq => nq
        );

	d_p:process
	begin
	d<='0';
	wait for 1 ps;
	d<='1';
	wait for 1 ps;
	end process;
	

	async_reset_p:process
	begin
	async_preset<='0';
	wait for 2 ps;
	async_preset<='1';
	wait for 2 ps;
	end process;

	
	
	clk_p:process
	begin
	clk <='0';
	wait for 4 ps;
	clk <='1';
	wait for 4 ps;
	end process;
	
	


END;
