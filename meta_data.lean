-- The type of results
inductive {u} result : Type (u+1)
| Proof : Π {P : Prop}, P → result
| Construction : Π {A : Type u}, A → result
| Conjecture : Prop → result

/-
TODO: This definition forces all the results in a particular fabstract
to lie in the same universe.
-/
-- Each formal abstract contains an instance of the meta_data structure,
-- describing the contents.
structure {u} meta_data : Type (u+1) :=
    (description : string) -- short description of the contents
    (authors : list string) -- list of authors
    (doi : list string) -- references to the original article
    (results : list (result.{u})) -- the list of main results
