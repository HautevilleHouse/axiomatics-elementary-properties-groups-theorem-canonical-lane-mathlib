import CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace AxiomaticsElementaryPropertiesGroupsTheoremCanonicalLaneLean

structure GroupCarrier where
  carrier : Type
  mul : carrier → carrier → carrier
  inv : carrier → carrier
  one : carrier

def associativity (G : GroupCarrier) : Prop :=
  ∀ a b c : G.carrier, G.mul (G.mul a b) c = G.mul a (G.mul b c)

def identity_law (G : GroupCarrier) : Prop :=
  (∀ a : G.carrier, G.mul G.one a = a) ∧ (∀ a : G.carrier, G.mul a G.one = a)

def inverse_law (G : GroupCarrier) : Prop :=
  ∀ a : G.carrier, G.mul a (G.inv a) = G.one ∧ G.mul (G.inv a) a = G.one

structure GroupAdmittedObject where
  group : GroupCarrier
  associativity_prop : associativity group
  identity_prop : identity_law group
  inverse_prop : inverse_law group
  conclusion : True

def GroupWitnessClosed (O : GroupAdmittedObject) : Prop :=
  True

end AxiomaticsElementaryPropertiesGroupsTheoremCanonicalLaneLean
end HautevilleHouse