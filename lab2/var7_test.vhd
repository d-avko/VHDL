LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY var7_test IS
END var7_test;
 
ARCHITECTURE behavior OF var7_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    component var7 is
	 Port 		( W : in  STD_LOGIC;
					  X: in  STD_LOGIC;
					  Y : in  STD_LOGIC;
					  Z : in  STD_LOGIC;
					  G1 : out  STD_LOGIC;
					  G2: out  STD_LOGIC
					  );
	  end component;

   --Inputs
   signal W : std_logic := '0';
   signal X : std_logic := '0';
   signal Y : std_logic := '0';
   signal Z : std_logic := '0';

 	--Outputs
   signal G1 : std_logic;
   signal G2 : std_logic;
	
	signal ASSERT_SIGNAL: std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: var7 PORT MAP (
          W,
			 X,
			 Y,
			 Z,
			 G1,
			 G2
        );

			W <= not W after 2 ns;
			X <= not X after 4 ns;
			Y <= not Y after 8 ns;
			Z <= not Z after 16 ns;
	  
			ASSERT_SIGNAL <= (G1 xor G2);
END;
