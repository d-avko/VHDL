--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:25:55 10/20/2020
-- Design Name:   
-- Module Name:   D:/XilinxLabs/Lab4/MySignatureAnalizer_tb.vhd
-- Project Name:  Lab4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MySignatureAnalizer
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
 
ENTITY MySignatureAnalizer_tb IS
END MySignatureAnalizer_tb;
 
ARCHITECTURE behavior OF MySignatureAnalizer_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MySignatureAnalizer
    PORT(
         C : IN  std_logic;
         P : IN  std_logic;
         S : OUT  std_logic_vector(9 downto 0);
         Q : OUT  std_logic
        );
    END COMPONENT;

	component Var9Beh
		port (
			W : in  STD_LOGIC;
         X : in  STD_LOGIC;
         Y : in  STD_LOGIC;
         Z : in  STD_LOGIC;
         G : out  STD_LOGIC
		);
	end component;
	
	component Var9Beh_Wrong
		port (
			W : in  STD_LOGIC;
         X : in  STD_LOGIC;
         Y : in  STD_LOGIC;
         Z : in  STD_LOGIC;
         G : out  STD_LOGIC
		);
	end component;
	
	component MySygTestLFSR
		port (
			C : in std_logic;
			Q : out std_logic_vector(3 downto 0)
		);
	end component;
    
	constant clk_period : time := 1ps; 

   signal C : std_logic;

	signal LFSRSig : std_logic_vector(3 downto 0);
	signal CorrectResult : std_logic;
	signal WrongResult : std_logic;

	signal CorrectS : std_logic_vector(9 downto 0);
	signal CorrectQ : std_logic;
	signal CorrectQRes : std_logic_vector(14 downto 0);

	signal WrongS : std_logic_vector(9 downto 0);
	signal WrongQ : std_logic;
	signal WrongQRes : std_logic_vector(14 downto 0);

BEGIN
		
	TestLFSR : MySygTestLFSR
	port map (C, LFSRSig);
	
	CorrectComp : Var9Beh
	port map (LFSRSig(0), LFSRSig(1), LFSRSig(2), LFSRSig(3), CorrectResult);
	
	WrongComp : Var9Beh_Wrong
	port map (LFSRSig(0), LFSRSig(1), LFSRSig(2), LFSRSig(3), WrongResult);
	
	CorrectAnalizer : MySignatureAnalizer
	port map (C, CorrectResult, CorrectS, CorrectQ);
		
	WrongAnalizer : MySignatureAnalizer
	port map (C, WrongResult, WrongS, WrongQ);
		
	c_proc : process
	begin
		wait for clk_period;
		C <= '0';
		wait for clk_period;
		C <= '1';
	end process;

	qres_proc : process
	begin
		CorrectQRes <= CorrectQRes(CorrectQRes'high - 1 downto 0) & CorrectQ;
		WrongQRes <= WrongQRes(WrongQRes'high - 1 downto 0) & WrongQ;
		wait for clk_period * 2;
	end process;
END;
