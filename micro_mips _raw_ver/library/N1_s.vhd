LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY P_B IS 
PORT (SO : INOUT STD_LOGIC;
      SI : IN STD_LOGIC); 

END P_B;

ARCHITECTURE model OF P_B IS 

BEGIN   
PROCESS (SI) 
BEGIN 
   IF SI = '0' OR SI = 'L' THEN SO <= 'L'AFTER 10 NS;
   ELSIF  SI = '1' OR SI = 'H' THEN SO <= 'H'AFTER 10 NS;
   ELSE   SO <= 'W' AFTER 10 NS; 
             
  END IF;
  END PROCESS;
  
  END MODEL;
-- ************************************************  
library IEEE; 
use IEEE.STD_LOGIC_1164.all; 
 
entity F3N3 is 

	port(                       --      ___
	 QN     :   out std_logic ; -- S --| T |---Q
	 Q      :   out std_logic ; --     |   |
	 R      :   in std_logic;   -- R --|   o---QN
	 S      :   in std_logic);  --     -----
end F3N3;                                       
 
             
architecture model of F3N3 is 
signal sel:  std_logic_vector(1 downto 0); 
SIGNAL I_Q,I_QN : std_logic   ;
SIGNAL ERROR :  std_logic ;


BEGIN 
  ERROR_PR: PROCESS(R,S) 
  begin
   if( (R = '0' AND S = '0') AND R'EVENT AND S'EVENT AND 
      R'LAST_VALUE ='1' AND S'LAST_VALUE ='1') then ERROR <='1';
   else ERROR <='0';
   end if;
  end process;
  
  sel <= R&S;
  BEHAVIOR : PROCESS ( sel,ERROR)
  
    begin   
------------------------- 
--  Functionality Section 
-------------------------    
 		case sel is 
			when "00" =>  if(ERROR='0') then I_QN <= I_QN; I_Q <= I_Q;
			              else               I_QN <= 'X';  I_Q <= 'X';
			              end if; 		    
			when "01" =>  I_QN <=  '0'after 39 ns;  I_Q <= '1'after 20 ns;
                        when "10" =>  I_QN <= '1'after 20 ns;  I_Q <= '0'after 39 ns;
			when "11" =>  I_QN <= '1'after 20 ns;  I_Q <= '1' after 20 ns;
        	when "0X" =>  I_QN <= 'X'after 20 ns;  I_Q <= 'X'after 20 ns;
                when "1X" =>  I_QN <= '1'after 20 ns;  I_Q <= 'X'after 20 ns;
                when "X0" =>  I_QN <= 'X'after 20 ns;  I_Q <= 'X'after 20 ns;
                when "X1" =>  I_QN <= 'X' after 20 ns;  I_Q <= '1'after 20 ns;
                when others =>  I_QN <= 'X' after 20 ns;  I_Q <= 'X'after 20 ns;
                        
		end case;
    end process;
 
    Q <=      I_Q  ;
    QN <=     I_QN ;

end model;
-- END BEHAVE F3N3
--***************************** MODEL F3N2 ************************************** 
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
 
ENTITY F3N2 IS 
PORT( 
A,  
B,  
C,  
D : IN  std_logic; 
S : OUT  std_logic); 
END F3N2; 
 
ARCHITECTURE model OF F3N2 IS
BEGIN
 
PROCESS (A,B,C,D)
  
BEGIN 
     IF (A = '0' OR B = '0' OR C = '0' OR D = '0') THEN S <= '0' AFTER 16 nS;
     ELSIF (A = '1' AND B = '1' AND C= '1' AND D = '1') THEN S <= '1' AFTER 30 nS; 
     ELSE S <= 'X' AFTER 16 NS;   
END IF;
END PROCESS;

END model; 
-- END BEHAVE F3N2 
--**************************** MODEL F3N2inv **************************************
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
 
ENTITY F3N2inv IS 
PORT( 
A,  
B,  
C,  
D : IN  std_logic; 
S : OUT  std_logic); 
END F3N2inv; 
 
ARCHITECTURE model OF F3N2inv IS
BEGIN
 
PROCESS (A,B,C,D)
  
BEGIN 
     IF (A = '0' OR B = '0' OR C = '0' OR D = '0') THEN S <= '0' AFTER 16 nS;
     ELSIF (A = '1' AND B = '1' AND C= '1' AND D = '1') THEN S <= '1' AFTER 30 nS; 
     ELSE S <= 'X' AFTER 16 NS;  
       
END IF;
END PROCESS;

END model; 
-- END BEHAVE F3N2inv 
--**************************** MODEL FC2 *****************************************
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
 
ENTITY FC2 IS 
   port( 
    	N	:	in    std_logic; 
     	A	:	out   std_logic; 
     	B	:	out   std_logic; 
        S       :	inout   std_logic); 
end FC2; 
ARCHITECTURE model OF FC2 IS 
   begin 
------------------------- 
--  Functionality Section 
------------------------- 
 SASHA:    PROCESS (N)   BEGIN
       IF (N = '0')   THEN S <= '0' AFTER 90 nS;
       ELSIF (N = '1')   THEN S <= 'Z' AFTER 20 nS; 
   END IF;
  END PROCESS SASHA;  
 SAHA:     PROCESS (S)  
       begin
       IF   S = '0' OR S = 'L' THEN A <= '1' AFTER 9 NS; B <= '0' AFTER 19 NS;
       ELSIF S = '1' OR S = 'H' THEN A <= '0' AFTER 9 NS; B <= '1' AFTER 19 NS;  
       ELSE A <= 'X' AFTER 9 NS; B <= 'X' AFTER 15 NS;
   END IF;
   END PROCESS SAHA;    
END model; 
-- END BEHAVE FC2 
--***************************** MODEL FC4 ***************************************
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 

ENTITY FC4 IS 
   port( 
     	P	:	in    std_logic; 
     	N	:	in    std_logic; 
        S       :	out   std_logic); 
end FC4; 
ARCHITECTURE model OF FC4 IS 
   begin 
------------------------- 
--  Functionality Section 
------------------------- 
     PROCESS (P, N)   BEGIN
       IF (P = '0'AND N ='0')   THEN S <= '0' AFTER 55 nS;
    ELSIF (P = '1'AND N ='1')   THEN S <= '1' AFTER 55 nS;
    ELSIF (P = '1'AND N ='0')   THEN S <= 'X' AFTER 55 nS;
    ELSIF (P = '0'AND N ='1')   THEN S <= 'Z' AFTER 55 nS;  
    else S <= 'X' AFTER 55 NS;
        END IF;
     END PROCESS;
END model; 
-- END BEHAVE FC4 
--***************************** MODEL F4N6 ****************************************

LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
 
ENTITY F4N6 IS 
PORT( 
A,  
B,  
C,  
D,  
E,  
F : IN  std_logic; 
S : OUT  std_logic); 
END F4N6; 
 
ARCHITECTURE model OF F4N6 IS 
  
BEGIN 
PROCESS (A,B,C,D,E,F)
  
BEGIN 
     IF (A = '0' OR B = '0' OR C = '0' OR D = '0' OR E = '0' OR F = '0') THEN S <= '0' AFTER 22 nS;
     ELSIF (A = '1' AND B = '1' AND C = '1' AND D = '1' AND E = '1' AND F = '1') THEN S <= '1' AFTER 50 NS;
     ELSE S <= 'X' AFTER 22 nS;    
END IF;
END PROCESS;

END model; 
-- END BEHAVE F4N6 
--***************************** MODEL F4N6inv ***************************************
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
 
ENTITY F4N6inv IS 
PORT( 
A,  
B,  
C,  
D,  
E,  
F : IN  std_logic; 
S : OUT  std_logic); 
END F4N6inv; 
 
ARCHITECTURE model OF F4N6inv IS 
  
BEGIN 
PROCESS (A,B,C,D,E,F)
  
BEGIN 
     IF (A = '0' OR B = '0' OR C = '0' OR D = '0' OR E = '0' OR F = '0') THEN S <= '0' AFTER 22 nS;
      ELSIF (A = '1' AND B = '1' AND C = '1' AND D = '1' AND E = '1' AND F = '1') THEN S <= '1' AFTER 50 NS;
     ELSE S <= 'X' AFTER 22 nS;     
     
END IF;
END PROCESS;   
END model; 
-- END BEHAVE F4N6inv 
--****************************** MODEL F6N2 ******************************************
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
 
ENTITY F6N2 IS 
PORT( 
A,  
B,  
C,  
D,  
E,  
F,
K,
L,
M : IN  std_logic; 
S : OUT  std_logic); 
END F6N2; 
 
ARCHITECTURE model OF F6N2 IS 
  
BEGIN 
 PROCESS (A,B,C,D,E,F,K,L,M)
  
BEGIN 
     IF (A = '0' OR B = '0' OR C = '0' OR D = '0' OR E = '0' OR F = '0' OR K = '0' OR L = '0' OR M = '0') THEN S <= '0' AFTER 26 nS;
     ELSIF (A = '1' AND B ='1' AND C ='1' AND D ='1' AND E ='1' AND F ='1' AND K ='1' AND L ='1' AND M ='1') THEN S <= '1' AFTER 67 NS;  
     ELSE S <= 'X' AFTER 26 nS;    
END IF;
END PROCESS;      
END model; 
-- END BEHAVE F6N2 
--********************************* MODEL F6N2inv ************************************
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
 
ENTITY F6N2inv IS 
PORT( 
A,  
B,  
C,  
D,  
E,  
F,
K,
L,
M : IN  std_logic; 
S : OUT  std_logic); 
END F6N2inv; 
 
ARCHITECTURE model OF F6N2inv IS 
  
BEGIN 

 PROCESS (A,B,C,D,E,F,K,L,M)
  
BEGIN 
     IF (A = '0' OR B = '0' OR C = '0' OR D = '0' OR E = '0' OR F = '0' OR K = '0' OR L = '0' OR M = '0') THEN S <= '0' AFTER 26 nS;
     ELSIF (A = '1' AND B ='1' AND C ='1' AND D ='1' AND E ='1' AND F ='1' AND K ='1' AND L ='1' AND M ='1') THEN S <= '1' AFTER 67 NS;  
     ELSE S <= 'X' AFTER 26 nS;  
END IF;
END PROCESS;          
END model; 
-- END BEHAVE F6N2inv
--******************************** MODEL F2N13 **************************************
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
 
ENTITY F2N13 IS 
    PORT( 
	 A :in    std_logic; 
	 B :in    std_logic; 
         C :in    std_logic; 
         D :in    std_logic; 
	 S :out   std_logic); 
END F2N13; 
  
ARCHITECTURE model OF F2N13 IS 
 
   BEGIN 
 
------------------------- 
--  Functionality Section 
------------------------- 
PROCESS(A,B,C,D)
BEGIN

   IF  (A='1' AND B ='1') OR (C='1' AND D='1') THEN S <= '0' AFTER 11 nS; 
   ELSIF(A = '0' OR B = '0') AND (C = '0' OR D = '0') THEN S <= '1' AFTER 18 nS;
   ELSE S <= 'X' AFTER 11 NS;
END IF;
END PROCESS;

END model; 
-- END BEHAVE F2N13
--******************************* MODEL F2N13inv ****************************  
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
 
ENTITY F2N13inv IS 
    PORT( 
	 A :in    std_logic; 
	 B :in    std_logic; 
         C :in    std_logic; 
         D :in    std_logic; 
	 S :out   std_logic); 
END F2N13inv; 
  
ARCHITECTURE model OF F2N13inv IS 
 
   BEGIN 
 
------------------------- 
--  Functionality Section 
------------------------- 
PROCESS (A,B,C,D)
BEGIN

   IF  (A='1' AND B ='1') OR (C='1' AND D='1') THEN S <= '0' AFTER 11 nS; 
   ELSIF(A = '0' OR B = '0') AND (C = '0' OR D = '0')THEN S <= '1' AFTER 18 nS;
   ELSE S<= 'X' AFTER 11 NS;
END IF;
END PROCESS;
  
END model; 
-- END BEHAVE F2N13inv
--****************************** MODEL F4N2 *********************************  
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
 
ENTITY F4N2 IS 
 
   port( 
	 A  :in    std_logic; 
	 B  :in    std_logic; 
         C  :in    std_logic; 
         D  :in    std_logic; 
	 E  :in    std_logic; 
	 S  :out   std_logic); 
end F4N2; 
 
ARCHITECTURE model OF F4N2 IS 
 
   BEGIN 
 
------------------------- 
--  Functionality Section 
------------------------- 

PROCESS (A,B,C,D,E)
BEGIN 
    IF E = '1' THEN S <= '1' AFTER 22 NS; 
    ELSIF  E = '0' AND (A='0' OR B = '0') AND (C = '0' OR D = '0') THEN S  <= '0' AFTER 42 nS; 
    ELSIF (A = '1' AND B = '1') OR (C = '1' AND D = '1') THEN S <= '1' AFTER 30 nS;
    ELSE S <= 'X' AFTER 22 NS;
    
END IF;
END PROCESS;
 
END model; 
-- END BEHAVE F4N2 
--****************************** MODEL F4N2inv ******************************* 
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
 
ENTITY F4N2inv IS 
 
   port( 
	 A  : in    std_logic; 
	 B  : in    std_logic; 
	 C  : in    std_logic; 
         D  : in    std_logic; 
	 E  : in    std_logic; 
	 S  :out   std_logic); 
end F4N2inv; 
 
ARCHITECTURE model OF F4N2inv IS 
 
   BEGIN 
 
------------------------- 
--  Functionality Section 
------------------------- 
PROCESS (A,B,C,D,E)
BEGIN 
    IF E = '1' THEN S <= '1' AFTER 22 NS; 
    ELSIF  E = '0' AND (A='0' OR B = '0') AND (C = '0' OR D = '0') THEN S  <= '0' AFTER 42 nS; 
    ELSIF (A = '1' AND B = '1') OR (C = '1' AND D = '1') THEN S <= '1' AFTER 30 nS;
    ELSE S <= 'X' AFTER 22 NS;
    
END IF;
END PROCESS;   
 
END model; 
-- END BEHAVE F4N2inv
--******************************* MODEL F2N9 ******************************** 
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
 
ENTITY F2N9 IS 
    port( 
	 A :	in    std_logic; 
	 B :	in    std_logic; 
     C :	in    std_logic; 
	 S :	out   std_logic); 
end F2N9; 

 ARCHITECTURE model OF F2N9 IS 
  
   begin 
 
------------------------- 
--  Functionality Section 
------------------------- 
PROCESS (A,B,C)
BEGIN 
    IF C = '1' OR  (A = '1' AND B = '1') THEN S <= '0' AFTER 10 NS;
    ELSIF C='0' AND (A = '0' OR B = '0') THEN S <= '1' AFTER 15 nS; 
    ELSE S <='X' AFTER 10 NS;
END IF;
END PROCESS;   
 
END model; 
-- END BEHAVE F2N9  
--****************************** MODEL F2N9inv ****************************** 
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
 
ENTITY F2N9inv IS 
    port( 
	 A :	in    std_logic; 
	 B :	in    std_logic; 
     C :	in    std_logic; 
	 S :	out   std_logic); 
end F2N9inv; 

 ARCHITECTURE model OF F2N9inv IS 
  
   begin 
 
------------------------- 
--  Functionality Section 
------------------------- 
PROCESS (A,B,C)
BEGIN 
    IF C = '1' OR  (A = '1' AND B = '1') THEN S <= '0' AFTER 10 NS;
    ELSIF C='0' AND (A = '0' OR B = '0') THEN S <= '1' AFTER 15 nS; 
    ELSE S <='X' AFTER 10 NS;
   
END IF;
END PROCESS;     
 
END model; 
-- END BEHAVE F2N9inv 
--****************************** MODEL F2N10 ******************************* 
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
 
ENTITY F2N10 IS 
  
   port( 
	 A :	in    std_logic; 
	 B :	in    std_logic; 
         C :	in    std_logic; 
	 R :	out   std_logic;
	 S :	out   std_logic); 
end F2N10; 
  
ARCHITECTURE model OF F2N10 IS

 signal E : std_logic;

     begin 
 ------------------------- 
--  Functionality Section 
------------------------- 
PROCESS (A,B,C)
BEGIN
    IF C = '1' OR  (A = '1' AND B = '1') THEN E <= '0' AFTER 10 NS;
    ELSIF C ='0' AND (A = '0' OR B = '0') THEN E <= '1' AFTER 15 nS;
    ELSE E <= 'X' AFTER 10 NS;
END IF;
END PROCESS;
 
    R <= NOT E AFTER 7 nS; 
    S <= E;

END model; 
-- END BEHAVE F2N10 
--****************************** MODEL F2N10inv **************************
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
 
ENTITY F2N10inv IS 
  
   port( 
	 A :	in    std_logic; 
	 B :	in    std_logic; 
         C :	in    std_logic; 
	 R :	out   std_logic;
	 S :	out   std_logic); 
end F2N10inv; 
  
ARCHITECTURE model OF F2N10inv IS  

    signal E : std_logic;
    begin 
 ------------------------- 
--  Functionality Section 
------------------------- 
PROCESS (A,B,C)
BEGIN
    IF C = '1' OR  (A = '1' AND B = '1') THEN E <= '0' AFTER 10 NS;
    ELSIF C ='0' AND (A = '0' OR B = '0') THEN E <= '1' AFTER 15 nS;
    ELSE E <= 'X' AFTER 10 NS;
   
END IF;
END PROCESS;
 
    R <= NOT E AFTER 7 nS; 
    S <= E;
    
END model; 
-- END BEHAVE F2N10inv 
--******************************* MODEL F7 ******************************* 
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
 
ENTITY F7 IS 
 
   port( 
	 S1 :	out   std_logic; 
	 S2 :	out   std_logic;
     A1 :	in    std_logic; 
     A2 :	in    std_logic); 
	
end F7; 
 
ARCHITECTURE model OF F7 IS 
 
   begin 
 
