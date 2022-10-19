library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity full_adder is
Port (A, B,C:in std_logic ; sum,carry:out std_logic );
end full_adder;

architecture full_adder_str of full_adder is
signal W1,W2,W3: std_logic ;

component XOR2
Port (A, B:in std_logic ; C:out std_logic );
end component;

component AND2
Port (A, B:in std_logic ; C:out std_logic );
end component;

component OR2
Port (A, B:in std_logic ; C:out std_logic );
end component;


begin
X1: XOR2 port map(A, B, W1);
X2: XOR2 port map(W1, C, Sum);
A1: AND2 port map(A, B, W3);
A2: XOR2 port map(W1, C, W2);
R1: OR2 port map(W2, W3, Carry);


end full_adder_str;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;


entity XOR2 is
Port (A, B:in std_logic ; C:out std_logic );
end XOR2;

architecture XORgate of XOR2 is
begin
 C<= A XOR B;
 end XORgate;
 
 
 library IEEE;
 use IEEE.STD_LOGIC_1164.ALL;
 use IEEE.STD_LOGIC_ARITH.ALL;
 
 
 entity AND2 is
 Port (A, B:in std_logic ; C:out std_logic );
 end AND2;
 
 architecture ANDgate of AND2 is
 begin
  C<= A AND B;
  end ANDgate;
  
  
  library IEEE;
  use IEEE.STD_LOGIC_1164.ALL;
  use IEEE.STD_LOGIC_ARITH.ALL;
  
  
  entity OR2 is
  Port (A, B:in std_logic ; C:out std_logic );
  end OR2;
  
  architecture ORgate of OR2 is
  begin
   C<= A OR B;
   end ORgate;
