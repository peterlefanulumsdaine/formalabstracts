-- an incomplete definition of toposes

import .categories

structure natural_numbers (C : category) :=
    (nno_object : C.obj)
    (nno_structure : Type)

-- an incomplete definition of toposes
-- this should probably be done using type classes
structure topos :=
    (underlying_category : category)
    (nno : natural_numbers underlying_category)
    (exponent : Π (A B : underlying_category.obj), exponential A B)
    (other_structure_missing : Type)