------------------------- 
--  Functionality Section 
------------------------- 
    S1 <= NOT (A1) AFTER 11 nS; 
    S2 <= NOT (A2) AFTER 11 nS; 
END model; 
-- END BEHAVE F7
--******************************* MODEL F7inv ****************************
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
 
ENTITY F7inv IS 
 
   port( 
	 S1 :	out   std_logic; 
	 S2 :	out   std_logic;
     A1 :	in    std_logic; 
     A2 :	in    std_logic); 
	
end F7inv; 
 
ARCHITECTURE model OF F7inv IS 
 
   begin 
 
------------------------- 
--  Functionality Section 
------------------------- 
    S1 <= NOT (A1) AFTER 11 nS; 
    S2 <= NOT (A2) AFTER 11 nS; 
END model; 
-- END BEHAVE F7inv
--******************************* MODEL F6 ******************************
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
 
ENTITY F6 IS 
 
   port( 
	 S  :	out   std_logic; 
	 R  :	out   std_logic;
     A  :   in    std_logic); 
	
end F6; 
 
ARCHITECTURE model OF F6 IS 
 
   begin 
 
------------------------- 
--  Functionality Section 
------------------------- 
    S <= A AFTER 18 nS; 
    R <= NOT (A) AFTER 11 nS; 
END model; 
-- END BEHAVE F6
--******************************* MODEL F6inv *************************** 
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
 
ENTITY F6inv IS 
 
   port( 
	 S :	out   std_logic; 
	 R :	out   std_logic;
     A :	in    std_logic); 
	
end F6inv; 
 
ARCHITECTURE model OF F6inv IS 
 
   begin 
 
------------------------- 
--  Functionality Section 
------------------------- 
    S <= A AFTER 18 nS; 
    R <= NOT (A) AFTER 11 nS; 
END model; 
-- END BEHAVE F6inv
--******************************** MODEL FC1 **************************** 
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
 
ENTITY FC1 IS     port(   


	 S  :	in    std_logic; 
	 A  :	out   std_logic;
         B  :   out   std_logic); 
	
end FC1; 
 
ARCHITECTURE model OF FC1 IS   

   
   begin 
 
------------------------- 
--  Functionality Section 
------------------------- 
PROCESS (S)
BEGIN
    IF (S = '0' OR S = 'L') THEN A <= '1' AFTER 14 nS;
                                 B <= '0' AFTER 24 NS; 
    ELSIF (S = '1' OR S = 'H' OR S = 'Z') THEN A <= '0' AFTER 14 nS;
                                    B <= '1' AFTER 24 NS;
    ELSE A <= 'X' AFTER 14 nS; 
          B <= 'X' AFTER 24 nS;
 END IF;
END PROCESS; 
   
END model; 
-- END BEHAVE FC1

--****************************** MODEL F3 ******************************* 
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
 
ENTITY F3 IS 
 
   port( 
	 A :	in    std_logic; 
	 S :	out   std_logic); 
end F3; 
 
ARCHITECTURE model OF F3 IS 
 
   begin 
 
------------------------- 
--  Functionality Section 
------------------------- 
    S <= NOT (A) AFTER 12 nS; 
 
END model; 
-- END BEHAVE F3 
--*************************** MODEL F3inv ***************************** 
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
 
ENTITY F3inv IS 
 
   port( 
	 A :	in    std_logic; 
	 S :	out   std_logic); 
end F3inv; 
 
ARCHITECTURE model OF F3inv IS 
 
   begin 
 
------------------------- 
--  Functionality Section 
------------------------- 
    S <= NOT (A) AFTER 12 nS; 
 
END model; 
-- END BEHAVE F3inv 
--*************************** MODEL F2N3 ***************************** 
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
 
ENTITY F2N3 IS 
 
   port( 
	 A  :	in    std_logic; 
	 S  :	out   std_logic); 
end F2N3; 
 
ARCHITECTURE model OF F2N3 IS 
 
   begin 
 
------------------------- 
--  Functionality Section 
------------------------- 
    S <= NOT (A) AFTER 15 nS; 
 
END model; 
-- END BEHAVE F2N3
--************************** MODEL F2N3inv ***************************
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
 
ENTITY F2N3inv IS 
 
   port( 
	 A  :	in    std_logic; 
	 S  :	out   std_logic); 
end F2N3inv; 
 
ARCHITECTURE model OF F2N3inv IS 
 
   begin 
 
------------------------- 
--  Functionality Section 
------------------------- 
    S <= NOT (A) AFTER 15 nS; 
 
END model; 
-- END BEHAVE F2N3inv
--************************ MODEL F2 *************************************
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
 
ENTITY F2 IS 
PORT( 
A,  
B : IN  std_logic; 
S : OUT  std_logic); 
END F2; 
 
ARCHITECTURE model OF F2 IS 
  
BEGIN 
PROCESS (A,B)
BEGIN 
    IF A='1' AND B = '1' THEN S <= '0' AFTER 17 nS;
    ELSIF A ='0' OR B ='0'THEN S<= '1' AFTER 10 nS;
    ELSE S <= 'X' AFTER 10 NS;
END IF;
END PROCESS;
   
END model; 
-- END BEHAVE F2 
--************************** MODEL F2inv ******************************** 
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
 
ENTITY F2inv IS 
PORT( 
A,  
B : IN  std_logic; 
S : OUT  std_logic); 
END F2inv; 
 
ARCHITECTURE model OF F2inv IS 
  
BEGIN 
PROCESS (A,B)
BEGIN 
    IF A='1' AND B = '1' THEN S <= '0' AFTER 17 nS;
    ELSIF A ='0' OR B ='0'THEN S<= '1' AFTER 10 nS;
    ELSE S <= 'X' AFTER 10 NS;
   
END IF;
END PROCESS;

END model; 
-- END BEHAVE F2inv 
--**************************** MODEL F2N2 ****************************
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
 
ENTITY F2N2 IS 
PORT( 
A,  
B : IN  std_logic; 
S : OUT  std_logic); 
END F2N2; 
 
ARCHITECTURE model OF F2N2 IS 
  
BEGIN 
PROCESS (A,B)
BEGIN 
    IF A='1' AND B = '1' THEN S <= '0' AFTER 20 nS;
    ELSIF A ='0' OR B ='0'THEN S<= '1' AFTER 13 nS;
    ELSE S <= 'X' AFTER 13 NS;
   
END IF;
END PROCESS;

END model; 
-- END BEHAVE F2N2 
--*************************** MODEL F2N2inv *************************** 
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
 
ENTITY F2N2inv IS 
PORT( 
A,  
B : IN  std_logic; 
S : OUT  std_logic); 
END F2N2inv; 
 
ARCHITECTURE model OF F2N2inv IS 
  
BEGIN 
PROCESS (A,B)
BEGIN 
    IF A='1' AND B = '1' THEN S <= '0' AFTER 20 nS;
    ELSIF A ='0' OR B ='0'THEN S<= '1' AFTER 13 nS;
    ELSE S <= 'X' AFTER 13 NS;
    
END IF;
END PROCESS; 
  
END model; 
-- END BEHAVE F2N2inv 

--**************************** MODEL F2N7 ******************************* 
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
 
ENTITY F2N7 IS 
PORT( 
A,  
B,  
C : IN  std_logic; 
S : OUT  std_logic); 
END F2N7; 
 
ARCHITECTURE model OF F2N7 IS 
 
BEGIN 
PROCESS (A,B,C)
BEGIN 
    IF A='1' AND B = '1' AND C = '1' THEN S <= '0' AFTER 30 nS;
    ELSIF A ='0' OR B ='0' OR C ='0' THEN S <= '1' AFTER 13 nS;
    ELSE S <= 'X' AFTER 13 NS;
END IF;
END PROCESS;
   
 END model; 
-- END BEHAVE F2N7 
--**************************** MODEL F2N7inv ***************************** 
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
 
ENTITY F2N7inv IS 
PORT( 
A,  
B,  
C : IN  std_logic; 
S : OUT  std_logic); 
END F2N7inv; 
 
ARCHITECTURE model OF F2N7inv IS 
  
BEGIN 
PROCESS (A,B,C)
BEGIN 
    IF A='1' AND B = '1' AND C = '1' THEN S <= '0' AFTER 30 nS;
    ELSIF A ='0' OR B ='0' OR C ='0' THEN S <= '1' AFTER 13 nS;
    ELSE S <= 'X' AFTER 13 NS;
END IF;
END PROCESS;
   
END model; 
-- END BEHAVE F2N7inv 

--************************* MODEL F2N8 *******************************
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
 
ENTITY F2N8 IS 
PORT( 
A,  
B,  
C : IN  std_logic; 
R,S : OUT  std_logic); 
END F2N8; 
 
ARCHITECTURE model OF F2N8 IS 
SIGNAL E : STD_LOGIC; 
 
BEGIN
PROCESS (A,B,C)
BEGIN
    IF A='1' AND B='1' AND C='1' THEN E <= '0' AFTER 33 nS;
    ELSIF A ='0' OR B ='0' OR C ='0' THEN E <= '1' AFTER 13 nS;
    ELSE E <= 'X' AFTER 13 NS;
    
 END IF;
 END PROCESS;
   S <= E;
   R <= NOT E AFTER 7 nS;  
END model; 
-- END BEHAVE F2N8 
--************************ MODEL F2N8inv *****************************
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
 
ENTITY F2N8inv IS 
PORT( 
A,  
B,  
C : IN  std_logic; 
R,S : OUT  std_logic); 
END F2N8inv; 
 
ARCHITECTURE model OF F2N8inv IS 
 SIGNAL E : STD_LOGIC;  
BEGIN
PROCESS (A,B,C)
BEGIN
    IF A='1' AND B='1' AND C='1' THEN E <= '0' AFTER 33 nS;
    ELSIF A ='0' OR B ='0' OR C ='0' THEN E <= '1' AFTER 13 nS;
    ELSE E <= 'X' AFTER 13 NS;
    
 END IF;
 END PROCESS;
   S <= E;
   R <= NOT E AFTER 7 nS;   
 
END model; 
-- END BEHAVE F2N8inv 

--******************************************************************************* 
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
 
ENTITY F4N3 IS 
   port( 
	 A :	in    std_logic; 
	 B :	in    std_logic; 
	 S :	out   std_logic); 
end F4N3; 

ARCHITECTURE model OF F4N3 IS 

   begin 
 
------------------------- 
--  Functionality Section 
------------------------- 
	 S <= NOT (A XOR B) AFTER 38 nS; 
END model; 
-- END BEHAVE F4N3
--************************** MODEL F1 *************************************** 
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
 
ENTITY F1 IS 
PORT( 
A,  
B : IN  std_logic; 
S : OUT  std_logic); 
END F1; 
 
ARCHITECTURE model OF F1 IS 
  
BEGIN 
PROCESS (A,B)
BEGIN
    IF A = '1' OR B = '1' THEN S <= '0' AFTER 10 nS;
    ELSIF A = '0' AND B ='0' THEN S<= '1' AFTER 19 nS;
    ELSE S <= 'X' AFTER 10 NS;
END IF;
END PROCESS;
  
END model; 
-- END BEHAVE F1 
--************************* MODEL F1inv ************************************  
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
 
ENTITY F1inv IS 
PORT( 
A,  
B : IN  std_logic; 
S : OUT  std_logic); 
END F1inv; 
 
ARCHITECTURE model OF F1inv IS 
  
BEGIN 
PROCESS (A,B)
BEGIN
    IF A = '1' OR B = '1' THEN S <= '0' AFTER 10 nS;
    ELSIF A = '0' AND B ='0' THEN S<= '1' AFTER 19 nS;
    ELSE S <= 'X' AFTER 10 NS;
    
END IF;
END PROCESS;
   
END model; 
-- END BEHAVE F1inv 
--************************ MODEL F2N1 ***************************************  
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
 
ENTITY F2N1 IS 
PORT( 
A,  
B : IN  std_logic; 
S : OUT  std_logic); 
END F2N1; 
 
ARCHITECTURE model OF F2N1 IS 
  
BEGIN 
PROCESS (A,B)
BEGIN
    IF A = '1' OR B = '1' THEN S <= '0' AFTER 13 nS;
    ELSIF A ='0' AND B ='0' THEN S <= '1' AFTER 22 NS;
    ELSE  S<= 'X' AFTER 13 nS;
END IF;
END PROCESS;
END model; 
-- END BEHAVE F2N1 
--************************ MODEL F2N1inv ************************************
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
 
ENTITY F2N1inv IS 
PORT( 
A,  
B : IN  std_logic; 
S : OUT  std_logic); 
END F2N1inv; 
 
ARCHITECTURE model OF F2N1inv IS 
  
BEGIN 
PROCESS (A,B)
BEGIN
    IF A = '1' OR B = '1' THEN S <= '0' AFTER 13 nS;
    ELSIF A ='0' AND B ='0' THEN S <= '1' AFTER 22 NS;
    ELSE  S<= 'X' AFTER 13 nS;
    
END IF;
END PROCESS;
   
END model; 
-- END BEHAVE F2N1inv 
--***************************** MODEL F2N5 ********************************** 
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
 
ENTITY F2N5 IS 
PORT( 
A,  
B,  
C : IN  std_logic; 
S : OUT  std_logic); 
END F2N5; 
 
ARCHITECTURE model OF F2N5 IS 
  
BEGIN 
PROCESS (A,B,C)
BEGIN
    IF A = '1' OR B = '1' OR C = '1' THEN S <= '0' AFTER 13 nS;
    ELSIF A ='0' AND B ='0' AND C ='0' THEN S <= '1' AFTER 33 NS;
    ELSE S <= 'X' AFTER 13 nS;
END IF;
END PROCESS;
    
END model; 
-- END BEHAVE F2N5 
--***************************** MODEL F2N5inv ****************************** 
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
 
ENTITY F2N5inv IS 
PORT( 
A,  
B,  
C : IN  std_logic; 
S : OUT  std_logic); 
END F2N5inv; 
 
ARCHITECTURE model OF F2N5inv IS 
  
BEGIN 
PROCESS (A,B,C)
BEGIN
    IF A = '1' OR B = '1' OR C = '1' THEN S <= '0' AFTER 13 nS;
    ELSIF A ='0' AND B ='0' AND C ='0' THEN S <= '1' AFTER 33 NS;
    ELSE S <= 'X' AFTER 13 nS;
    
END IF;
END PROCESS;
    
END model; 
-- END BEHAVE F2N5inv 
--***************************** MODEL F2N6 ********************************* 
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 

ENTITY F2N6 IS 
PORT( 
A,
B,
C : IN  std_logic; 
R, S : OUT  std_logic); 
END F2N6; 
 
ARCHITECTURE model OF F2N6 IS 
 SIGNAL E : STD_LOGIC;  
BEGIN
PROCESS (A,B,C)
BEGIN
    IF A='1' OR B='1' OR C='1' THEN E <= '0' AFTER 13 nS;
    ELSIF A ='0' AND B ='0' AND C ='0' THEN E <= '1' AFTER 33 nS;
    ELSE E <= 'X' AFTER 13 NS;
 END IF;
 END PROCESS;
   S <= E;
   R <= NOT E AFTER 7 NS;   
  
END model; 
-- END BEHAVE F2N6 
--*************************** MODEL F2N6inv ******************************* 
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 

ENTITY F2N6inv IS 
PORT( 
A,  
B,  
C : IN  std_logic; 
R, S : OUT  std_logic); 
END F2N6inv; 
 
ARCHITECTURE model OF F2N6inv IS 
 SIGNAL E : STD_LOGIC;  
BEGIN
PROCESS (A,B,C)
BEGIN
    IF A='1' OR B='1' OR C='1' THEN E <= '0' AFTER 13 nS;
    ELSIF A ='0' AND B ='0' AND C ='0' THEN E <= '1' AFTER 33 nS;
    ELSE E <= 'X' AFTER 13 NS;
    
 END IF;
 END PROCESS;
   S <= E;
   R <= NOT E AFTER 7 nS;   

END model; 
-- END BEHAVE F2N6inv 
--****************************MODEL F3N1 ********************************* 
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
 
ENTITY F3N1 IS 
PORT( 
A,  
B,  
C,  
D : IN  std_logic; 
S : OUT  std_logic); 
END F3N1; 
 
ARCHITECTURE model OF F3N1 IS 
  
BEGIN
PROCESS (A,B,C,D)
BEGIN 
    IF A = '1' OR B = '1' OR C = '1' OR D = '1' THEN S <= '1'  AFTER 16 nS; 
    ELSIF A ='0' AND B ='0' AND C ='0' AND D ='0' THEN S <= '0' AFTER 30 NS;
    ELSE S <= 'X' AFTER 16 nS;
END IF;
END PROCESS;
 
END model; 
-- END BEHAVE F3N1 
--************************ MODEL F3N1inv ********************************
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
 
ENTITY F3N1inv IS 
PORT( 
A,  
B,  
C,  
D : IN  std_logic; 
S : OUT  std_logic); 
END F3N1inv; 
 
ARCHITECTURE model OF F3N1inv IS 
  
BEGIN 
PROCESS (A,B,C,D)
BEGIN 
    IF A = '1' OR B = '1' OR C = '1' OR D = '1' THEN S <= '1'  AFTER 16 nS; 
    ELSIF A ='0' AND B ='0' AND C ='0' AND D ='0' THEN S <= '0' AFTER 30 NS;
    ELSE S <= 'X' AFTER 16 nS;
    
END IF;
END PROCESS;
    
END model; 
-- END BEHAVE F3N1inv 
--************************* MODEL F4N5 ********************************* 
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
 
ENTITY F4N5 IS 
PORT( 
A,  
B,  
C,  
D,  
E,  
F : IN  std_logic; 
S : OUT  std_logic); 
END F4N5; 
 
ARCHITECTURE model OF F4N5 IS 
  
