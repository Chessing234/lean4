/-! Re-deriving `SizeOf` should error cleanly instead of kernel collisions (#9455). -/

structure Foo where
  x : Nat

/--
error: cannot derive `SizeOf` for `Foo`: an instance has already been generated automatically
-/
#guard_msgs in
deriving instance SizeOf for Foo

inductive Enum where
  | a | b

/--
error: cannot derive `SizeOf` for `Enum`: an instance has already been generated automatically
-/
#guard_msgs in
deriving instance SizeOf for Enum
