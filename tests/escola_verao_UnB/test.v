Inductive nat : Type := 
	| z : nat
	| suc : nat -> nat .

Check nat .

Fixpoint add (x y : nat): nat :=
	match x with
	| z => y
	| suc (x') => suc (add x' y) 
end .

Compute (add (suc (suc z)) (suc z)).

Lemma add_z_l :
	forall (y: nat), add z y = y.
	Proof.
		intro y.
		simpl.
		reflexivity.
	Qed.

Lemma add_z_r :
	forall (x: nat), add x z = x.
	Proof.
		intro x.
		induction x.
		- simpl. reflexivity.
		- simpl. rewrite IHx. reflexivity.
	Qed.   
		


Fixpoint mult (x y: nat): nat :=
	match x with
	| z => z
	| suc (x') => 
end .