BEGIN 
PROCESS (A,B,C,D,E,F)
BEGIN
    IF  (A='1' OR B='1' OR C='1' OR D='1' OR E='1' OR F='1') THEN S <= '1' AFTER 22 nS;
    ELSIF (A ='0' AND B ='0' AND C ='0' AND D ='0' AND E ='0' AND F ='0') THEN S <= '0' AFTER 50 NS;
    ELSE S <= 'X' AFTER 22 nS;
END IF;
END PROCESS;  
END model; 
-- END BEHAVE F4N5 
-- *************************** MODEL F4N5inv **************************** 
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
 
ENTITY F4N5inv IS 
PORT( 
A,  
B,  
C,  
D,  
E,  
F : IN  std_logic; 
S : OUT  std_logic); 
END F4N5inv; 
 
ARCHITECTURE model OF F4N5inv IS 
  
BEGIN 
PROCESS (A,B,C,D,E,F)
BEGIN
    IF  A='1' OR B='1' OR C='1' OR D='1' OR E='1' OR F='1' THEN S <= '1' AFTER 22 nS;
    ELSIF (A ='0' AND B ='0' AND C ='0' AND D ='0' AND E ='0' AND F ='0') THEN S <= '0' AFTER 50 NS;
    ELSE S <= 'X' AFTER 22 nS;
   
END IF;
END PROCESS;  
   
END model; 
-- END BEHAVE F4N5inv 
--************************* MODEL FC3 ********************************
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 

ENTITY FC3 IS 
PORT(P, N : IN  std_logic; 
     A, B : OUT  std_logic;
        S :INOUT std_logic);
END FC3; 
 
ARCHITECTURE model OF FC3 IS 
  BEGIN 

 SAHA : PROCESS (P,N)  
  BEGIN 
       IF (P = '0'AND N ='0')   THEN S <= '0' AFTER 65 NS;
    ELSIF (P = '1'AND N ='1')   THEN S <= '1' AFTER 77 NS;
    ELSIF (P = '1'AND N ='0')   THEN S <= 'X' AFTER 65 NS;
    ELSIF (P = '0'AND N ='1')   THEN S <= 'Z' AFTER 77 NS; 
    ELSE S <= 'X' AFTER 77 NS;
        END IF;
     END PROCESS SAHA;
    SASHA : PROCESS (S)
    BEGIN
   IF S = '0' OR S = 'L' THEN A <= '1' AFTER 12 NS; B <= '0' AFTER 23 NS; 
   ELSIF S ='1' OR S = 'H' OR S = 'Z' THEN A <= '0' AFTER 12 NS; B <= '1' AFTER 23 NS;
   ELSE A <= 'X'AFTER 12 NS; B <= 'X' AFTER 23 NS; 
   END IF;
   END PROCESS SASHA;   
         END model; 

    
-- ******************************* MODEL F6N1 *********************************
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
 
ENTITY F6N1 IS 
PORT( 
A,  
B,  
C,  
D,  
E,  
F,
K,
L,
M : IN  std_logic; 
S : OUT  std_logic); 
END F6N1; 
 
ARCHITECTURE model OF F6N1 IS 
  
BEGIN 
PROCESS (A,B,C,D,E,F,K,L,M)
BEGIN 
    IF  A='1' OR B='1' OR C='1' OR D='1' OR E='1' OR F='1' OR K='1' OR L='1' OR M='1' THEN S<= '1'  AFTER 26 NS;
    ELSIF A ='0' AND B ='0' AND C ='0' AND D ='0' AND E ='0' AND F ='0' AND K ='0' AND L ='0' AND M ='0' THEN S<= '0' AFTER 67 NS;
    ELSE S <= 'X' AFTER 26 NS;
END IF;
END PROCESS; 
END model; 
-- END BEHAVE F6N1 
--******************************** MODEL F6N1inv ****************************** 
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
 
ENTITY F6N1inv IS 
PORT( 
A,  
B,  
C,  
D,  
E,  
F,
K,
L,
M : IN  std_logic; 
S : OUT  std_logic); 
END F6N1inv; 
 
ARCHITECTURE model OF F6N1inv IS 
  
BEGIN 
PROCESS (A,B,C,D,E,F,K,L,M)
BEGIN 
    IF  A='1' OR B='1' OR C='1' OR D='1' OR E='1' OR F='1' OR K='1' OR L='1' OR M='1' THEN S<= '1'  AFTER 26 NS;
    ELSIF A ='0' AND B ='0' AND C ='0' AND D ='0' AND E ='0' AND F ='0' AND K ='0' AND L ='0' AND M ='0' THEN S<= '0' AFTER 67 NS;
    ELSE S <= 'X' AFTER 26 NS;
   
END IF;
END PROCESS; 
    
END model; 
-- END BEHAVE F6N1inv 
--******************************* MODEL F4N4 **********************************
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
 
ENTITY F4N4 IS 
   port( 
	 A :	in    std_logic; 
	 B :	in    std_logic; 
	 S :	out   std_logic); 
end F4N4; 

ARCHITECTURE model OF F4N4 IS 

   begin 
 
------------------------- 
--  Functionality Section 
------------------------- 
	 S <= (A XOR B) AFTER 36 NS; 
END model; 
-- END BEHAVE F4N4
--****************************** MODEL F2N14 ********************************** 
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
 
ENTITY F2N14 IS 

   port( 
	 A :	in    std_logic; 
	 B :	in    std_logic; 
     C :	in    std_logic; 
     D :	in    std_logic; 
	 S :	out   std_logic); 
end F2N14; 

ARCHITECTURE model OF F2N14 IS 
 
   begin 
 
------------------------- 
--  Functionality Section 
------------------------- 
PROCESS (A,B,C,D)
BEGIN
    IF ((A='1' OR B='1') AND (C='1' OR D='1')) THEN S <= '0' AFTER 12 NS;
    ELSIF ((A ='0' AND B ='0') OR (C ='0' AND D ='0')) THEN  S <='1' AFTER 20 NS;
    ELSE S <= 'X' AFTER 12 NS;
END IF;
END PROCESS;  
END model; 
-- END BEHAVE F2N14
--****************************** MODEL F2N14inv ********************************
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
 
ENTITY F2N14inv IS 

   port( 
	 A :	in    std_logic; 
	 B :	in    std_logic; 
         C :	in    std_logic; 
         D :	in    std_logic; 
	 S :	out   std_logic); 
end F2N14inv; 

ARCHITECTURE model OF F2N14inv IS 
 
   begin 
 
------------------------- 
--  Functionality Section 
------------------------- 
PROCESS (A,B,C,D)
BEGIN
    IF ((A='1' OR B='1') AND (C='1' OR D='1')) THEN S <= '0' AFTER 12 NS;
    ELSIF ((A ='0' AND B ='0') OR (C ='0' AND D ='0')) THEN  S <='1' AFTER 20 NS;
    ELSE S <= 'X' AFTER 12 NS;
    
END IF;
END PROCESS;  
   
END model; 
-- END BEHAVE F2N14inv
--******************************* MODEL F4N1 **********************************
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
 
ENTITY F4N1 IS 

	port( 
	 S  : out std_logic; 
	 A  : in std_logic; 
	 B  : in std_logic; 
	 C  : in std_logic; 
	 D  : in std_logic; 
	 E  : in std_logic); 
end F4N1; 

ARCHITECTURE model OF F4N1 IS 

   begin 
 
------------------------- 
--  Functionality Section 
------------------------- 
PROCESS (A,B,C,D,E)
BEGIN
     IF E ='0' THEN S <= '0' AFTER 22 NS;
     ELSIF E ='1' OR (A ='0' AND B ='0') OR (C ='0' AND D ='0') THEN S <= '0' AFTER 30 NS;
     ELSIF E ='1' AND (A='1' OR B ='1') AND (C='1' OR D='1') THEN S <= '1' AFTER 44 NS;
     ELSE S <= 'X' AFTER 22 NS;
END IF;
END PROCESS;   
 
END model; 
-- END BEHAVE F4N1
--******************************* MODEL F4N1inv ******************************
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
 
ENTITY F4N1inv IS 

	port( 
	 S  : out std_logic; 
	 A  : in std_logic; 
	 B  : in std_logic; 
	 C  : in std_logic; 
	 D  : in std_logic; 
	 E  : in std_logic); 
end F4N1inv; 

ARCHITECTURE model OF F4N1inv IS 

   begin 
 
------------------------- 
--  Functionality Section 
------------------------- 
PROCESS (A,B,C,D,E)
BEGIN
     IF E ='0' THEN S <= '0' AFTER 22 NS;
     ELSIF E ='1' OR (A ='0' AND B ='0') OR (C ='0' AND D ='0') THEN S <= '0' AFTER 30 NS;
     ELSIF E ='1' AND (A='1' OR B ='1') AND (C='1' OR D='1') THEN S <= '1' AFTER 44 NS;
     ELSE S <= 'X' AFTER 22 NS;
     
END IF;
END PROCESS;   
    
END model; 
-- END BEHAVE F4N1inv
--********************************* MODEL F2N11 *****************************
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
 
ENTITY F2N11 IS 

	port( 
	 S : out std_logic; 
	 A : in std_logic; 
	 B : in std_logic; 
	 C : in std_logic); 
end F2N11; 

ARCHITECTURE model OF F2N11 IS 

   begin 
 
------------------------- 
--  Functionality Section 
------------------------- 
PROCESS (A,B,C)
BEGIN
     IF C='1' AND (A='1' OR B='1') THEN S <= '0' AFTER 11 NS;
     ELSIF C ='0' OR (A ='0' AND B ='0') THEN S <= '1' AFTER 19 NS;
     ELSE S <= 'X' AFTER 11 NS;
END IF;
END PROCESS; 
 
END model; 
-- END BEHAVE F2N11
--************************************ MODEL F2N11inv ***************************** 
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
 
ENTITY F2N11inv IS 

	port( 
	 S : out std_logic; 
	 A : in std_logic; 
	 B : in std_logic; 
	 C : in std_logic); 
end F2N11inv; 

ARCHITECTURE model OF F2N11inv IS 

   begin 
 
------------------------- 
--  Functionality Section 
------------------------- 
PROCESS (A,B,C)
BEGIN
     IF C='1' AND (A='1' OR B='1') THEN S <= '0' AFTER 11 NS;
     ELSIF C ='0' OR (A ='0' AND B ='0') THEN S <= '1' AFTER 19 NS;
     ELSE S <= 'X' AFTER 11 NS;
     
END IF;
END PROCESS; 
    
END model; 
-- END BEHAVE F2N11inv
--************************************** MODEL F2N12 ******************************
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
 
ENTITY F2N12 IS 

	port( 
	 S : out std_logic; 
	 R : out std_logic;
	 A : in std_logic; 
	 B : in std_logic; 
	 C : in std_logic); 
end F2N12; 

ARCHITECTURE model OF F2N12 IS 
SIGNAL E : STD_LOGIC;
   begin 
 
------------------------- 
--  Functionality Section 
------------------------- 
PROCESS (A,B,C)
BEGIN
     IF C='1' AND (A='1' OR B='1') THEN E <= '0' AFTER 11 NS;
     ELSIF C ='0' OR (A ='0' AND B ='0') THEN E <= '1' AFTER 19 NS;
     ELSE E <= 'X' AFTER 11 NS;
     
END IF;
END PROCESS; 

    R  <= NOT E AFTER 8 NS;
    S  <= E; 
 
END model;  

-- END BEHAVE F2N12 
--************************************ MODEL F2N12inv ****************************
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
 
ENTITY F2N12inv IS 

	port( 
	 S : out std_logic; 
	 R : out std_logic;
	 A : in std_logic; 
	 B : in std_logic; 
	 C : in std_logic); 
end F2N12inv; 

ARCHITECTURE model OF F2N12inv IS 
SIGNAL E : STD_LOGIC;
   begin 
 
------------------------- 
--  Functionality Section 
------------------------- 
PROCESS (A,B,C)
BEGIN
     IF C='1' AND (A='1' OR B='1') THEN E <= '0' AFTER 11 NS;
     ELSIF C ='0' OR (A ='0' AND B ='0') THEN E <= '1' AFTER 19 NS;
     ELSE E <= 'X' AFTER 11 NS;
     
END IF;
END PROCESS; 

    R  <= NOT E AFTER 7 NS;
    S  <= E; 
 
END model;  

-- END BEHAVE F2N12inv          
     
--********************************* MODEL F5 ************************************
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY F5 IS
PORT(
A, B, D : IN  std_logic;
S : OUT std_logic );
END F5;


ARCHITECTURE model OF F5 IS 
 
BEGIN
CASHA : PROCESS ( A, B, D)
  BEGIN        
 
   IF  (A = '1' AND B = '0') THEN 
       S <= D AFTER 5 NS;
    ELSIF (A = '0' AND B ='1')THEN S <= 'Z'AFTER 5 NS;
    ELSE S <= 'X';
    END IF;
              END PROCESS CASHA; 
              END model;      
                 
--             F5  door KEY
--            _______ 
--        A --|>    |        INPUT(A) 111 000 000 111 111
--            |     | 
--        D --|     |--S     INPUT(D) *** *** *** 111 000
--            |     |
--        B --|<    |        INPUT(B) 111 000 111 000 000
--            -------
--
--                          OUTPUT(S) UUU UUU ZZZ 111 000
--                           
-- END BEHAVE F5 
--********************************** MODEL F4 ************************************* 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY F4 IS
PORT(
A, B, D : IN  std_logic;
S : OUT std_logic );
END F4;

ARCHITECTURE model OF F4 IS 
 
BEGIN
CASHA : PROCESS ( A, B, D)
  BEGIN        
 
 IF ((A = '1' AND B ='0') OR (A ='1' AND B ='1' AND D = '1') OR (A = '0' AND B = '0' AND D = '0')) THEN S <= NOT D AFTER 15 NS; 
   
 ELSE S <= 'Z'AFTER 15 NS;

--(V RESERVE ELSE S <= '';) 
END IF;
END PROCESS CASHA; 
END model;      

--              F4          
--            _______ 
--        A --|>    |        INPUT(A) 000 111 111 111 111 000 000
--            |     | 
--        D --|     |O--S    INPUT(D) *** 111 000 111 000 000 111
--            |     |
--        B --|<    |        INPUT(B) 111 000 000 111 111 000 000
--            ------- 
--                          OUTPUT(S) ZZZ 000 111 000 ZZZ 111 ZZZ
--                           
--
-- END BEHAVE F4  
--********************************** MODEL F4inv ********************************** 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY F4inv IS
PORT(
A, B, D : IN  std_logic;
S : OUT std_logic );
END F4inv;


ARCHITECTURE model OF F4inv IS 
 
BEGIN
CASHA : PROCESS ( A, B, D)
  BEGIN        

 IF ((A = '1' AND B ='0') OR (A ='1' AND B ='1' AND D = '1') OR (A = '0' AND B = '0' AND D = '0')) THEN S <= NOT D AFTER 15 NS; 
   
 ELSE S <= 'Z'AFTER 15 NS;

END IF;
END PROCESS CASHA;
END model;
--********************************* MODEL F2N4 *************************************
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY F2N4 IS
PORT(
A, B, D : IN  std_logic;
S : OUT std_logic );
END F2N4;


ARCHITECTURE model OF F2N4 IS 
 
BEGIN
CASHA : PROCESS ( A, B, D)
  BEGIN        
 
 IF ((A = '1' AND B ='0') OR (A ='1' AND B ='1' AND D = '1') OR (A = '0' AND B = '0' AND D = '0')) THEN S <= NOT D AFTER 19 NS; 
   
 ELSE S <= 'Z' AFTER 19 NS;
 
END IF;
END PROCESS CASHA; 
END model;      
   
--              F2N4          
--            _______ 
-- A----------|>    |                  INPUT(A) 000 111 111 111 111 000 000
--        |   |     | 
-- D------|---|     |O---------S       INPUT(D) *** 111 000 111 000 000 111
--      | |   |     |   |
-- B-- -|-|---|<    |   |              INPUT(B) 111 000 000 111 111 000 000
--    | | |   -------   | 
--    | | |             |             OUTPUT(S) ZZZ 000 111 000 ZZZ 111 ZZZ
--    | | |   _______   |
--    | | |---|>    |   |     
--    | |     |     |   |
--    | |-----|     |O--|    
--    |       |     |
--    |-------|<    |        
--            ------- 
--
--********************************* MODEL F9 ***************************************
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

       ENTITY F9 IS
       PORT(
       A, B, C, CN : IN  std_logic;
       S : OUT std_logic );
END F9;


 ARCHITECTURE model OF F9 IS 
 
 BEGIN
  ALEXANDR : PROCESS ( A, B, C, CN )
   BEGIN        
   IF (C='0' AND CN='1') THEN S <= B AFTER 10 NS;
   ELSIF (C ='1' AND CN ='0') THEN S<= A AFTER 10 NS; 
   ELSIF (A = '0' AND B = '0') THEN S<= '0' AFTER 10 NS;
   ELSIF (A = '1' AND B = '1') THEN S<= '1' AFTER 10 NS; 
  
   ELSE S <= 'X' AFTER 20 NS;  
 
  END IF;

  END PROCESS ALEXANDR; 
  END model;      

--                F9          
--            _________ 
--        A --| |MUX  |          INPUT(A) *** *** 111 000 000 111 000 111 000 111 000 111
--            | |     | 
--        B --| |     |          INPUT(B) 111 000 *** *** 000 111 111 000 000 111 111 000
--            |_|     |---S      
--        C --| |     |          INPUT(C) 000 000 111 111 111 111 111 111 000 000 000 000
--            | |     |                
--       CN --0 |     |         INPUT(CN) 111 111 000 000 111 111 111 111 000 000 000 000
--            ---------                
--                              OUTPUT(S) 111 000 111 000 000 111 UUU UUU 000 111 UUU UUU 
--    
-- END BEHAVE F9
--********************************* MODEL F8 ******************************************** 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

       ENTITY F8 IS
       PORT(
       C, CN, D : IN  std_logic;
       S, R : OUT std_logic );
   END F8;

 ARCHITECTURE model OF F8 IS 
  signal N : std_logic;
 BEGIN
  ALEXANDR : PROCESS ( C, CN, D )
   BEGIN        

     IF (C='0' AND CN='1') THEN N <='Z';
     END IF;
  
     IF ((C='1' AND CN='1') OR (C = '0' AND CN = '0')) THEN N <='X';
     END IF;
  
     IF (C='1' AND CN='0') THEN N <= D ;
     END IF;
        
  END PROCESS ALEXANDR;                
   S <= N  AFTER 10 NS;
   R <= N AFTER 10 NS;
  END model;      

