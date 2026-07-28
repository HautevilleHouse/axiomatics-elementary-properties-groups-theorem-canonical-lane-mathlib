namespace HautevilleHouse
namespace AxiomaticsElementaryPropertiesGroupsTheoremCanonicalLaneLean

structure GroupAxioms (carrier : Type) (op : carrier → carrier → carrier) : Prop where
  associativity : ∀ a b c : carrier, op (op a b) c = op a (op b c)
  identity : ∃ e : carrier, (∀ a : carrier, op e a = a) ∧ (∀ a : carrier, op a e = a)
  inverses : ∀ a : carrier, ∃ b : carrier, op a b = e ∧ op b a = e

structure GroupAdmittedObject where
  carrier : Type
  op : carrier → carrier → carrier
  axioms : GroupAxioms carrier op

structure AdmissibleClass where
  object : GroupAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def GroupWitnessClosed (O : GroupAdmittedObject) : Prop :=
  GroupAxioms O.carrier O.op

end AxiomaticsElementaryPropertiesGroupsTheoremCanonicalLaneLean
end HautevilleHouse