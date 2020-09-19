LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test_task4 IS
END test_task4;
 
ARCHITECTURE behavior OF test_task4 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT task4
    PORT(
         in1 : IN  std_logic;
         in2 : IN  std_logic;
         in3 : IN  std_logic;
         in4 : IN  std_logic;
         Q : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal in1 : std_logic := '0';
   signal in2 : std_logic := '0';
   signal in3 : std_logic := '0';
   signal in4 : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: task4 PORT MAP (
          in1 => in1,
          in2 => in2,
          in3 => in3,
          in4 => in4,
          Q => Q
        );

   -- Clock process definitions
   in1_process :process
   begin
		in1 <= '0';
		wait for 1ps;
		in1 <= '1';
		wait for 1ps;
   end process;
 
 in2_process :process
   begin
		in2 <= '0';
		wait for 2ps;
		in2 <= '1';
		wait for 2ps;
   end process;
	
	in3_process :process
   begin
		in3 <= '0';
		wait for 4ps;
		in3 <= '1';
		wait for 4ps;
   end process;
 
in4_process :process
   begin
		in4 <= '0';
		wait for 8ps;
		in4 <= '1';
		wait for 8ps;
   end process;
END;