--                F8          
--            _________ 
--        C --|>|     |          INPUT (C): 000   111   111   111   000
--            | |     |---S 
--            | |     |          INPUT(CN): 111   000   000   111   000
--        D --| |     |      
--            | |     |---R      INPUT (D): ***   111   000   ***   ***
--            | |     |                        
--        CN--|<|     |          OUTPUT(S): ZZZ   111   000   UUU   UUU
--            ---------
--                               OUTPUT(R): ZZZ   111   000   UUU   UUU
--    
---- END BEHAVE F8
--************************************* MODEL F10 ************************************** 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

       ENTITY F10 IS
       PORT(
       C, CN, D : IN  std_logic;
       S, R : OUT std_logic );
END F10;

 ARCHITECTURE model OF F10 IS

 BEGIN                                      
   ALEXANDR : PROCESS ( C, CN, D )
   BEGIN        
    
          IF (C='0' AND CN='1') THEN S <= D AFTER 10 NS ; 
          END IF;
          IF (C='0' AND CN='1') THEN R <= 'Z' AFTER 10 NS; 
          END IF;
          IF (C='1' AND CN='0') THEN S <= 'Z' AFTER 10 NS; 
          END IF;
          IF (C='1' AND CN='0') THEN R <= D AFTER 10 NS; 
          END IF;
          IF (C XOR CN)='0' THEN S <= 'X';  
          END IF;
          IF (C XOR CN)='0' THEN R <= 'X';
          END IF;

   END PROCESS ALEXANDR;                
   END model;      
                 
--                F10          
--            _________ 
--        C --|>|     |          INPUT (C): 000   000   111   111   111  000
--            | |     |---S 
--            | |     |          INPUT(CN): 111   111   000   000   111  000
--        D --| |     |      
--            | |     |---R      INPUT (D): 000   111   111   000   ***  ***
--            | |     |                        
--        CN--|<|     |          OUTPUT(S): 000   111   ZZZ   ZZZ   UUU  UUU
--            ---------
--                               OUTPUT(R): ZZZ   ZZZ   111   000   UUU  UUU
--END BEHAVE F10  
--********************************* MODEL F5N2 ***************************************
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

    ENTITY F5N2 IS
    PORT(
    D1, D2, C1, C2 : IN  std_logic;
    Q, QN : OUT std_logic );
    END F5N2;

    ARCHITECTURE model OF F5N2 IS

    SIGNAL N5 : std_logic;

    BEGIN

    BEHAVIOR : PROCESS (D1, C1)
    BEGIN
    
    IF (C1 = '0')  THEN N5 <= D1;
    END IF;
    END PROCESS;
    
    Q  <= N5 AFTER 45 NS;
    QN <= NOT N5 AFTER 45 NS;    

    END model;
 
--               F5N2          
--            _________ 
--        D --| |     |          
--            | |  T  |---Q 
--            | |     |          
--        C -0| |     |0--QN      
--            | |     |                        
--            ---------     
--            
-- END BEHAVE F5N2
--*********************************** MODEL F5N1 *************************************
library IEEE; 
use IEEE.STD_LOGIC_1164.all; 

entity F5N1 is 

	port(                       
	 QN     :   out std_logic ; 
	 Q      :   out std_logic ; 
	 R      :   in std_logic;   
	 S      :   in std_logic;
         C      :   in std_logic);    
        end F5N1;                                       
    
architecture model of F5N1 is 
signal sel:  std_logic_vector(1 downto 0); 
SIGNAL I_Q,I_QN, S1, R1 : std_logic   ;
SIGNAL ERROR :  std_logic ;

BEGIN 
  R1<= NOT (R AND C);
  S1<= NOT (S AND C);

  ERROR_PR: PROCESS(R1,S1) 
  begin
   if((R1 = '1' AND S1 = '1' ) AND R1'EVENT AND S1'EVENT AND 
       R1'LAST_VALUE ='0' AND S1'LAST_VALUE ='0') then ERROR <='1';
   else ERROR <='0';
   end if;
  end process;
  
  sel <= R1&S1;
  BEHAVIOR : PROCESS ( sel,ERROR)
  
    begin   
------------------------- 
--  Functionality Section 
-------------------------    
 		case sel is 
			when "11" =>  if(ERROR='0') then I_QN <= I_QN;   I_Q <= I_Q;
			              else               I_QN <= 'X';    I_Q <= 'X';
			              end if; 
		    
			when "10" =>  I_QN <= '0';  I_Q <= '1';
			when "01" =>  I_QN <= '1';  I_Q <= '0';
			when "00" =>  I_QN <= '0';  I_Q <= '0';
			when "1X" =>  I_QN <= 'X';  I_Q <= 'X';

                        when "0X" =>  I_QN <= '1';  I_Q <= 'X';
                        when "X1" =>  I_QN <= 'X';  I_Q <= 'X';
                        when "X0" =>  I_QN <= 'X';  I_Q <= '1';
                when others =>  I_QN <= 'X';  I_Q <= 'X';                       
                        
        	end case;
             end process;
 
    Q  <=     I_Q    AFTER 40 NS;
    QN <=     I_QN   AFTER 40 NS;

end model;

--               F5N1          
--            _________                input PORTs   (R):  000 111 000 111 000 111 000 111
--        R --|R| RS  |          
--            | |     |0--QN                         (C):  000 000 111 111 000 000 111 111
--            |-|     |          
--        C --|C|     |--- Q                         (S):  000 000 000 000 111 111 111 111
--            | |     |                        
--            |-|     |                OutPut Ports  (Q):              000         111   
--        S --|S|     | 
--            | |     |                             (QN):              111         000 
--            ---------
-- END BEHAVE F5N1
-- ************************************ MODEL F3N4 ********************************************
library IEEE; 
use IEEE.STD_LOGIC_1164.all; 

     entity F3N4 is 

	 port(                             --       ___
	 QN     :   out std_logic ;        -- S --0| T |---Q
	 Q      :   out std_logic ;        --      |   |
	 R      :   in std_logic;          -- R --0|   o---QN
	 S      :   in std_logic);         --      -----
  end F3N4;                                       
    

  architecture model of F3N4 is 
  signal sel:  std_logic_vector(1 downto 0); 
  SIGNAL I_Q,I_QN : std_logic   ;
  SIGNAL ERROR :  std_logic ;

BEGIN 
  ERROR_PR: PROCESS(R,S) 
  begin
   if((R = '1' AND S = '1') AND R'EVENT AND S'EVENT AND 
      R'LAST_VALUE ='0' AND S'LAST_VALUE ='0') then ERROR <='1';
   else ERROR <='0';
   end if;
  end process;
  
  sel <= R&S;
  BEHAVIOR : PROCESS ( sel,ERROR)
  
    begin   
------------------------- 
--  Functionality Section 
-------------------------    
 		case sel is 
			when "11" =>  if(ERROR='0') then I_QN <= I_QN; I_Q <= I_Q;
			              else               I_QN <= 'X';  I_Q <= 'X';
			              end if; 		    
			when "10" =>  I_QN <= '0' AFTER 20 NS;  I_Q <= '1' AFTER 40 NS;
			when "01" =>  I_QN <= '1' AFTER 40 NS;  I_Q <= '0' AFTER 20 NS;
			when "00" =>  I_QN <= '0' AFTER 20 NS;  I_Q <= '0' AFTER 20 NS;
			when "1X" =>  I_QN <= 'X' AFTER 20 NS;  I_Q <= 'X' AFTER 20 NS;
            when "0X" =>  I_QN <= '1' AFTER 40 NS;  I_Q <= 'X' AFTER 20 NS;
            when "X1" =>  I_QN <= 'X' AFTER 20 NS;  I_Q <= 'X' AFTER 20 NS;
            when "X0" =>  I_QN <= 'X' AFTER 20 NS;  I_Q <= '0' AFTER 20 NS;
                when others =>  I_QN <= 'X' after 20 ns;  I_Q <= 'X'after 20 ns;                  
		end case;
    end process;
 
    Q <=      I_Q;
    QN <=     I_QN;

end model;
-- END BEHAVE F3N4
--*********************************** MODEL F3N7 ************************************
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

       ENTITY F3N7 IS
       PORT(
       D, C, CN, S : IN  std_logic;
       Q : OUT std_logic );
END F3N7;

 ARCHITECTURE model OF F3N7 IS 

   SIGNAL N5,N6 : STD_LOGIC;

 BEGIN

  ALEXANDR : PROCESS ( D, N6, C, CN )

   BEGIN        
   IF    (C='0' AND CN='1') THEN N5 <= N6;
   ELSIF (C = '1' AND CN = '0') THEN N5 <= D AFTER 2 NS;
   ELSIF (D = '0' AND N6 = '0') THEN  N5<= '0' AFTER 2 NS;
   ELSIF (D = '1' AND N6 = '1') THEN N5 <= '1' AFTER 2 NS; 
   ELSE N5 <= 'X'AFTER 10 NS; 

   END IF;
  END PROCESS ALEXANDR;

  SASHA : PROCESS (N5,S)
   BEGIN
   IF S = '1' THEN N6 <= '1' AFTER 14 NS;
   ELSIF N5 = '1' THEN N6 <= '1' AFTER 18 NS;
   ELSIF N5 = '0' THEN N6 <= '0' AFTER 28 NS; 
   ELSE N6 <= 'X'AFTER 10 NS;
   
   END IF;
   END PROCESS SASHA;

   Q <= N6;
 
  END model;      
                 
--                     S ------------------------|
--                                               |
--                             F9                | N7<= NOT(N5 OR S)                   Q<=(NOT:N7)
--                         _________             |     _______             ________    
--                     D --| |MUX  |             |_____|     |             |      | 
--                         | |     |                   | 1   |     N7      | 1    | 
--        N6--- (NOT:N7) --| |     |                   |     0------+------|      0---------- Q
--          |              |_|     |---S(N5)-----------|     |      |      | NOT  |
--          |          C --| |     |                   ------|      |      |------|
--          |              | |     |                                |      | 1    |    N6<=(NOT:N7)
--          |         CN --0 |     |                                |______|      0------|
--          |              ---------                                       | NO   |      |
--          |                                                              |------|      |
--          |                                                                            |
--          |                               NOT:N7                                       | 
--          |----------------------------------------------------------------------------|
--

--*************************************** MODEL F3N7inv ******************************
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

       ENTITY F3N7inv IS
       PORT(
       D, C, CN, S : IN  std_logic;
       Q : OUT std_logic );
END F3N7inv;

 ARCHITECTURE model OF F3N7inv IS 

   SIGNAL N5,N6 : STD_LOGIC;

 BEGIN

  ALEXANDR : PROCESS ( D, N6, C, CN )
   BEGIN        
   IF    (C='0' AND CN='1') THEN N5 <= N6;
   ELSIF (C = '1' AND CN = '0') THEN N5 <= D AFTER 2 NS;
   ELSIF (D = '0' AND N6 = '0') THEN  N5<= '0' AFTER 2 NS;
   ELSIF (D = '1' AND N6 = '1') THEN N5 <= '1' AFTER 2 NS; 
   ELSE N5 <= 'X'AFTER 10 NS; 

   END IF;
   END PROCESS ALEXANDR;

  SASHA : PROCESS (N5,S)
   BEGIN
   IF S = '1' THEN N6 <= '1' AFTER 14 NS;
   ELSIF N5 = '1' THEN N6 <= '1' AFTER 18 NS;
   ELSIF N5 = '0' THEN N6 <= '0' AFTER 28 NS; 
   ELSE N6 <= 'X'AFTER 10 NS;
   
   END IF;
   END PROCESS SASHA;

   Q <= N6;

   END model;      
                 
--                     S ------------------------|
--                                               |
--                             F9                | N7<= NOT(N5 OR S)                   Q<=(NOT:N7)
--                         _________             |     _______             ________    
--                     D --| |MUX  |             |_____|     |             |      | 
--                         | |     |                   | 1   |     N7      | 1    | 
--        N6--- (NOT:N7) --| |     |                   |     0------+------|      0---------- Q
--          |              |_|     |---S(N5)-----------|     |      |      | NOT  |
--          |          C --| |     |                   ------|      |      |------|
--          |              | |     |                                |      | 1    |    N6<=(NOT:N7)
--          |         CN --0 |     |                                |______|      0------|
--          |              ---------                                       | NO   |      |
--          |                                                              |------|      |
--          |                                                                            |
--          |                               NOT:N7                                       | 
--          |----------------------------------------------------------------------------|
--

--************************************* MODEL F3N8 ***********************************************
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

       ENTITY F3N8 IS
       PORT(
       D, C, CN, RN : IN  std_logic;
       Q : OUT std_logic);
END F3N8;

 ARCHITECTURE model OF F3N8 IS 

   SIGNAL N5,N6 : STD_LOGIC;

 BEGIN
   ALEXANDR : PROCESS ( D, N6, C, CN )
   BEGIN        
   IF    (C='0' AND CN='1') THEN N5 <= N6;
   ELSIF (C = '1' AND CN = '0') THEN N5 <= D AFTER 2 NS;
   ELSIF (D = '0' AND N6 = '0') THEN  N5<= '0' AFTER 2 NS;
   ELSIF (D = '1' AND N6 = '1') THEN N5 <= '1' AFTER 2 NS; 
   ELSE N5 <= 'X'AFTER 10 NS; 

   END IF;
   END PROCESS ALEXANDR;

  SASHA : PROCESS (N5,RN)
   BEGIN
   IF RN = '0' THEN N6 <= '0' AFTER 14 NS;
   ELSIF N5 = '1' THEN N6 <= '1' AFTER 18 NS;
   ELSIF N5 = '0' THEN N6 <= '0' AFTER 28 NS; 
   ELSE N6 <= 'X'AFTER 10 NS;
   
   END IF;
   END PROCESS SASHA;

   Q <= N6;

   END model;      

   

--                     RN ________________________
--                                               |
--                             F9                | N7<= (NOT N5 OR NOT RN)          Q<=(NOT:N7)
--                         _________             |     _______             ________    
--                     D --| |MUX  |             |____0|     |             |      | 
--                         | |     |                   | 1   |     N7      | 1    | 
--        N6--- (NOT:N7) --| |     |                   |     |------+------|      0---------- Q
--          |              |_|     |---S(N5)----------0|     |      |      | NOT  |
--          |          C --| |     |                   ------|      |      |------|
--          |              | |     |                                |      | 1    | N6<=(NOT:N7)
--          |         CN --0 |     |                                |______|      0------|
--          |              ---------                                       | NO   |      |
--          |                                                              |------|      |
--          |                                                                            |
--          |                               NOT:N7                                       | 
--          |----------------------------------------------------------------------------|
--

--********************************** MODEL F3N8inv ***********************************************
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

       ENTITY F3N8inv IS
       PORT(
       D, C, CN, RN : IN  std_logic;   --  RN => IS SN !!!!!
       Q : OUT std_logic);
END F3N8inv;

 ARCHITECTURE model OF F3N8inv IS 

   SIGNAL N5,N6 : STD_LOGIC;

 BEGIN   
  ALEXANDR : PROCESS ( D, N6, C, CN )
   BEGIN        
   IF    (C='0' AND CN='1') THEN N5 <= N6;
   ELSIF (C = '1' AND CN = '0') THEN N5 <= D AFTER 2 NS;
   ELSIF (D = '0' AND N6 = '0') THEN  N5<= '0' AFTER 2 NS;
   ELSIF (D = '1' AND N6 = '1') THEN N5 <= '1' AFTER 2 NS; 
   ELSE N5 <= 'X'AFTER 10 NS; 

   END IF;
   END PROCESS ALEXANDR;

  SASHA : PROCESS (N5,RN)
   BEGIN
   IF RN = '0' THEN N6 <= '0' AFTER 14 NS;
   ELSIF N5 = '1' THEN N6 <= '1' AFTER 18 NS;
   ELSIF N5 = '0' THEN N6 <= '0' AFTER 28 NS; 
   ELSE N6 <= 'X'AFTER 10 NS;
   
   END IF;
   END PROCESS SASHA;

   Q <= N6;

   END model;      


 -- \CD\C0 \D1\C0\CC\CE\CC \C4\C5\CB\C5 \C2 \C6\C8\C7\CD\C8 SN      RN______________
-- \CD\C0 \D1\D5\C5\CC\C5                                      |
--                             F9                | N7<= (NOT N5 OR NOT RN)          Q<=(NOT:N7)
--                         _________             |     _______             ________    
--                     D --| |MUX  |             |____0|     |             |      | 
--                         | |     |                   | 1   |     N7      | 1    | 
--        N6--- (NOT:N7) --| |     |                   |     |------+------|      0---------- Q
--          |              |_|     |---S(N5)----------0|     |      |      | NOT  |
--          |          C --| |     |                   ------|      |      |------|
--          |              | |     |                                |      | 1    | N6<=(NOT:N7)
--          |         CN --0 |     |                                |______|      0------|
--          |              ---------                                       | NO   |      |
--          |                                                              |------|      |
--          |                                                                            |
--          |                               NOT:N7                                       | 
--          |----------------------------------------------------------------------------|
--

--*********************************** MODEL FC5 **************************************************
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
 
ENTITY FC5 IS 
 
   port( 
	 S 				:	in    std_logic; 
	 A				:	out   std_logic); 
end FC5; 
 
ARCHITECTURE model OF FC5 IS 
 
   begin 
 
