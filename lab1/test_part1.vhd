LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test_task1 IS
END test_task1;
 
ARCHITECTURE behavior OF test_task1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT task1
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         S : IN  std_logic;
         Z : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal S : std_logic := '0';

 	--Outputs
   signal Z : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: task1 PORT MAP (
          A => A,
          B => B,
          S => S,
          Z => Z
        );

   -- Clock process definitions
   A_process :process
   begin
		A <= '0';
		wait for 1ps;
		A <= '1';
		wait for 1ps;
   end process;
 
 B_process :process
   begin
		B <= '0';
		wait for 2ps;
		B <= '1';
		wait for 2ps;
   end process;
	
	S_process :process
   begin
		S <= '0';
		wait for 4ps;
		S <= '1';
		wait for 4ps;
   end process;


END;
