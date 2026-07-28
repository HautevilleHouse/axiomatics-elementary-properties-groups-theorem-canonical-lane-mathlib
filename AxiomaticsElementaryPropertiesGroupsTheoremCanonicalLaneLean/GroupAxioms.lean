import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticsElementaryPropertiesGroupsTheoremCanonicalLaneLean

structure GroupAxiomsPackage where
  closureUnderOperation : Prop
  associativity : Prop
  identityElement : Prop
  inverseElement : Prop

structure GroupAxiomsEvidence (G : GroupAxiomsPackage) where
  closureUnderOperationClosed : G.closureUnderOperation
  associativityClosed : G.associativity
  identityElementClosed : G.identityElement
  inverseElementClosed : G.inverseElement

def GroupAxiomsClosed (G : GroupAxiomsPackage) : Prop :=
  G.closureUnderOperation ∧ G.associativity ∧ G.identityElement ∧ G.inverseElement

theorem group_axioms_closed_from_evidence (G : GroupAxiomsPackage) (E : GroupAxiomsEvidence G) : GroupAxiomsClosed G := by
  exact And.intro E.closureUnderOperationClosed (And.intro E.associativityClosed (And.intro E.identityElementClosed E.inverseElementClosed))

end AxiomaticsElementaryPropertiesGroupsTheoremCanonicalLaneLean
end HautevilleHouse
