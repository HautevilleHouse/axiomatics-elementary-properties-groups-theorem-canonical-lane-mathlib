import AxiomaticsElementaryPropertiesGroupsTheoremCanonicalLaneLean.GroupAxioms

namespace HautevilleHouse
namespace AxiomaticsElementaryPropertiesGroupsTheoremCanonicalLaneLean

structure ElementaryPropertiesPackage (G : GroupStructure) where
  identityUnique : Prop
  inverseUnique : Prop
  cancellationLeft : Prop
  cancellationRight : Prop
  identityUniqueProof : identityUnique
  inverseUniqueProof : inverseUnique
  cancellationLeftProof : cancellationLeft
  cancellationRightProof : cancellationRight

structure ElementaryPropertiesEvidence (G : GroupStructure) (P : ElementaryPropertiesPackage G) where
  identityUniqueClosed : P.identityUnique
  inverseUniqueClosed : P.inverseUnique
  cancellationLeftClosed : P.cancellationLeft
  cancellationRightClosed : P.cancellationRight

def ElementaryPropertiesClosed (G : GroupStructure) (P : ElementaryPropertiesPackage G) : Prop :=
  P.identityUnique ∧ P.inverseUnique ∧ P.cancellationLeft ∧ P.cancellationRight

theorem elementary_properties_closed_from_evidence (G : GroupStructure) (P : ElementaryPropertiesPackage G) (E : ElementaryPropertiesEvidence G P) : ElementaryPropertiesClosed G P := by
  exact And.intro E.identityUniqueClosed (And.intro E.inverseUniqueClosed (And.intro E.cancellationLeftClosed E.cancellationRightClosed))

end AxiomaticsElementaryPropertiesGroupsTheoremCanonicalLaneLean
end HautevilleHouse