------------------------- 
--  Functionality Section 
-------------------------  

 PROCESS (S)
    BEGIN
   IF (S = '0' OR S = 'L') THEN A <= '1' AFTER 14 NS;
    ELSIF (S = '1' OR S = 'H' OR S = 'Z') THEN A <= '0' AFTER 14 NS;
    ELSE A <= 'X' AFTER 14 NS;
 END IF;
 END PROCESS;    
END model; 
-- END BEHAVE FC5 
--********************************** MODEL F3N9 ************************************************* 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

       ENTITY F3N9 IS
       PORT(
       D, C, CN, V ,VN : IN  std_logic;
       Q, P : OUT std_logic );
END F3N9;

 ARCHITECTURE model OF F3N9 IS 

   SIGNAL N6,N7 : STD_LOGIC;

 BEGIN

  ALEXANDR : PROCESS ( D, N6, C, CN )

   BEGIN        
      IF (C='0' AND CN='1') THEN N7 <=  NOT N6 AFTER 10 NS;
   ELSIF (C = '1' AND CN = '0') THEN N7 <= NOT D AFTER 10 NS; 
   ELSIF (D = '0' AND N6 = '0') THEN N7 <= '1' AFTER 10 NS;
   ELSIF (D = '1' AND N6 = '1') THEN N7<= '0' AFTER 10 NS; 
   ELSE N7 <= 'X'; 

   END IF;
   END PROCESS  ALEXANDR;

    F4: PROCESS (V, VN, N7 ) 
    BEGIN
   IF (( V ='1' AND VN = '0') OR ( V = '1' AND VN = '1' AND N7 = '1') OR ( V = '0' AND VN = '0' AND N7 = '0')) THEN Q <= NOT N7 AFTER 10 NS; 
   
   ELSE Q <= 'Z'AFTER 10 NS;
     
   END IF;
   
   END PROCESS F4;
   
   N6<= NOT N7 AFTER 10 NS;
   P <= NOT N7;

  END model; 
--                                                                         (ROOT F4)
--                                                                         ________
--                                                                         |      |
--                                                                    V ---|>     |         
--                                                                         |      |
--                                                                  +------|      O---------------> Q
--                                                                  |      |      |
--                        (MODEL  F9)               N7<=(NOT:N5)    | VN---|<     |
--                         _________                   _______      |      |______|    
--                     D --| |MUX  |                   |     |      |       
--                         | |     |                   | 1   |   N7 |  
--        N6--- (NOT:N7) --| |     |                   |     |------+      
--          |              |_|     |----(N5)----------0| NOT |      |      ________
--          |          C --| |     |                   |_____|      |      |      |
--          |              | |     |                                |      | 1    | N6<=(NOT:N7)
--          |         CN --0 |     |                                |______|      0------+--------> P
--          |              ---------                                       | NOT  |      |
--          |                                                              |______|      |
--          |                                                                            |
--          |                               NOT:N7                                       | 
--          |----------------------------------------------------------------------------|
--

--*************************************** MODEL F7N1 *******************************************
--                     MODEL : F7N1
--                     ____________                     
--                -----|D1|       |
--                     |__|   T   |
--                     |  |       |_____ Q
--                -----OC1|       |
--                     |__|       |
--                     |  |       |      _
--                -----OD2|       |_____ QN
--                     |__|       |
--                _____|C2|       | 
--                     |__|_______|
--                                                                             Q<=NOT N5 
--                                                                               _____
--                                                                              |  1  | 
--                                                             +----------------|     0-------------------------------->> Q
--                                                             |                | NOT |
--                                                             |                |_____|
--                                         F9 inv              |                   F9 inv                                                 
--                                      __________             |                  __________             QN<=NOT N7  
--                                      |  |      |            |                 |  |      |              ______
--  D1 >--------------------------------|D1|  MUX O---N5-------+-----------------|N5|  MUX |              |     |
--                                      |--|      |                              |--|      |              |  1  |         __
--                            +---------|N6|      |             D2 >-------------|D2|      O---N7----+----|     0------>> QN
--                            |         |--|      |                              |--|      |         |    | NOT |
--                            | +-------|CA|      |                       +------|CB|      |         |    |_____|
--                            | |       |--|      |                       |      |--|      |         | 
--                            | |  +----|C1|      |                       |  +---|C2|      |         |
--                            | |  |    |__|______|                       |  |   |__|______|         |
--                  __        | |  |                                      |  |                       |
--           A<=NOT C1        | |  |                        CB<=NOT C2    |  |                       |
--                _____       | |  |                          _____       |  |                       |
--               |     |      | |  |                         |     |      |  |                       |
--  __           |  1  |      | |  |                         |  1  |      |  |                       |            
--  C1 >----+----|     O--------+  |           C2 >-----+----|     O------+  |                       |
--          |    | NOT |      |    |                    |    | NOT |         |                       |
--          |    |_____|      |    |                    |    |_____|         |                       |
--          |                 |    |                    |                    |                       |
--          +----------------------+                    +--------------------+                       |
--                            |                                                                      |
--                            +----------------------------------------------------------------------+

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

       ENTITY F7N1 IS
       PORT(
       D1, D2, C1, C2 : IN  std_logic;
       Q, QN : OUT std_logic);
       END F7N1;

 ARCHITECTURE model OF F7N1 IS 

   SIGNAL N5, N7 : STD_LOGIC;

 BEGIN

   MUX1 : PROCESS ( D1,N5, N7, C1 )

   BEGIN        
      IF    C1 = '0'  THEN N5 <= NOT D1 AFTER 10 NS;
      ELSIF C1 = '1' THEN N5 <= NOT N7 AFTER 10 NS; 
     
   END IF;
   END PROCESS  MUX1;  
    
    MUX2 : PROCESS (D2, C2, N5 )
    
    BEGIN 
       IF C2 ='1' THEN N7 <= NOT D2 AFTER 10 NS;
       ELSIF C2 = '0' THEN N7 <= NOT N5 AFTER 10 NS;
   END IF;
   END PROCESS MUX2;
                                        
                   Q<= NOT N5 AFTER 10 NS;
                  QN<= NOT N7 AFTER 10 NS;
                  
    
  END model; 

--***************************************** F7N2 ***************************************
--                     MODEL : F7N2
--                     ____________                     
--                -----|D1|       |
--                     |__|   T   |
--                     |  |       |_____ Q
--                -----|C1|       |
--                     |__|       |
--                     |  |       |      _
--                -----OD2|       |_____ QN
--                     |__|       |
--                _____|C2|       | 
--                     |__|_______|
--
--
--                                                                             Q<=NOT N5 
--                                                                               _____
--                                                                              |     |
--                                                                              |  1  | 
--                                                            +-----------------|     0-------------------------------->> Q
--                                                            |                 | NOT |
--                                                            |                 |_____|
--                                                            |                   
--                                        F9 inv              |                    F9 inv 
--                                     __________             |                   __________             QN<=NOT N7  
--                                     |  |      |            |                  |  |      |              ______
--  D1 >-------------------------------|D1|  MUX O---N5-------+------------------|N5|  MUX |              |     |
--                                     |--|      |               _               |--|      |              |  1  |         __
--                           +---------|N6|      |              D2 >-------------|D2|      O---N7----+----|     0------>> QN
--                           |         |--|      |                               |--|      |         |    | NOT |
--          +----------------|---------|CA|      |                        +------|CB|      |         |    |_____|
--          |                |         |--|      |                        |      |--|      |         | 
--          |                |    +----|C1|      |                        |  +---|C2|      |         |
--          |                |    |    |__|______|                        |  |   |__|______|         |
--          |                |    |                                       |  |                       |
--          |   CA<= C1      |    |                         CB<=NOT C2    |  |                       |
--          |    _____       |    |                           _____       |  |                       |
--          |   |     |      |    |                          |     |      |  |                       |
--          |   |  1  |      |    |                          |  1  |      |  |                       |            
--  C1 >----+---|     O-----------+           C2 >-----+-----|     O------+  |                       |
--              | NOT |      |                         |     | NOT |         |                       |
--              |_____|      |                         |     |_____|         |                       |
--                           |                         |                     |                       |
--                           |                         +---------------------+                       |
--                           |                                                                       | 
--                           |                                                                       |
--                           +-----------------------------------------------------------------------+

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

       ENTITY F7N2 IS
       PORT(
       D1, D2, C1, C2 : IN  std_logic;
       Q, QN : OUT std_logic );
       END F7N2;

 ARCHITECTURE model OF F7N2 IS 

   SIGNAL N5, N7 : STD_LOGIC;

 BEGIN

   MUX1 : PROCESS ( D1,N5, N7, C1 )

   BEGIN        
      IF    C1 = '1'  THEN N5 <= NOT D1 AFTER 10 NS;
      ELSIF C1 = '0'  THEN N5 <= NOT N7 AFTER 10 NS; 
    
   END IF;
   END PROCESS  MUX1;  
    
    MUX2 : PROCESS (D2, C2, N5 )
    
    BEGIN 
       IF C2 ='1' THEN N7 <= NOT D2 AFTER 10 NS;
       ELSIF C2 = '0' THEN N7 <= NOT N5 AFTER 10 NS;
   END IF;
   END PROCESS MUX2;
                                        
                   Q<= NOT N5 AFTER 10 NS;
                  QN<= NOT N7 AFTER 10 NS;
         
  END model; 
-- END BEHAVE F7N2
--***************************************** MODEL F9N *************************************
--                     MODEL : F9N
--                     ____________                     
--                _____|D |       |
--                     |__|   TT  |
--                     |  |       |_____ Q
--                ----<|C |       |
--                     |__|       |      _
--                     |  |       |0---- QN
--                -----|R |       |
--                     |__|_______|
--                 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY F9N IS
PORT(
D, C1, C2, R1, R2 : IN  std_logic;
Q, QN : OUT std_logic );
END F9N;

ARCHITECTURE model OF F9N IS

    SIGNAL N5 : std_logic   ;

    BEGIN

    BEHAVIOR : PROCESS (R1, C1, N5, D)
    BEGIN
      
      IF (C1 = '0') AND C1'EVENT  THEN N5 <= D AFTER 55 NS;
      END IF;
      IF (R1 = '1') THEN N5 <= '0'AFTER 40 NS;
      END IF;
          
    END PROCESS;

    Q   <=     N5  AFTER 10 NS;
    QN  <=     NOT N5 AFTER 10 NS;
    
    END model;
-- ********************************************* MODEL F10N *********************************** 
--                     MODEL : F10N
--                     ____________                     
--                _____|D |       |
--                     |__|   TT  |
--                     |  |       |_____ Q
--                ----<|C |       |
--                     |__|       |      _
--                     |  |       |0---- QN
--                -----|S |       |
--                     |__|       |
--                -----|R |       |
--                     |__|_______|
--                     
-- BEGIN BEHAVE F10N 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY F10N IS
PORT(
D, C1, C2, R1, R2, S1, S2, S3 : IN  std_logic;
Q, QN : OUT std_logic );
END F10N;

ARCHITECTURE model OF F10N IS

    SIGNAL N5 : std_logic   ;

    BEGIN

    BEHAVIOR : PROCESS (S1, R1, C1, D)
    BEGIN
      IF    (C1 = '0') AND C1'EVENT THEN  N5 <= D AFTER 65 NS;
      END IF;
      IF    (R1 = '1') THEN N5 <= '0' AFTER 55 NS;
      END IF;
      IF    (S1 = '1') THEN N5 <= '1' AFTER 55 NS;
      END IF;
      IF    ( (R1 = '0') AND (S1 = '0') AND R1'EVENT AND S1'EVENT) THEN N5 <= 'X' AFTER 55 NS;
      END IF;
   
    END PROCESS;

    Q  <=     ( N5 ) AFTER 10 NS;
    QN <= NOT ( N5 ) AFTER 10 NS;

    END model;
-- END BEHAVE F10N 
--******************************** MODEL FC6 *****************************************
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
 
ENTITY FC6 IS 
PORT(P,N : IN   std_logic; 
     PN,NN, A : OUT  std_logic;
             S :INOUT std_logic);
END FC6; 
 
ARCHITECTURE model OF FC6 IS 

BEGIN 

SAHA : PROCESS (P,N)  
BEGIN 
       IF (P = '0'AND N = '0')  THEN S <= '0' AFTER 55 NS;
    ELSIF (P = '1'AND N = '1')   THEN S <= '1' AFTER 55 NS;
    ELSIF (P = '1'AND N = '0')   THEN S <= 'X' AFTER 55 NS;
    ELSIF (P = '0'AND N = '1')   THEN S <= 'Z' AFTER 55 NS;
    END IF;
    END PROCESS SAHA;
    SASHA : PROCESS (S)
    BEGIN
    IF S = '0' THEN A <= '1'AFTER 14 NS;
    ELSIF S ='1' THEN A <= '0' AFTER 14 NS;
    ELSE A <= 'X' AFTER 14 NS;  
    END IF;
    END PROCESS SASHA;   
END model; 
--********************************* MODEL FC9 *****************************************
LIBRARY ieee;                        
USE ieee.std_logic_1164.ALL;             
ENTITY FC9 IS     port(               
S  :   in    std_logic;                    
B  :   out   std_logic);                  
end FC9; 
ARCHITECTURE model OF FC9 IS 
begin 
PROCESS (S)
BEGIN
    IF S = '0' THEN B <= '0' AFTER 26 nS;
 ELSIF S = '1' THEN B <= '1' AFTER 19 nS;
 ELSIF S = 'H' THEN B <= 'H' AFTER 19 nS;
 ELSIF S = 'L' THEN B <= 'L' AFTER 19 nS;                                
 ELSE B <= 'X' AFTER 19 nS; 
 END IF;
 END PROCESS;  
 END model; 
-- END BEHAVE FC9
--********************************* MODEL FC10 *****************************************
LIBRARY ieee;                        
USE ieee.std_logic_1164.ALL;             
ENTITY FC10 IS     port(               
B  :   in    std_logic;                    
S  :   out   std_logic);                  
end FC10; 
ARCHITECTURE model OF FC10 IS 
begin 
PROCESS (B)
BEGIN
    IF B = '0' THEN S <= '0' AFTER 26 nS;
 ELSIF B = '1' THEN S <= '1' AFTER 19 nS;
 ELSIF B = 'H' THEN S <= 'H' AFTER 19 nS;
 ELSIF B = 'L' THEN S <= 'L' AFTER 19 nS;                                
 ELSE S <= 'X' AFTER 19 nS; 
 END IF;
 END PROCESS;  
 END model; 
-- END BEHAVE FC10
--********************************* MODEL FC11 *****************************************
LIBRARY ieee;                        
USE ieee.std_logic_1164.ALL;             
ENTITY FC11 IS     port(               
S  :   in    std_logic;
A  :   out   std_logic;                    
B  :   out   std_logic);                  
end FC11;
ARCHITECTURE model OF FC11 IS  
SIGNAL VIRTUAL : std_logic;
begin 
      A <= NOT (S) AFTER 6 nS;
      VIRTUAL <=  NOT (S);
      B <= NOT (VIRTUAL) AFTER 18 nS; 
END model; 
-- END BEHAVE FC11  
--********************************* MODEL FC12 *****************************************
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
 
ENTITY FC12 IS 
   port( 
    	N	:	in    std_logic; 
     	A	:	out   std_logic; 
     	B	:	out   std_logic; 
        S   :	inout   std_logic); 
end FC12; 
ARCHITECTURE model OF FC12 IS 
   begin 
 SASHA:    PROCESS (N)   BEGIN
       IF (N = '0')   THEN S <= '0' AFTER 90 nS;
       ELSIF (N = '1')   THEN S <= 'Z' AFTER 20 nS; 
   END IF;
  END PROCESS SASHA;  
 SAHA:     PROCESS (S)  
       begin
       IF   S = '0' OR S = 'L' THEN A <= '1' AFTER 9 NS; B <= '0' AFTER 19 NS;
       ELSIF S = '1' OR S = 'H' THEN A <= '0' AFTER 9 NS; B <= '1' AFTER 19 NS;  
       ELSE A <= 'X' AFTER 9 NS; B <= 'X' AFTER 15 NS;
   END IF;
   END PROCESS SAHA;    
END model; 
-- END BEHAVE FC12 
--********************************* MODEL FC13 *****************************************
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
ENTITY FC13 IS     port(   
	 S  :	in    std_logic; 
	 B  :   out   std_logic); 
end FC13; 
ARCHITECTURE model OF FC13 IS   
   begin 
PROCESS (S)
BEGIN
    IF (S = '0' OR S = 'L') THEN B <= '0' AFTER 24 NS; 
 ELSIF (S = '1' OR S = 'H') THEN B <= '1' AFTER 24 NS;
  ELSE  B <= 'X' AFTER 24 nS;
 END IF;
END PROCESS; 
END model; 
-- END BEHAVE FC13
--********************************* MODEL FC14 *****************************************
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
ENTITY FC14 IS     port(   
	 S  :	in    std_logic; 
	 B  :   out   std_logic); 
end FC14; 
ARCHITECTURE model OF FC14 IS   
   begin 
PROCESS (S)
BEGIN
    IF (S = '0' OR S = 'L') THEN B <= '0' AFTER 24 NS; 
 ELSIF (S = '1' OR S = 'H') THEN B <= '1' AFTER 24 NS;
  ELSE  B <= 'X' AFTER 24 nS;
 END IF;
END PROCESS; 
END model; 
-- END BEHAVE FC14
--********************************* MODEL FC16 NIKOLAY *****************************************
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
ENTITY FC16 IS 
port( 
   	A	:	out     std_logic; 
   	B	:	in   std_logic; 
    S   :	inout   std_logic); 
end FC16; 
ARCHITECTURE model OF FC16 IS 
begin
SAHA: PROCESS (S)  
begin
    IF   S = '0'  THEN  A <= '1' AFTER 19 NS;
   ELSIF S = '1'  THEN  A <= '0' AFTER 19 NS;
   ELSIF S = 'L'  THEN  A <= '1' AFTER 19 NS;
   ELSIF S = 'H'  THEN  A <= '0' AFTER 19 NS;  
                  ELSE  A <= 'X' AFTER 15 NS;
