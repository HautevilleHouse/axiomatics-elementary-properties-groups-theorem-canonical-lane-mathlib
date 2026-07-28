import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticsElementaryPropertiesGroupsTheoremCanonicalLaneLean

structure ElementaryPropertiesPackage where
  associativityAxiom : Prop
  identityAxiom : Prop
  inverseAxiom : Prop
  closureUnderMultiplication : Prop
  homomorphismStructure : Prop

structure ElementaryPropertiesEvidence (P : ElementaryPropertiesPackage) where
  associativityAxiomClosed : P.associativityAxiom
  identityAxiomClosed : P.identityAxiom
  inverseAxiomClosed : P.inverseAxiom
  closureUnderMultiplicationClosed : P.closureUnderMultiplication
  homomorphismStructureClosed : P.homomorphismStructure

def ElementaryPropertiesClosed (P : ElementaryPropertiesPackage) : Prop :=
  P.associativityAxiom ∧ P.identityAxiom ∧ P.inverseAxiom ∧ P.closureUnderMultiplication ∧ P.homomorphismStructure

theorem elementary_properties_closed_from_evidence
    (P : ElementaryPropertiesPackage) (E : ElementaryPropertiesEvidence P) :
    ElementaryPropertiesClosed P := by
  exact And.intro E.associativityAxiomClosed
    (And.intro E.identityAxiomClosed
      (And.intro E.inverseAxiomClosed
        (And.intro E.closureUnderMultiplicationClosed E.homomorphismStructureClosed)))

end AxiomaticsElementaryPropertiesGroupsTheoremCanonicalLaneLean
end HautevilleHouse