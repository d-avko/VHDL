LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test_task6 IS
END test_task6;
 
ARCHITECTURE behavior OF test_task6 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT task6
    Port ( A : in  STD_LOGIC_VECTOR(0 to 1);
           B : in  STD_LOGIC_VECTOR(0 to 1);
           S : in  STD_LOGIC;
           Z : out  STD_LOGIC_VECTOR(0 to 1));
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(0 to 1) := "00";
   signal B : std_logic_vector(0 to 1) := "00";
   signal S : std_logic := '0';

 	--Outputs
   signal Z : std_logic_vector(0 to 1);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: task6 PORT MAP (
          A => A,
          B => B,
          S => S,
          Z => Z
        );

   A_process :process
   begin
		A <= "00";
		wait for 1ps;
		A <= "01";
		wait for 1ps;
   end process;
 
 B_process :process
   begin
		B <= "00";
		wait for 2ps;
		B <= "01";
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