END IF;
END PROCESS SAHA;
RESISTOR: PROCESS (B)  
begin
    IF   B = 'L'  THEN S <= 'L' AFTER 9 NS; 
   ELSIF B = 'H'  THEN S <= 'H' AFTER 9 NS;   
   ELSE S <= 'Z' AFTER 9 NS; 
END IF;
END PROCESS RESISTOR;
END model; 
-- END BEHAVE FC16 LIBRARY ieee;
--********************************* MODEL FC17 ***************************************** 
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
ENTITY FC17 IS 
port( 
   	A : out   std_logic; 
   	B : in    std_logic;
   	N : in    std_logic; 
    S : inout std_logic); 
end FC17; 
ARCHITECTURE model OF FC17 IS 
begin
SASHA: PROCESS (S)  
begin
    IF   S = '0'  THEN  A <= '1' AFTER 19 NS;
   ELSIF S = '1'  THEN  A <= '0' AFTER 19 NS;
   ELSIF S = 'L'  THEN  A <= '1' AFTER 19 NS;
   ELSIF S = 'H'  THEN  A <= '0' AFTER 19 NS;  
                  ELSE  A <= 'X' AFTER 15 NS;
END IF;
END PROCESS SASHA;
RESISTOR: PROCESS (B,N)  
begin
    IF   B = 'L' AND N = '1'  THEN S <= 'H' AFTER 9 NS; 
   ELSIF B = 'H' AND N = '0'  THEN S <= 'L' AFTER 9 NS;
   ELSIF B = 'L' AND N = '0'  THEN S <= 'L' AFTER 9 NS;
   ELSIF B = 'H' AND N = '1'  THEN S <= 'H' AFTER 9 NS;
   ELSIF B = 'L' AND N = 'X'  THEN S <= 'X' AFTER 9 NS;
   ELSIF B = 'H' AND N = 'X'  THEN S <= 'X' AFTER 9 NS;
   ELSIF B = 'L' AND N = 'Z'  THEN S <= 'X' AFTER 9 NS;
   ELSIF B = 'H' AND N = 'Z'  THEN S <= 'X' AFTER 9 NS;
   ELSIF B = 'L' AND N = 'U'  THEN S <= 'X' AFTER 9 NS;
   ELSIF B = 'H' AND N = 'U'  THEN S <= 'X' AFTER 9 NS;
   ELSIF B = 'L' AND N = 'W'  THEN S <= 'X' AFTER 9 NS;
   ELSIF B = 'H' AND N = 'W'  THEN S <= 'X' AFTER 9 NS;
   ELSIF B = 'L' AND N = '-'  THEN S <= 'X' AFTER 9 NS;
   ELSIF B = 'H' AND N = '-'  THEN S <= 'X' AFTER 9 NS;
   ELSIF B = 'L' AND N = 'L'  THEN S <= 'L' AFTER 9 NS;
   ELSIF B = 'H' AND N = 'H'  THEN S <= 'H' AFTER 9 NS;
   ELSIF B = 'L' AND N = 'H'  THEN S <= 'H' AFTER 9 NS;
   ELSIF B = 'H' AND N = 'L'  THEN S <= 'L' AFTER 9 NS;
 ELSE S <= 'Z' AFTER 9 NS; 
END IF;
END PROCESS RESISTOR;
END model; 
-- END BEHAVE FC17 LIBRARY ieee;  
--********************************* MODEL FC18 *****************************************
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
ENTITY FC18 IS 
PORT(P, N : IN  std_logic;
        A : IN  std_logic; 
        B : OUT  std_logic;
        S :INOUT std_logic);
END FC18; 
ARCHITECTURE model OF FC18 IS 
BEGIN 
SAHA : PROCESS (P,N)  
BEGIN 
       IF (P = '0'AND N ='0')   THEN S <= '0' AFTER 45 NS;
    ELSIF (P = '1'AND N ='1')   THEN S <= '1' AFTER 57 NS;
    ELSIF (P = '0'AND N ='1')   THEN S <=  A  AFTER 57 NS; 
    ELSE  S <= 'X' AFTER 45 NS;
  END IF;
END PROCESS SAHA;
SASHA : PROCESS (S)
BEGIN
   IF S = '0' OR S = 'L'        THEN B <= '0' AFTER 20 NS; 
ELSIF S = '1' OR S = 'H'        THEN B <= '1' AFTER 20 NS;
 ELSE B <= 'X' AFTER 23 NS; 
END IF;
END PROCESS SASHA;
END model;
-- END BEHAVE FC18 
--********************************* MODEL FC19 *****************************************
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
ENTITY FC19 IS 
PORT( A : IN   std_logic; 
      B : OUT  std_logic;
      S :INOUT std_logic);
END FC19; 
ARCHITECTURE model OF FC19 IS 
BEGIN 
SAHA : PROCESS (A)  
BEGIN 
       IF A = 'L'  THEN S <= '0' AFTER 45 NS;
    ELSIF A = 'H'  THEN S <= '1' AFTER 57 NS;
    ELSE  S <= 'X' AFTER 45 NS;
  END IF;
END PROCESS SAHA;
SASHA : PROCESS (S)
BEGIN
   IF S = '0' OR S = 'L' THEN B <= '1' AFTER 20 NS; 
ELSIF S = '1' OR S = 'H' THEN B <= '0' AFTER 20 NS;
 ELSE B <= 'X' AFTER 23 NS; 
END IF;
END PROCESS SASHA;
END model; 
-- END BEHAVE FC19
--********************************* MODEL F3N5 *****************************************
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
ENTITY F3N5 IS 
PORT( A : IN  std_logic; 
      B : IN  std_logic;
	 C1 : IN  std_logic;
	  S : OUT std_logic;
      Y : OUT std_logic);
END F3N5; 
ARCHITECTURE model OF F3N5 IS 
BEGIN 
BITDEC : PROCESS (A,B,C1)  
BEGIN 
   IF (A = '0' AND B = '0' AND C1 = '0') THEN Y <= '1' AFTER 65 NS; S <= '0' AFTER 65 NS;
ELSIF (A = '0' AND B = '0' AND C1 = '1') THEN Y <= '1' AFTER 77 NS; S <= '0' AFTER 65 NS;
ELSIF (A = '0' AND B = '1' AND C1 = '0') THEN Y <= '1' AFTER 65 NS; S <= '0' AFTER 65 NS;
ELSIF (A = '1' AND B = '0' AND C1 = '0') THEN Y <= '1' AFTER 77 NS; S <= '0' AFTER 65 NS;
ELSIF (A = '0' AND B = '1' AND C1 = '1') THEN Y <= '0' AFTER 77 NS; S <= '1' AFTER 65 NS;
ELSIF (A = '1' AND B = '0' AND C1 = '1') THEN Y <= '0' AFTER 65 NS; S <= '1' AFTER 65 NS;
ELSIF (A = '1' AND B = '1' AND C1 = '0') THEN Y <= '0' AFTER 77 NS; S <= '1' AFTER 65 NS;
ELSIF (A = '1' AND B = '1' AND C1 = '1') THEN Y <= '0' AFTER 77 NS; S <= '1' AFTER 65 NS;
ELSE Y <= 'X' AFTER 77 NS; S <= 'X' AFTER 65 NS;
END IF;
END PROCESS BITDEC;
END model;
-- END BEHAVE F3N5
--********************************* MODEL F4N9 *****************************************
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
ENTITY F4N9 IS 
PORT( A : IN  std_logic; 
      B : IN  std_logic;
	  S : OUT std_logic;
      P : OUT std_logic);
END F4N9; 
ARCHITECTURE model OF F4N9 IS 
BEGIN 
SUMMATOR : PROCESS (A,B)  
BEGIN 
   IF (A = '0' AND B = '0') THEN S <= '0' AFTER 65 NS; P <= '0' AFTER 65 NS;
ELSIF (A = '0' AND B = '1') THEN S <= '1' AFTER 77 NS; P <= '0' AFTER 65 NS;
ELSIF (A = '1' AND B = '0') THEN S <= '1' AFTER 65 NS; P <= '0' AFTER 65 NS;
ELSIF (A = '1' AND B = '1') THEN S <= '0' AFTER 77 NS; P <= '1' AFTER 65 NS;
ELSE S <= 'X' AFTER 77 NS; P <= 'X' AFTER 65 NS;
END IF;
END PROCESS SUMMATOR;
END model;
-- END BEHAVE F4N9
--********************************* MODEL SUMC1 *****************************************
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 

ENTITY SUMC1 IS 
	PORT(C0,A,B,C1 : IN   std_logic; 
         Y : OUT  std_logic);
END SUMC1; 
				 
ARCHITECTURE model OF SUMC1 IS  
		signal sel:  std_logic_vector(3 downto 0);
	BEGIN    
		sel <= A&B&C1&C0;
SASA : PROCESS (sel)  
	BEGIN   
	case sel is
		WHEN "0000" => Y <= '1' AFTER 7 NS;      
		WHEN "0001" => Y <= '1' AFTER 7 NS;
		WHEN "0010" => Y <= '1' AFTER 7 NS;
		WHEN "0011" => Y <= '0' AFTER 5 NS;
		WHEN "0100" => Y <= '1' AFTER 7 NS;
		WHEN "0101" => Y <= '0' AFTER 5 NS;
		WHEN "0110" => Y <= '1' AFTER 7 NS;
		WHEN "0111" => Y <= '0' AFTER 5 NS;
		WHEN "1000" => Y <= '1' AFTER 7 NS;
		WHEN "1001" => Y <= '0' AFTER 5 NS;
		WHEN "1010" => Y <= '1' AFTER 7 NS;
		WHEN "1011" => Y <= '0' AFTER 5 NS;
		WHEN "1100" => Y <= '1' AFTER 7 NS;
		WHEN "1101" => Y <= '0' AFTER 5 NS;
		WHEN "1110" => Y <= '0' AFTER 5 NS;
		WHEN "1111" => Y <= '0' AFTER 5 NS; 
                when others => Y <= 'X' AFTER 5 NS; 
END CASE;  
END PROCESS SASA;   
END model; 
-- END BEHAVE SUMC1 
--********************************* MODEL F6N4 *****************************************
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
ENTITY F6N4 IS 
PORT( A : IN  std_logic; 
      B : IN  std_logic;
	 C1 : IN  std_logic;
	  S : OUT std_logic;
	  C : OUT std_logic);
END F6N4; 
ARCHITECTURE model OF F6N4 IS 
BEGIN 
SUMMATOR : PROCESS (A,B,C1)  
BEGIN
   IF (A = '0' AND B = '0' AND C1 = '0') THEN S <= '0' AFTER 65 NS; C <= '0' AFTER 65 NS;
ELSIF (A = '0' AND B = '0' AND C1 = '1') THEN S <= '1' AFTER 65 NS; C <= '0' AFTER 65 NS;
ELSIF (A = '0' AND B = '1' AND C1 = '0') THEN S <= '1' AFTER 65 NS; C <= '0' AFTER 65 NS;
ELSIF (A = '0' AND B = '1' AND C1 = '1') THEN S <= '0' AFTER 65 NS; C <= '1' AFTER 65 NS;
ELSIF (A = '1' AND B = '0' AND C1 = '0') THEN S <= '1' AFTER 65 NS; C <= '0' AFTER 65 NS;
ELSIF (A = '1' AND B = '0' AND C1 = '1') THEN S <= '0' AFTER 65 NS; C <= '1' AFTER 65 NS;
ELSIF (A = '1' AND B = '1' AND C1 = '0') THEN S <= '0' AFTER 65 NS; C <= '1' AFTER 65 NS;
ELSIF (A = '1' AND B = '1' AND C1 = '1') THEN S <= '1' AFTER 65 NS; C <= '1' AFTER 65 NS; 
ELSE C <= 'X' AFTER 77 NS; S <= 'X' AFTER 77 NS;
END IF;
END PROCESS SUMMATOR;
END model;
-- END BEHAVE F6N4 
--********************************* MODEL F6N5 *****************************************
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
ENTITY F6N5 IS 
PORT( A : IN  std_logic; 
      B : IN  std_logic;
	 NP : IN  std_logic;
	  S : OUT std_logic;
	  P : OUT std_logic);
END F6N5; 
ARCHITECTURE model OF F6N5 IS 
BEGIN 
SUMMATOR : PROCESS (A,B,NP)  
BEGIN
   IF (A = '0' AND B = '0' AND NP = '0') THEN S <= '1' AFTER 65 NS; P <= '0' AFTER 65 NS;
ELSIF (A = '0' AND B = '0' AND NP = '1') THEN S <= '0' AFTER 65 NS; P <= '0' AFTER 65 NS;
ELSIF (A = '0' AND B = '1' AND NP = '0') THEN S <= '0' AFTER 65 NS; P <= '1' AFTER 65 NS;
ELSIF (A = '0' AND B = '1' AND NP = '1') THEN S <= '1' AFTER 65 NS; P <= '0' AFTER 65 NS;
ELSIF (A = '1' AND B = '0' AND NP = '0') THEN S <= '0' AFTER 65 NS; P <= '1' AFTER 65 NS;
ELSIF (A = '1' AND B = '0' AND NP = '1') THEN S <= '1' AFTER 65 NS; P <= '0' AFTER 65 NS;
ELSIF (A = '1' AND B = '1' AND NP = '0') THEN S <= '1' AFTER 65 NS; P <= '1' AFTER 65 NS;
ELSIF (A = '1' AND B = '1' AND NP = '1') THEN S <= '0' AFTER 65 NS; P <= '1' AFTER 65 NS; 
ELSE P <= 'X' AFTER 77 NS; S <= 'X' AFTER 77 NS;
END IF;
END PROCESS SUMMATOR;
END model;
-- END BEHAVE F6N5
--********************************* MODEL F6N6 *****************************************
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
ENTITY F6N6 IS 
PORT( A : IN  std_logic; 
      B : IN  std_logic;
	  P : IN  std_logic;
	  S : OUT std_logic;
	 NP : OUT std_logic);
END F6N6; 
ARCHITECTURE model OF F6N6 IS 
BEGIN 
SUMMATOR : PROCESS (A,B,P)  
BEGIN
   IF (A = '0' AND B = '0' AND P = '0') THEN S <= '0' AFTER 65 NS; NP <= '1' AFTER 65 NS;
ELSIF (A = '0' AND B = '0' AND P = '1') THEN S <= '1' AFTER 65 NS; NP <= '1' AFTER 65 NS;
ELSIF (A = '0' AND B = '1' AND P = '0') THEN S <= '1' AFTER 65 NS; NP <= '1' AFTER 65 NS;
ELSIF (A = '0' AND B = '1' AND P = '1') THEN S <= '0' AFTER 65 NS; NP <= '0' AFTER 65 NS;
ELSIF (A = '1' AND B = '0' AND P = '0') THEN S <= '1' AFTER 65 NS; NP <= '1' AFTER 65 NS;
ELSIF (A = '1' AND B = '0' AND P = '1') THEN S <= '0' AFTER 65 NS; NP <= '0' AFTER 65 NS;
ELSIF (A = '1' AND B = '1' AND P = '0') THEN S <= '0' AFTER 65 NS; NP <= '0' AFTER 65 NS;
ELSIF (A = '1' AND B = '1' AND P = '1') THEN S <= '1' AFTER 65 NS; NP <= '0' AFTER 65 NS; 
ELSE NP <= 'X' AFTER 77 NS; S <= 'X' AFTER 77 NS;
END IF;
END PROCESS SUMMATOR;
END model;
-- END BEHAVE F6N6
-- **************************************************************************************
--     D-TRIGGER                    MODEL LDC1B1  
-- **************************************************************************************
--                                    SHEMATIK UGO : LDC1B1   
--                                        +----+--------+
--                                      S |    |     T  |
--                                   -----| S  |        |
--                                      D |----+        |
--                                   -----| D  |        |   Q
--                                      C |----+        |------
--                                   -----| C  |        |
--                                      R |----+        |
--                                   -----| R  |        |
--                                        |    | LDC1B1 |
--                                        +----+--------+
--
--   ****************************************                      
--   *Table SETUP sostoyany elementa LDC1B1 *             
--   ****************************************                      
--   *          I N P U T S   **   OUTPUTS  *                    
--   ****************************************
--   *  C  |  S  |  R   |  D  ||      Q     *
--   ******|*****|******|*****||*************
--   *  0  |  0  |  0   |  X  ||      q     *
--   *  1  |  0  |  0   |  0  ||      0     *
--   *  1  |  0  |  0   |  1  ||      1     *
--   *  X  |  1  |  0   |  X  ||      1     *
--   *  X  |  0  |  1   |  X  ||      0     *
--   ****************************************

--                                                       +------+             
--    S -------------------------------------------------|    1 |             +----+
--                                                       |      |             |  1 |    Q
--               +-----+               ____              |      0--------+----|    0-----
--               |    1|              |   1|             |      |        |    | F3 |
--    C ---------|     0------+-------| F3 0----+     +--|  F1  |        |    +----+
--               |  F7 |      |       |____|    |     |  +------+        |
--               +-----+      |  +--------------+     |                  |
--               |    1|      |  |        ____        |                  |
--           +---|     0---+  |  |       |   1|       |                  |
--           |   |  F7 |   |  |  +-------|>   |       +--------------+   |
--           |   +-----+   |  |  |  +----| F4 0----+                 |   |
--           |             |  +---------<|    |    |                 |   |
--           |             |  |  |  |    |____|    |                 |   |
--    D ---- | ----------- |  |  | -+     ____     |                 |   |
--           |             |  |  |       |   1|    |                 |   |
--           |             |  +----------|>   |    |     +------+    |   |
--           |             +-------------| F4 0----+-----|    1 |    |   |
--           |                   +------<|    |          |      |    |   |
--           |                           |____|          |      0----+   |
--           |                                           |      |        |
--    R -------------------------------------------------|  F1  |        |
--           |                                           +------+        |
--           |                                                           |
--           |                                                           |
--           +-----------------------------------------------------------+
--                                                                       
LIBRARY ieee;                                                
USE ieee.std_logic_1164.ALL; 
ENTITY  LDC1B1  IS 
PORT( 
C,  
S,
R,  
D : IN  std_logic; 
Q : OUT  std_logic); 
END  LDC1B1 ; 

