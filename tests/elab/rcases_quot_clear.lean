/-! `rcases` on `Quot` should clear the original variable like inductives do (#12891). -/

/--
error: unsolved goals
case mk
x : Nat
⊢ True
-/
#guard_msgs in
example (x : Quot fun _ _ : Nat => True) : True := by
  rcases x with ⟨x⟩
