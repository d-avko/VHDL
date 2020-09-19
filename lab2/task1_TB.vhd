-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY task1_testbench IS
  END task1_testbench;

  ARCHITECTURE behavior OF task1_testbench IS 

  -- Component Declaration
          COMPONENT task1
			 PORT(
					A : IN  std_logic;
					B : IN  std_logic;
					S : IN  std_logic;
					Z1 : OUT  std_logic;
					Z2 : OUT  std_logic
				  );
			 END COMPONENT;

          --Inputs
			signal A : std_logic := '0';
			signal B : std_logic := '0';
			signal S : std_logic := '0';

			--Outputs
			signal Z1 : std_logic;
			signal Z2 : std_logic;
			signal ASSERT_SIGNAL: std_logic;
          

  BEGIN

  -- Component Instantiation
          uut: task1 PORT MAP(
				 A => A,
				 B => B,
				 S => S,
				 Z1 => Z1,
				 Z2 => Z2
          );
  
			A <= not A after 2 ns;
			B <= not B after 4 ns;
			S <= not S after 8 ns;
	  
			ASSERT_SIGNAL <= Z1 xor Z2;

  END;