ARCHITECTURE model OF  LDC1B1  IS
BEGIN 
SASHA : PROCESS (C,D,R,S)
   BEGIN
   IF     S = '1' THEN Q <= '1' AFTER 8 NS;
   ELSIF  R = '1' THEN Q <= '0' AFTER 11 NS;
   ELSIF C = '1' AND D = '1' THEN Q <= '1' AFTER 20 NS;
   ELSIF C = '1' AND D = '0' THEN Q <= '0' AFTER 25 NS; 
   END IF;
   END PROCESS SASHA;
   end model;
-- END BEHAVE LDC1B1
--********************************* MODEL TSH *******************************************
LIBRARY ieee;                                                
USE ieee.std_logic_1164.ALL; 
ENTITY  TSH  IS 
PORT( 
A : IN  std_logic; 
S : OUT  std_logic); 
END  TSH ;
ARCHITECTURE model OF TSH IS  
SIGNAL VIRTUAL : std_logic;
begin 
VIRTUAL <=  NOT (A);
      S <=  NOT (VIRTUAL) AFTER 18 nS; 
END model; 
-- END BEHAVE TSH 
-- **************************************************************************************
--                            MODEL FJK0R1  
-- **************************************************************************************
--                   JK-TRIGGER SO RESET.  11  VenTiL               
-- **************************************************************************************
--                                  SHEMATIK UGO :  FJK0R1
--
--                                      +----+-------+
--                                  ----| J  |    TT |   Q
--                                      |----|       |----
--                                  ----| K  |       |
--                                      |----|       |
--                                  ----\ CN |       |  QN
--                                      |----|       0----
--                                  ----| R  | FJK0R1|
--                                      +----+-------+
--
--   ****************************************                      
--   *Table SETUP sostoyany elementa FJK0R1 *             
--   ****************************************                      
--   *       I N P U T S      **   OUTPUTS  *                    
--   ****************************************
--   *  J  |  K  |  CN  |  R  ||  Q  |  QN  *
--   ******|*****|******|*****||*************
--   *  X  |  X  |  X   |  1  ||  0  |  1   *
--   *  X  |  X  |  X   |  0  ||  1  |  0   *
--   *  0  |  0  |  V   |  0  ||q n-1|qB n-1*
--   *  1  |  0  |  V   |  0  ||  1  |  0   *
--   *  0  |  1  |  V   |  0  ||  0  |  1   *
--   *  1  |  1  |  V   |  0  || qB  |  q   * 
--   ****************************************
--                                                                
--             +-------------------------------------+                                                                 
--             |                                     |              
--             |   +-------+                         |                      
--             +---|     1 |                         |               
--                 |       |            +-------+    |                        
--        +--------|       0------------|    1  |    |          +-----+            +-----+       
--        |        | GON3  |            | GON2  0----+----------|   1 |            |   1 |
--        |    +---|(F2N6) |       +----|   (F1)|    |  +-------|GON3 0---+--------| GN1 0----- QN   
--        |    |   +-------+       |    +-------+    |  |  +----|(F2N6|   |        |(F7) |
--        |    |                   |                 |  |  |    +-----+   |        +-----+
--  CN ----------------------------+                 |  |  |              |        |   1 |
--        |    |                   |                 |  |  +------------------+----| GN1 0----- Q
--        |    +----------------------------------+  |  |                 |   |    |(F7) |
--        |                        |              |  |  |                 |   |    +-----+
--  R  ---+---------------------------------------------+                 |   |
--                                 |              |  |                    |   +------------------+
--                +-----------+    |              |  |                    |                      |
--  K  -----------| &  |    1 |    |              |  |                    |                      |
--                |    |      |    |              |  |                    |          +------+    |
--                |    |      |    |    +-----+   |  |     +-----+        +----------|    1 |    |
--             +--|    |      0---------|   1 |   |  +-----|   1 |        |          | GON2 0----+
--             |  |----+GA021B|    |    |GON2 0---+--------|GON3 0----+--------------| (F1) |
--        +--- | -|    |(F2N10|    | +--| (F1)|      +-----|{F2N6|    |   |          +------+
--        |    |  +-----------+    | |  +-----+      |     +-----+    |   |
--        |    |                   | +--------------------------------+   |
--        |    |                   |                 |                    |
--        |    |                   +-----------------+                    |
--        |    |                                                          |
--        |    +----------------------------------------------------------+
--        +------------------+
--             |             |
--             |    +-----+  |
--             +----|   1 |  |
--                  |GON2 0--+
--   J  ------------|(F1) |
--                  +-----+
--
--
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity FJK0R1 is
	port(
		Q   :   out std_logic ;
		QN   :   out std_logic ;
		K   :   in std_logic;
		J   :   in std_logic;
		CN   :   in std_logic;
		R   :   in std_logic);
end FJK0R1;

architecture model of FJK0R1 is
		Signal sel:  std_logic_vector(1 downto 0);
		SIGNAL N5 : std_logic;   
		SIGNAL N6 : std_logic; 
	BEGIN 
		sel <= J&K;
SASA : PROCESS (sel, CN, R)
	begin 
		IF    (R = '1') THEN  N5 <= '0' AFTER 20 NS; N6 <= '1' AFTER 15 NS;
		ELSIF (CN = '0') AND CN'EVENT THEN
	case sel is
		when "00" =>   N5 <= N5; N6 <= N6;
		when "01" =>   N5 <= '0' AFTER 35 NS; N6 <= '1' AFTER 30 NS;
		when "10" =>   N5 <= '1' AFTER 20 NS; N6 <= '0' AFTER 40 NS;
		when "11" =>   N5 <= NOT N5 AFTER 40 NS; N6 <= NOT N6 AFTER 40 NS;
		when others => N5 <= 'X' AFTER 20 NS; N6 <= 'X' AFTER 20 NS;
end case;
END IF;  
END PROCESS;  
	Q <= N5;
	QN <= N6;
end model;
-- END BEHAVE FJK0R1
-- **************************************************************************************
--                      MODEL FDC0R1    
-- **************************************************************************************
--
--                                    SHEMATIK UGO : FDC0R1 
--
--                                      +----+-------+  Q
--                                  ----| D  |    TT |----
--                                      |----|       |
--                                  ----\ CN |       |
--                                      |----|       |  QN
--                                  ----| R  |FDC0R1 0---- 
--                                      +----+-------+                                 
--                                 
--   **************************                      
--   *Table  element   FDC0R1 *             
--   **************************                      
--   *  INPUTS   ||  OUTPUTS  *                    
--   **************************
--   * D |CN | R ||  Q  | QN  *
--   ****|***|***||*****|******
--   * X | X | 1 ||  0  |  1  *
--   * 0 | V | 0 ||  0  |  1  *
--   * 1 | V | 0 ||  1  |  0  *
--   * X | ^ | 0 ||  q  |  qB *
--   **************************                           

--    R ---------------------------------------------+
--                                                   |
--                                                   |
--                                +-------+          |
--                                |  MUX  |          |
--                        +-------|>D     |          |
--                        |       |       |          |     +-----+             +-----+
--    D --------------------------| A     |----------------|   1 |             |   > |
--                        |       |       |          |     |     0------+------|     0------+
--                        | +-----| B     |          +-----|  F1 |      |      |  F3 |      |
--                        | |     |       |          |     +-----+      |      +-----+      |
--                      +--------<| C  F9 |          |                  |                   |
--                      | | |     +-------+          |                  |                   |
--                      | | |                        |                  |                   |
--                      | | +---------------------------------------------------------------+
--                      | |                          |                  |
--          +-----------+ |    +----------------------------------------+
--          |           | |    |                     |
--          |  +-----+  | |    |  +-------+          |
--          |  |   1 |  | |    |  |  MUX  |          |     +-----+             +-----+
--    CN ------|     0--+---------|>D     |          +-----|   1 |             |   1 |      QN
--          |  |     |    |    |  |       |                |     0------+------|     0---------
--          |  |  F7 |    |    +--| A     |----------------|  F1 |      |      |  F7 |
--          |  +-----+    |       |       |                +-----+      |      +-----+
--          |  |   1 |    |    +--| B     |                             |
--          |  |     |    |    |  |       |           +-----------------+
--          +--|     0----+------<| C  F9 |           |
--             |  F7 |         |  +-------+           |    +-----+             +-----+
--             +-----+         |                      |    |   > |             |   1 |       Q
--                             |                      +----|     0------+------|     0---------
--                             |                           |  F3 |      |      |  F7 |
--                             |                           +-----+      |      +-----+
--                             |                                        |
--                             +----------------------------------------+
--
-- BEGIN BEHAVE DFCTNB 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY FDC0R1 IS
PORT(
     D, CN, R : IN  std_logic;
     Q, QN : OUT std_logic );
END FDC0R1;

ARCHITECTURE model OF FDC0R1 IS
BEGIN
BEHAVIOR : PROCESS (R, CN, D)
BEGIN
    IF (R = '1') THEN Q <= '0' AFTER 15 NS; QN <= '1' AFTER 12 NS;  
    ELSE IF (CN = '0') AND CN'EVENT  THEN Q <= D AFTER 25 NS; QN <= NOT D AFTER 22 NS;
  END IF;
  END IF;
 END PROCESS;
 END model;
-- END BEHAVE DFCTNB
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY FDC0R1INV IS
PORT(
D, CN, R : IN  std_logic;
Q, QN : OUT std_logic );
END FDC0R1INV;

ARCHITECTURE model OF FDC0R1INV IS
  BEGIN
BEHAVIOR : PROCESS (R, CN, D)
BEGIN
    IF (R = '1') THEN Q <= '0' AFTER 15 NS; QN <= '1' AFTER 12 NS;  
    ELSE IF (CN = '0') AND CN'EVENT  THEN Q <= D AFTER 25 NS; QN <= NOT D AFTER 22 NS;
  END IF;
  END IF;
 END PROCESS;
 END model;
-- END BEHAVE DFCTNBINV  
-- ***********************************************************
--                            MODEL DFF                      
-- *********************************************************** 
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
ENTITY DFF IS 
PORT( 
D, PRN, CLK, CLRN :	in    std_logic; 
Q, QN :	out   std_logic);
END DFF;
ARCHITECTURE model OF DFF IS   
	BEGIN
BEHAVIOR : PROCESS (PRN, CLRN, D, CLK)
	BEGIN  
       IF  PRN = '0' AND CLRN = '1' THEN  Q <= '1' AFTER 15 NS; QN <= '0' AFTER 10 NS;
       ELSIF CLRN = '0' AND PRN = '1' THEN  QN <= '1' AFTER 10 NS; Q <= '0'AFTER 15 NS;
       ELSIF CLRN = '0' AND PRN = '0' THEN Q <= '0'AFTER 15 NS; QN <= '0' AFTER 10 NS;
       ELSE IF (PRN = '1' AND CLRN = '1') AND (CLK = '1' AND CLK'EVENT)  THEN   Q <= D AFTER 25 NS; QN <= NOT D  AFTER  20 NS; 
   
END IF; 
END IF;
END PROCESS;

END model; 
-- END BEHAVE GN1B 
-- ***********************************************************
--                            MODEL DFFE                      
-- ***********************************************************
--                     ______________                     
--                _____| D  | D     |
--                     |____|   TT  |
--                     |    |       |_____ Q
--                -----/ C  | CLK   |
--                     |____|       |
--                     |    |       |
--                -----0 SN | PRN   |
--                     |____|       |
--                -----0 RN | CLRN  |
--                     |----|       |
--                -----| EA | ENA   |
--                     |____|_______|
-- BEGIN BEHAVE DFFE 
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
ENTITY DFFE IS 
PORT( 
D,CLK,CLRN,PRN,ENA : IN std_logic;       
Q :	OUT   std_logic);  
END DFFE;
ARCHITECTURE model OF DFFE IS   

SIGNAL N1, N2 : STD_LOGIC;   
  BEGIN
SAHA:  PROCESS (D, N2, ENA)  
       BEGIN 
       IF ENA = '1' THEN N1 <= D AFTER 5 NS;
       ELSE N1 <= N2 AFTER 5 NS;
 END IF;    
  END PROCESS;      

 SASHA: PROCESS (PRN, CLRN, N1, CLK)
	BEGIN  
       IF CLRN = '0' THEN N2 <= '0' AFTER 10 NS;
       ELSIF PRN = '0' AND CLRN = '1' THEN  N2 <= '1' AFTER 15 NS;
       ELSE IF (PRN = '1' AND CLRN = '1') AND (CLK = '1' AND CLK'EVENT)  THEN   N2 <= N1 AFTER 25 NS; END IF;   
END IF; 
END PROCESS;
        Q <= N2;
END model; 
-- END BEHAVE DFFE
--********************************* MODEL JKFF ******************************************
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
 ENTITY JKFF IS 
    port( 
	 PRN :	in    std_logic; 
	 CLRN :	in    std_logic; 
     K :	in    std_logic;
	 J :	in    std_logic;
	 CLK :	in    std_logic; 
	 Q :	out   std_logic);
end JKFF;
ARCHITECTURE model OF JKFF IS
SIGNAL Y1 : std_logic;
SIGNAL Y2 : STD_LOGIC;
SIGNAL Y3 : STD_LOGIC;
SIGNAL Y4 : STD_LOGIC;
SIGNAL Y5 : STD_LOGIC;
SIGNAL Y6 : STD_LOGIC;
SIGNAL Y7 : std_logic;
SIGNAL Y8 : STD_LOGIC;
SIGNAL Y9 : STD_LOGIC;
SIGNAL Y10 : STD_LOGIC;
--Y7,  
--J : IN  std_logic; 
--Y1 : OUT  std_logic); 
BEGIN
ATTACKGON2 : PROCESS (Y7,J)
BEGIN  
    IF (Y7 = '1' OR Y7 = 'H') OR (J = '1' OR J = 'H') THEN Y1 <= '0' AFTER 8 nS;
    ELSIF (Y7 = '0' OR Y7 = 'L') AND (J ='0' OR J ='L')THEN Y1<= '1' AFTER 15 nS;
    ELSE Y1 <= 'X' AFTER 8 NS;
END IF;
END PROCESS ATTACKGON2;
--K :	in    std_logic; 
--Y7 :	in    std_logic; 
--Y1 :	in    std_logic; 
--Y2 :	out   std_logic); 
ATTACKGAON21 : PROCESS (K,Y7,Y1)
BEGIN 
    IF Y1 = '1' OR  (K = '1' AND Y7 = '1') THEN Y2 <= '0' AFTER 10 NS;
    ELSIF Y1='0' AND (K = '0' OR Y7 = '0') THEN Y2 <= '1' AFTER 15 nS; 
    ELSE Y2 <='X' AFTER 10 NS;
END IF;
END PROCESS ATTACKGAON21;
--Y9  :	out   std_logic;   --Z
--Y10 :	out   std_logic;   --Y
--CLK : in    std_logic); 
ATTACKGO1B : PROCESS (CLK)
BEGIN
    IF CLK = '0' or CLK = 'L'     then Y9 <= '0' AFTER 8 nS;
                                      Y10 <= '1' AFTER 5 NS; 
    ELSIF CLK = '1' or CLK = 'H'  then Y9 <= '1' AFTER 8 nS;
                                      Y10 <= '0' AFTER 5 NS;                           
    ELSE Y10 <= 'X' AFTER 5 NS;
          Y9 <= 'X' AFTER 5 NS;                     
    END IF;           
    END PROCESS ATTACKGO1B;
--Y2, Y5, Y9, Y10 : IN  std_logic;
--             Y3 : OUT std_logic );
ATTACKGMX1 : PROCESS ( Y2, Y5, Y9, Y10 )
BEGIN        
		IF    (Y9 = '0' AND Y10 = '1') THEN Y3 <= Y2 AFTER 2 NS;
		ELSIF (Y9 = '1' AND Y10 = '0') THEN Y3 <= Y5 AFTER 2 NS; 
		ELSIF (Y2 = '0' AND Y5 = '0') THEN Y3 <='0' AFTER 2 NS;
		ELSIF (Y2 = '1' AND Y5 = '1') THEN Y3 <='1' AFTER 2 NS; 
		ELSE 							   Y3 <='X' AFTER 2 NS;  
END IF;
END PROCESS ATTACKGMX1;
--Y4, Y8, Y10, Y9 : IN  std_logic;
--             Y6 : OUT std_logic );
ATTACKGMX2 : PROCESS ( Y4, Y8, Y10, Y9 )
BEGIN        
		IF    (Y10 = '0' AND Y9 = '1') THEN Y6 <= Y4 AFTER 2 NS;
		ELSIF (Y10 = '1' AND Y9 = '0') THEN Y6 <= Y8 AFTER 2 NS; 
		ELSIF (Y4 = '0' AND Y8 = '0') THEN Y6 <='0' AFTER 2 NS;
		ELSIF (Y4 = '1' AND Y8 = '1') THEN Y6 <='1' AFTER 2 NS; 
		ELSE 							   Y6 <='X' AFTER 2 NS;  
END IF;
END PROCESS ATTACKGMX2;
--CLRN,  
--Y3 : IN  std_logic; 
--Y4 : OUT  std_logic); 
ATTACKGAN2V1 : PROCESS (CLRN,Y3)
BEGIN 
    IF CLRN ='1' AND Y3 = '1' THEN Y4 <= '0' AFTER 15 nS;
 ELSIF CLRN ='0' OR  Y3 = '0' THEN Y4 <= '1' AFTER 8 nS;
 ELSE Y4 <= 'X' AFTER 8 NS;
