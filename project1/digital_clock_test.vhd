LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- VHDL project: VHDL code for digital clock
ENTITY tb_digital_clock IS
END tb_digital_clock;
ARCHITECTURE behavior OF tb_digital_clock IS 
  -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT digital_clock
    port ( 
 clk: in std_logic; 
 -- clock 50 MHz
 rst_n: in std_logic; 
 -- Active low reset pulse, to set the time to the input hour and minute (as 
 -- defined by the H_in1, H_in0, M_in1, and M_in0 inputs) and the second to 00.
 -- For normal operation, this input pin should be 1.
 H_in1: in std_logic_vector(1 downto 0);
 -- 2-bit input used to set the most significant hour digit of the clock 
 -- Valid values are 0 to 2. 
 H_in0: in std_logic_vector(3 downto 0);
 -- 4-bit input used to set the least significant hour digit of the clock 
 -- Valid values are 0 to 9.  
 M_in1: in std_logic_vector(3 downto 0);
 -- 4-bit input used to set the most significant minute digit of the clock 
 -- Valid values are 0 to 9.  
 M_in0: in std_logic_vector(3 downto 0);
 -- 4-bit input used to set the least significant minute digit of the clock 
 -- Valid values are 0 to 9.  
 --H_out1: out std_logic_vector(6 downto 0);
 -- The most significant digit of the hour. Valid values are 0 to 2 ( Hexadecimal value on 7-segment LED)
 --H_out0: out std_logic_vector(6 downto 0);
 -- The most significant digit of the hour. Valid values are 0 to 9 ( Hexadecimal value on 7-segment LED)
-- M_out1: out std_logic_vector(6 downto 0);
 -- The most significant digit of the minute. Valid values are 0 to 9 ( Hexadecimal value on 7-segment LED)
 --M_out0: out std_logic_vector(6 downto 0);
 -- The most significant digit of the minute. Valid values are 0 to 9 ( Hexadecimal value on 7-segment LED),
 seg : out  std_logic_vector (7 downto 0); 
 an : out  std_logic_vector (7 downto 0);
 H_out1_bin_out: out  std_logic_vector (3 downto 0);
 H_out0_bin_out: out  std_logic_vector (3 downto 0);
 M_out1_bin_out: out  std_logic_vector (3 downto 0);
 M_out0_bin_out: out  std_logic_vector (3 downto 0);
 S_out1_bin_out: out  std_logic_vector (3 downto 0);
 S_out0_bin_out: out  std_logic_vector (3 downto 0);
  clk_1s_out: out std_logic
 );
    END COMPONENT;
   --Inputs
   signal clk : std_logic := '0';
   signal rst_n : std_logic := '0';
   signal H_in1 : std_logic_vector(1 downto 0) := (others => '0');
   signal H_in0 : std_logic_vector(3 downto 0) := (others => '0');
   signal M_in1 : std_logic_vector(3 downto 0) := (others => '0');
   signal M_in0 : std_logic_vector(3 downto 0) := (others => '0');
	signal seg : std_logic_vector (7 downto 0); 
	signal an :  std_logic_vector (7 downto 0);
	signal H_out1_bin_out:  std_logic_vector (3 downto 0);
	signal H_out0_bin_out:  std_logic_vector (3 downto 0);
 signal M_out1_bin_out:  std_logic_vector (3 downto 0);
 signal M_out0_bin_out:  std_logic_vector (3 downto 0);
 signal S_out1_bin_out:  std_logic_vector (3 downto 0);
 signal S_out0_bin_out:  std_logic_vector (3 downto 0);
  signal clk_1s_out: std_logic;
   -- Clock period definitions
   constant clk_period : time := 50 ps;
BEGIN
 -- Instantiate the Unit Under Test (UUT)
   uut: digital_clock PORT MAP (
          clk => clk,
          rst_n => rst_n,
          H_in1 => H_in1,
          H_in0 => H_in0,
          M_in1 => M_in1,
          M_in0 => M_in0,
			 H_out1_bin_out => H_out1_bin_out,
			 H_out0_bin_out => H_out0_bin_out,
			 M_out0_bin_out => M_out0_bin_out,
			 M_out1_bin_out => M_out1_bin_out,
			 S_out1_bin_out => S_out1_bin_out,
			 S_out0_bin_out => S_out0_bin_out,
			 seg => seg,
			 an => an,
			 clk_1s_out => clk_1s_out
        );
   -- Clock process definitions
   clk_process :process
   begin
 clk <= '0';
 wait for clk_period/2;
 clk <= '1';
 wait for clk_period/2;
   end process;
   -- Stimulus process
   stim_proc: process
   begin 
      -- hold reset state for 100 ns.
 rst_n <= '0';
 H_in1 <= "01";
 H_in0 <= x"0";
 M_in1 <= x"2";
 M_in0 <= x"0";
      wait for 100 ns; 
 rst_n <= '1';
      wait for clk_period*10;
-- insert stimulus here 
      wait;
   end process;

END;