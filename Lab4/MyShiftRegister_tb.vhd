--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:31:10 10/17/2020
-- Design Name:   
-- Module Name:   D:/XilinxLabs/Lab4/MyShiftRegister_tb.vhd
-- Project Name:  Lab4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MyShiftRegisterBeh
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
 
ENTITY MyShiftRegister_tb IS
END MyShiftRegister_tb;
 
ARCHITECTURE behavior OF MyShiftRegister_tb IS 

	component MyShiftRegisterBeh
		generic (
			bitness : integer
		);
		
		port (
			E : in std_logic;
			C : in std_logic;
			R : in std_logic;
			D : in std_logic;
			Q : out std_logic_vector(bitness - 1 downto 0)
		);
	end component;
	
	component MyShiftRegisterStruct
		generic (
			bitness : integer
		);
		
		port (
			E : in std_logic;
			C : in std_logic;
			R : in std_logic;
			D : in std_logic;
			Q : out std_logic_vector(bitness - 1 downto 0)
		);
	end component;

	constant test_bitness : integer := 8;
	constant clk_period : time := 1ps;

   signal E : std_logic;
   signal C : std_logic;
   signal D : std_logic;
	signal R : std_logic;

 	--Outputs
   signal QBeh : std_logic_vector(test_bitness - 1 downto 0); 
	signal QStruct : std_logic_vector(test_bitness - 1 downto 0);
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   ShiftRegBeh : MyShiftRegisterBeh
	generic map (test_bitness)
	port map (E, C, R, D, QBeh);
	
	ShiftRegStruct : MyShiftRegisterStruct
	generic map (test_bitness)
	port map (E, C, R, D, QStruct);
	
	e_proc : process
	begin
		E <= '0';
		wait for clk_period * (2 ** 2);
		E <= '1';
		wait for clk_period * (2 ** 2);
	end process;
	
	c_proc : process
	begin
		C <= '0';
		wait for clk_period * (2 ** 0);
		C <= '1';
		wait for clk_period * (2 ** 0);
	end process;

	d_proc : process
	begin
		D <= '0';
		wait for clk_period * (2 ** 1);
		D <= '1';
		wait for clk_period * (2 ** 1);
	end process;

	r_proc : process
	begin
		R <= '0';
		wait for clk_period * (2 ** 6);
		R <= '1';
		wait for clk_period * (2 ** 6);
	end process;
END;
