----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:45:13 09/19/2020 
-- Design Name: 
-- Module Name:    var7_beh - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity var7_beh is
Port 		( W : in  STD_LOGIC;
           X: in  STD_LOGIC;
           Y : in  STD_LOGIC;
           Z : in  STD_LOGIC;
           G : out  STD_LOGIC
			  );
end var7_beh;

architecture Behavioral of var7_beh is

begin

G <= (W and X and Y) or (Y and Z);

end Behavioral;

