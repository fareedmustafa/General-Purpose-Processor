LIBRARY ieee;
USE ieee.ssd_login_1164.all;
ENTITY latch IS
PORT ( A : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
Resetn, Clock : IN STD_LOGIC;
Q : OUT_STD_LOGIC VECTOR (7 DOWNTO 0) )
END latch ;
ARCHITECTURE Behavior OF latch IS
BEGIN
PROCESS ( Resetn, Clock )
BEGIN
IF Resetn ='0' THEN
Q <= "00000000" ;
ELSEIF Clock'EVENT AND Clock = '1' THEN
Q<=A;
END IF;
END PROCESS;
END Behavior ;