END IF;
END PROCESS ATTACKGAN2V1;
--PRN,  
--Y6 : IN  std_logic; 
--Y7 : OUT  std_logic); 
ATTACKGAN2V2 : PROCESS (PRN,Y6)
BEGIN 
    IF PRN ='1' AND Y6 = '1' THEN Y7 <= '0' AFTER 15 nS;
 ELSIF PRN ='0' OR  Y6 = '0' THEN Y7 <= '1' AFTER 8 nS;
 ELSE Y7 <= 'X' AFTER 8 NS;
END IF;
END PROCESS ATTACKGAN2V2;
--Y4,  
--PRN : IN  std_logic; 
--Y5 : OUT  std_logic); 
ATTACKGAN2V3 : PROCESS (Y4,PRN)
BEGIN 
    IF Y4 ='1' AND PRN = '1' THEN Y5 <= '0' AFTER 15 nS;
 ELSIF Y4 ='0' OR  PRN = '0' THEN Y5 <= '1' AFTER 8 nS;
 ELSE Y5 <= 'X' AFTER 8 NS;
END IF;
END PROCESS ATTACKGAN2V3;
--Y7,  
--CLRN : IN  std_logic; 
--Y8 : OUT  std_logic); 
ATTACKGAN2V4 : PROCESS (Y7,CLRN)
BEGIN 
    IF Y7 ='1' AND CLRN = '1' THEN Y8 <= '0' AFTER 15 nS;
 ELSIF Y7 ='0' OR  CLRN = '0' THEN Y8 <= '1' AFTER 8 nS;
 ELSE Y8 <= 'X' AFTER 8 NS;
END IF;
END PROCESS ATTACKGAN2V4;
-- Q :	out   std_logic;
--Y8 :	in    std_logic);
Q <= NOT (Y8) AFTER 6 nS;
END model; 
-- END BEHAVE JKFF 
--********************************* MODEL JKFFE *****************************************
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
ENTITY JKFFE IS 
    port( 
	 PRN :	in    std_logic; 
	 CLRN :	in    std_logic; 
     K :	in    std_logic;
	 J :	in    std_logic;
	 ENA :	in    std_logic;
	 CLK :	in    std_logic;
	 Q :	out   std_logic);
end JKFFE;
ARCHITECTURE model OF JKFFE IS
SIGNAL Y1 : std_logic;
SIGNAL Y2 : STD_LOGIC;
SIGNAL Y3 : STD_LOGIC;
SIGNAL Y4 : STD_LOGIC;
SIGNAL Y5 : STD_LOGIC;
SIGNAL Y6 : STD_LOGIC;
SIGNAL Y7 : std_logic;
SIGNAL Y8 : STD_LOGIC;
SIGNAL Y9 : STD_LOGIC;
SIGNAL Y10 : std_logic;
SIGNAL Y11 : STD_LOGIC;
SIGNAL Y12 : std_logic;
SIGNAL Y13 : STD_LOGIC;
SIGNAL Y14 : STD_LOGIC;
--J,  
--Y13 : IN  std_logic; 
--Y1 : OUT  std_logic); 
BEGIN 
ATTACKGON2 : PROCESS (J,Y13)
BEGIN
    IF (J = '1' OR J = 'H') OR (Y13 = '1' OR Y13 = 'H') THEN Y1 <= '0' AFTER 8 nS;
    ELSIF (J = '0' OR J = 'L') AND (Y13 ='0' OR Y13 ='L')THEN Y1<= '1' AFTER 15 nS;
    ELSE Y1 <= 'X' AFTER 8 NS;
END IF;
END PROCESS ATTACKGON2;
--K :	in    std_logic; 
--Y13 :	in    std_logic; 
--Y1 :	in    std_logic; 
--Y6 :	out   std_logic); 
ATTACKGAON21 : PROCESS (K,Y13,Y1)
BEGIN 
    IF Y1 = '1' OR  (K = '1' AND Y13 = '1') THEN Y6 <= '0' AFTER 10 NS;
    ELSIF Y1='0' AND (K = '0' OR Y13 = '0') THEN Y6 <= '1' AFTER 15 nS; 
    ELSE Y6 <='X' AFTER 10 NS;
END IF;
END PROCESS ATTACKGAON21;   
--Y2  :	out   std_logic; 
--Y3  :	out   std_logic;
--ENA  :   in   std_logic); 
ATTACKGO1B1 : PROCESS (ENA)
 BEGIN
    IF ENA = '0'or ENA = 'L'  then Y2 <= '0'  AFTER 8 nS;
                                   Y3 <= '1' AFTER 5 NS; 
 ELSIF ENA = '1'or ENA = 'H'  then Y2 <= '1'  AFTER 8 nS;
                                   Y3 <= '0' AFTER 5 NS;                           
 ELSE Y3 <= 'X' AFTER 5 NS;
      Y2 <= 'X' AFTER 5 NS;                     
 END IF;           
 END PROCESS ATTACKGO1B1; 
--Y4  :	out   std_logic; 
--Y5  :	out   std_logic;
--CLK :  in   std_logic); 
ATTACKGO1B2 : PROCESS (CLK)
 BEGIN
    IF CLK = '0'or CLK = 'L'  then Y4 <= '0'  AFTER 8 nS;
                                   Y5 <= '1' AFTER 5 NS; 
 ELSIF CLK = '1'or CLK = 'H'  then Y4 <= '1'  AFTER 8 nS;
                                   Y5 <= '0' AFTER 5 NS;                           
 ELSE Y5 <= 'X' AFTER 5 NS;
      Y4 <= 'X' AFTER 5 NS;                     
 END IF;           
 END PROCESS ATTACKGO1B2;
--Y6, Y14, Y3, Y2 : IN  std_logic;
--           Y7 : OUT std_logic );
ATTACKGMX3 : PROCESS ( Y6, Y14, Y3, Y2 )
   BEGIN        
		IF    (Y3 = '0' AND Y2 = '1') THEN Y7 <= Y6 AFTER 2 NS;
		ELSIF (Y3 = '1' AND Y2 = '0') THEN Y7 <= Y14 AFTER 2 NS; 
		ELSIF (Y6 = '0' AND Y14 = '0') THEN Y7 <='0' AFTER 2 NS;
		ELSIF (Y6 = '1' AND Y14 = '1') THEN Y7 <='1' AFTER 2 NS; 
		ELSE 							   Y7 <= 'X' AFTER 2 NS;  
END IF;
END PROCESS ATTACKGMX3;
--Y10, Y14, Y5, Y4 : IN  std_logic;
--           Y12 : OUT std_logic );
ATTACKGMX2 : PROCESS ( Y10, Y14, Y5, Y4 )
   BEGIN        
		IF    (Y5 = '0' AND Y4 = '1') THEN Y12 <= Y10 AFTER 2 NS;
		ELSIF (Y5 = '1' AND Y4 = '0') THEN Y12 <= Y14 AFTER 2 NS; 
		ELSIF (Y10 = '0' AND Y14 = '0') THEN Y12 <='0' AFTER 2 NS;
		ELSIF (Y10 = '1' AND Y14 = '1') THEN Y12 <='1' AFTER 2 NS; 
		ELSE 						        Y12 <= 'X' AFTER 2 NS;  
END IF;
END PROCESS ATTACKGMX2;
--Y8, Y11, Y4, Y5 : IN  std_logic;
--           Y9 : OUT std_logic );
ATTACKGMX1 : PROCESS ( Y8, Y11, Y4, Y5 )
   BEGIN        
		IF    (Y4 = '0' AND Y5 = '1') THEN Y9 <= Y8 AFTER 2 NS;
		ELSIF (Y4 = '1' AND Y5 = '0') THEN Y9 <= Y11 AFTER 2 NS; 
		ELSIF (Y8 = '0' AND Y11 = '0') THEN Y9 <='0' AFTER 2 NS;
		ELSIF (Y8 = '1' AND Y11 = '1') THEN Y9 <='1' AFTER 2 NS; 
		ELSE 							   Y9 <= 'X' AFTER 2 NS;  
END IF;
END PROCESS ATTACKGMX1;
--CLRN,  
--Y9 : IN  std_logic; 
--Y10 : OUT  std_logic); 
ATTACKGAN2T1 : PROCESS (CLRN,Y9)
BEGIN 
    IF CLRN ='1' AND Y9 = '1' THEN Y10 <= '0' AFTER 15 nS;
 ELSIF CLRN ='0' OR  Y9 = '0' THEN Y10 <= '1' AFTER 8 nS;
 ELSE Y10 <= 'X' AFTER 8 NS;
END IF;
END PROCESS ATTACKGAN2T1;
--PRN,  
--Y10 : IN  std_logic; 
--Y11 : OUT  std_logic); 
ATTACKGAN2T2 : PROCESS (PRN,Y10)
BEGIN 
    IF PRN ='1' AND Y10 = '1' THEN Y11 <= '0' AFTER 15 nS;
 ELSIF PRN ='0' OR  Y10 = '0' THEN Y11 <= '1' AFTER 8 nS;
 ELSE Y11 <= 'X' AFTER 8 NS;
END IF;
END PROCESS ATTACKGAN2T2;
--PRN,  
--Y12 : IN  std_logic; 
--Y13 : OUT  std_logic); 
ATTACKGAN2T3 : PROCESS (PRN,Y12)
BEGIN 
    IF PRN ='1' AND Y12 = '1' THEN Y13 <= '0' AFTER 15 nS;
 ELSIF PRN ='0' OR  Y12 = '0' THEN Y13 <= '1' AFTER 8 nS;
 ELSE Y13 <= 'X' AFTER 8 NS;
END IF;
END PROCESS ATTACKGAN2T3;
--CLRN,  
--Y13 : IN  std_logic; 
--Y14 : OUT  std_logic); 
ATTACKGAN2T4 : PROCESS (CLRN,Y13)
BEGIN 
    IF CLRN ='1' AND Y13 = '1' THEN Y14 <= '0' AFTER 15 nS;
 ELSIF CLRN ='0' OR  Y13 = '0' THEN Y14 <= '1' AFTER 8 nS;
 ELSE Y14 <= 'X' AFTER 8 NS;
END IF;
END PROCESS ATTACKGAN2T4;
Y8 <= NOT (Y7) AFTER 6 nS;
Q <= NOT (Y14) AFTER 6 nS;
END model; 
-- END BEHAVE JKFFE 
-- ******************************** MODEL TCCBR0 ****************************************
--              POHOJE  STO FUNKCIONAL    ANALOG   ELEMENTA   MODELi LDCBR0 
-- **************************************************************************************
--                                  D-TRIGGER  3  VenTiL               
-- **************************************************************************************
--                                  SHEMATIK UGO :  TTCBR0
--
--                                      +----+-------+
--                                  ----| RN |    TT |   Q
--                                      |----|       |----
--                                  ----| D  |       |
--                                      |----|       |
--                                  ----| C  |       | 
--                                      |----|       |
--                                  ----| CN | TTCBR0|
--                                      +----+-------+
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY TCCBR0 IS
	PORT(
		D, C, CN, RN : IN  std_logic;
		Q : OUT std_logic);
END TCCBR0;

ARCHITECTURE model OF TCCBR0 IS 
		SIGNAL N5,N6 : STD_LOGIC;
	BEGIN   
ALEXANDR : PROCESS ( D, N6, C, CN )
	BEGIN        
		IF    (C='0' AND CN='1') THEN N5 <= N6;
		ELSIF (C = '1' AND CN = '0') THEN N5 <= D AFTER 2 NS;
		ELSIF (D = '0' AND N6 = '0') THEN  N5<= '0' AFTER 2 NS;
		ELSIF (D = '1' AND N6 = '1') THEN N5 <= '1' AFTER 2 NS; 
		ELSE N5 <= 'X'AFTER 10 NS; 
END IF;
END PROCESS ALEXANDR;

SASHA : PROCESS (N5,RN)
	BEGIN
		IF RN = '0' THEN N6 <= '0' AFTER 11 NS;
		ELSIF N5 = '1' THEN N6 <= '1' AFTER 13 NS;
		ELSIF N5 = '0' THEN N6 <= '0' AFTER 13 NS; 
		ELSE N6 <= 'X'AFTER 10 NS;
END IF;
END PROCESS SASHA;
   Q <= N6;
END model;  
   
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY LDCBR0INV IS
	PORT(
		D, C, CN, RN : IN  std_logic;
		Q : OUT std_logic);
END LDCBR0INV;

ARCHITECTURE model OF LDCBR0INV IS 
		SIGNAL N5,N6 : STD_LOGIC;
	BEGIN
ALEXANDR : PROCESS ( D, N6, C, CN )
   BEGIN        
		IF    (C='0' AND CN='1') THEN N5 <= N6;
		ELSIF (C = '1' AND CN = '0') THEN N5 <= D AFTER 2 NS;
		ELSIF (D = '0' AND N6 = '0') THEN  N5<= '0' AFTER 2 NS;
		ELSIF (D = '1' AND N6 = '1') THEN N5 <= '1' AFTER 2 NS; 
		ELSE N5 <= 'X'AFTER 10 NS; 
END IF;
END PROCESS ALEXANDR;

SASHA : PROCESS (N5,RN)
   BEGIN
		IF RN = '0' THEN N6 <= '0' AFTER 11 NS;
		ELSIF N5 = '1' THEN N6 <= '1' AFTER 13 NS;
		ELSIF N5 = '0' THEN N6 <= '0' AFTER 13 NS; 
		ELSE N6 <= 'X'AFTER 10 NS;
END IF;
END PROCESS SASHA;
   Q <= N6;
END model;
-- END BEHAVE TCCBR0 
--********************************* MODEL F11 *******************************************
LIBRARY ieee;                        
USE ieee.std_logic_1164.ALL;             
ENTITY F11 IS     port(               
A  :   in    std_logic;
B  :   out   std_logic);                  
end F11;
ARCHITECTURE model OF F11 IS 
begin
RESISTOR : PROCESS ( A )  
begin
    IF   A = '0' THEN B <= 'L' AFTER 9 NS;
   ELSIF A = 'L' THEN B <= 'L' AFTER 9 NS;
   ELSIF A = '1' THEN B <= 'H' AFTER 9 NS;
   ELSIF A = 'H' THEN B <= 'H' AFTER 9 NS;
   ELSE B <= 'X' AFTER 9 NS;
END IF;
END PROCESS RESISTOR; 
END model; 
-- END BEHAVE FC11  
--********************************* MODEL TRI ******************************************
LIBRARY ieee;                        
USE ieee.std_logic_1164.ALL;             
ENTITY TRI IS     port( 
D  :   in    std_logic;              
EN :   in    std_logic;
Q  :   out   std_logic);                  
end TRI;
ARCHITECTURE model OF TRI IS 
begin
BUHALO : PROCESS ( D, EN )  
begin
      IF   EN = '0' THEN Q <= 'Z' AFTER 9 NS;
   ELSIF D = '0' AND EN = '1' THEN Q <= '0' AFTER 9 NS;
   ELSIF D = '1' AND EN = '1' THEN Q <= '1' AFTER 9 NS;
   ELSE Q <= 'X' AFTER 9 NS;
END IF;
END PROCESS BUHALO; 
END model; 
-- END BEHAVE TRI 
--********************************* MODEL FCUCC ******************************************
LIBRARY ieee;                                      --\CF\C8\D2\C0\CD\C8\C5
USE ieee.std_logic_1164.ALL;

entity FCUCC is
	port(S : out STD_LOGIC);
end FCUCC;

architecture model of FCUCC is
begin
S <= '1';
end model;
--********************************* MODEL FCGND ******************************************
LIBRARY ieee;                                      --\C7\C5\CC\CB\DF
USE ieee.std_logic_1164.ALL;

entity FCGND is
	port(S : out STD_LOGIC);
end FCGND;
architecture model of FCGND is
begin
S <= '0';
end model;
--******************************************************************************
LIBRARY ieee;                                      --\CF\C8\D2\C0\CD\C8\C5
USE ieee.std_logic_1164.ALL;

entity vdd is
	port(Y : out STD_LOGIC);
end vdd;

architecture model of vdd is
begin
Y <= '1';
end model;
--***********************************************************************************
LIBRARY ieee;                                      --\C7\C5\CC\CB\DF
USE ieee.std_logic_1164.ALL;

entity gnd is
	port(Y : out STD_LOGIC);
end gnd;
architecture model of gnd is
begin
Y <= '0';
end model;
--****************************** MODEL GD1 ******************************* 
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
 
ENTITY GD1 IS 
 
   port( 
	 A :	in    std_logic; 
	 S :	out   std_logic); 
end GD1; 
 
ARCHITECTURE model OF GD1 IS 
 
   begin 
 
------------------------- 
--  Functionality Section 
------------------------- 
    S <= A AFTER 50 nS; 
 
END model; 
-- END BEHAVE GD1 
-- ***********************************************************
--                            MODEL FDC1B0                      
-- *********************************************************** 
LIBRARY ieee; 
USE ieee.std_logic_1164.ALL; 
ENTITY FDC1B0 IS 
PORT( 
D, SN, C, RN :	in    std_logic; 
Q, QN :	out   std_logic);
END FDC1B0;
ARCHITECTURE model OF FDC1B0 IS   
	BEGIN
BEHAVIOR : PROCESS (SN, RN, D, C)
	BEGIN  
       IF  SN = '0' AND RN = '1' THEN  Q <= '1' AFTER 15 NS; QN <= '0' AFTER 10 NS;
       ELSIF RN = '0' AND SN = '1' THEN  QN <= '1' AFTER 10 NS; Q <= '0'AFTER 15 NS;
       ELSIF RN = '0' AND SN = '0' THEN Q <= '0'AFTER 15 NS; QN <= '0' AFTER 10 NS;
       ELSE IF (SN = '1' AND RN = '1') AND (C = '1' AND C'EVENT)  THEN   Q <= D AFTER 25 NS; QN <= NOT D  AFTER  20 NS; 
   
END IF; 
END IF;
END PROCESS;

END model; 
