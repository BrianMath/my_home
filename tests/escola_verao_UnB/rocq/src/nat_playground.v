From Verao.Prelude Require Import Checks.

Module my_nat.
	Inductive nat : Type :=
		| Z : nat
		| S : nat -> nat.

	Fixpoint add (n m : nat) : nat :=
	match n with
		| Z => m
		| S n' => S (add n' m)
	end.

	Lemma add_Z_l :
		forall (m : nat), add Z m = m.
	Proof.
		intro m.
		simpl.
		reflexivity.
	Qed.

	Lemma add_Z_r :
		forall (n : nat), add n Z = n.
	Proof.
		intro n.
		induction n.
		- simpl. reflexivity.
		- simpl. rewrite IHn. reflexivity.
	Qed.

	Definition pred (n : nat) : nat.
	Proof.
		refine (
			match n with
			| Z => Z
			| S n' => _
			end
		).
		- exact n'.
	Qed.
	(* We will build this using the "refine" trick. *)

	Fixpoint mul (n1 n2 : nat) : nat :=
	match n1 with
	| Z => Z
	| S n' => add n2 (mul n' n2)
	end.

	Print mul.

End my_nat.

(** ######################################################################### *)
(** * Let us practice a bit with tactics *)
(** ######################################################################### *)

Lemma O_or_succ n :
  n = 0 \/ n = S (Nat.pred n).
Proof.
  destruct n as [ | n'].
  (** Make a case distinction.
	The variable [n] is of type [nat],
	  so it is either [O] or [S n'] for some [n'].
	The syntax [ as [|n'] ] is used to name the argument of the constructor [S].
	This results in two goals, which should be structured using bullets [-], [+], or [*]. *)
  - (** Case [n = 0] *)
	left. (** Introduce the disjunction by picking the left disjunct. *)
	reflexivity.
  - (** Case [n = S n'] *)
	right. (** Introduce the disjunction by picking the right disjunct. *)
	simpl. (** [pred (S n')] simplifies to [n']. *)
	reflexivity.
Qed.

(* General  *)
(* Lemma: For every n, n + 1 is not zero. *)
Lemma neq_succ_0 n :
  S n <> 0.
Admitted.

(* Lemma: If n ≠ 0 then n = n + 1 - 1. *)
(* Statement? *)

(* Lemma: If n + m = 0, then one of them must be 0. *)
(* Statement? *)

(* Lemma: A sum n + m = 0 iff n = 0 and m = 0. *)
(* Statement? *)

(* Lemma: n + 0 ≠ 0 iff m ≠ 0 or m ≠ 0 *)
(* Statement? *)

(* A bit more lemmas to practise induction. *)
(* Lemma: n + (n + 1) = 1 + (n + m) *)

(* Addition is associative. *)

(* Addition is commutative. *)

(* (n + m) + p + q = (m + n) + (p + q) *)

(* Addition is injective on the left. *)

(* Double is injective. *)

(** ######################################################################### *)
(** * Exercises about natural numbers *)
(** ######################################################################### *)

(** Prove the lemmas below. For each of the lemmas carefully take into account:

- Can you derive it from results you have proven already?
- If not, do you have to perform induction? If so, on which variable?

You are _not_ allowed to use the Rocq standard library or Rocq tactics that we
have not discussed for these proofs. You are allowed to use: [intros], [revert],
[split], [left], [right], [destruct], [induction], [assumption], [reflexivity],
[simpl], [unfold], [discriminate], [injection], [f_equal], [apply], and
[rewrite]. *)

(** IMPORTANT: You can "cheat" by finishing proofs with the [Admitted] command
instead of [Qed]. We do this for stating the exercises, and the idea is that you
finish the proofs and get rid of all occurrences of [Admitted]. *)

Lemma mul_0_inv n m :
  n * m = 0 -> n = 0 \/ m = 0.
Proof. (* FILL IN HERE *) Admitted.

Lemma mul_0_l n :
  0 * n = 0.
Proof. (* FILL IN HERE *) Admitted.

Lemma mul_0_r n :
  n * 0 = 0.
Proof. (* FILL IN HERE  *) Admitted.

Lemma add_swap n1 n2 n3 :
  n1 + (n2 + n3) = n2 + (n1 + n3).
Proof. (* FILL IN HERE *) Admitted.

Lemma mul_succ_r n1 n2 :
  n1 * S n2 = n1 + n1 * n2.
Proof. (* FILL IN HERE *) Admitted.

Lemma mul_1_l n : 1 * n = n.
Proof. (* FILL IN HERE  *) Admitted.

Lemma mul_1_r n : n * 1 = n.
Proof. (* FILL IN HERE *) Admitted.

Lemma mul_comm n1 n2 :
  n1 * n2 = n2 * n1.
Proof. (* FILL IN HERE *) Admitted.

Lemma mul_add_distr_r n1 n2 n3 :
  (n1 + n2) * n3 = n1 * n3 + n2 * n3.
Proof. (* FILL IN HERE *) Admitted.

Lemma mul_assoc n1 n2 n3 :
  n1 * (n2 * n3) = (n1 * n2) * n3.
Proof. (* FILL IN HERE *) Admitted.

Lemma add_inj_r n1 n2 n3 :
  n1 + n3 = n2 + n3 -> n1 = n2.
Proof. (* FILL IN HERE *) Admitted.

(** The following lemma is challenging. You need to generalize the induction
hypothesis (that is, use [revert]), and use a combination of previously proven
lemmas with both [apply] and [rewrite]. When performing a [rewrite], it is often
necessary to use [rewrite (lemma arg1 ...)] as we have demonstrated in the
proof of [add_rearrange] above. Similarly, it could be useful to use
[apply (lemma arg1 ...)].

IMPORTANT: If you get stuck, it is best to finish the other exercises below
first. *)

Lemma mul_add_same_inj n m p :
  n * (n + p) = m * (m + p) -> n = m.
Proof. (* FILL IN HERE *) Admitted.

(** Hint: Reuse. *)
Lemma square_inj n m :
  n * n = m * m -> n = m.
Proof. (* FILL IN HERE *) Admitted.
