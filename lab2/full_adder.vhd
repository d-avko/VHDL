library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity full_adder is
    Port ( IN1 : in  STD_LOGIC;
           IN2 : in  STD_LOGIC;
           IN_P : in  STD_LOGIC;
           OUT1 : out  STD_LOGIC;
           OUT_P : out  STD_LOGIC);
end full_adder;

architecture Behavioral of full_adder is

component half_adder is
    Port ( IN1 : in  STD_LOGIC;
           IN2 : in  STD_LOGIC;
           OUT1 : out  STD_LOGIC;
           P : out  STD_LOGIC);
end component;

component lab2_or is
    Port ( OR2_IN1 : in  STD_LOGIC;
           OR2_IN2 : in  STD_LOGIC;
           OR2_OUT : out  STD_LOGIC);
end component;

signal O1, P1, P2: STD_LOGIC;

begin

	U1: half_adder port map(IN1, IN2, O1, P1);
	U2: half_adder port map(IN_P, O1, OUT1, P2);	
	U3: lab2_or port map(P1, P2, OUT_P);

end Behavioral;

