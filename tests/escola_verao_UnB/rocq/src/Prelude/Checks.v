(** This file sets configurations for the formalization. *)

(* This config guarantees that all subgoals are focused. *)
#[export] Set Default Goal Selector "!".

Definition TODO {A : Type } : A.
Admitted.
