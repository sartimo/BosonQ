module QASM
  imports INT
  imports BOOL

  syntax RegName ::= "q" Int
  syntax GateName ::= "x" | "y" | "z" | "h" | "s" | "t" | "rx" | "ry" | "rz" | "cz" | "measure"
  syntax Param ::= Int | Float

  syntax Gate ::= GateName "(" RegName ")" | GateName "(" Param ")" "(" RegName ")" [function]
  syntax Program ::= Gate*

  syntax Bit ::= "0" | "1"
  syntax Result ::= Bit | "x"

  syntax Output ::= "print" "(" String ")"
  syntax ClassicalCmd ::= "measure" RegName "->" RegName | Output

  syntax Cmd ::= Gate | ClassicalCmd
  syntax QuantumState ::= MapItem*
  syntax MapItem ::= RegName "↦" Result

  syntax KResult ::= QuantumState

  rule <k> X(q I) => X(I) ... </k>
  rule <k> Y(q I) => Y(I) ... </k>
  rule <k> Z(q I) => Z(I) ... </k>
  rule <k> H(q I) => H(I) ... </k>
  rule <k> S(q I) => S(I) ... </k>
  rule <k> T(q I) => T(I) ... </k>
  rule <k> RX(Int theta) (q I) => RX(theta) (I) ... </k>
  rule <k> RY(Int theta) (q I) => RY(theta) (I) ... </k>
  rule <k> RZ(Int theta) (q I) => RZ(theta) (I) ... </k>
  rule <k> CZ(q I, q J) => CZ(I, J) ... </k>
  rule <k> measure(q I) => measure(I) ... </k>
  rule <k> measure(q I) -> q J => I ↦ J </k>
  rule <k> print(String s) => . ... </k>

endmodule
