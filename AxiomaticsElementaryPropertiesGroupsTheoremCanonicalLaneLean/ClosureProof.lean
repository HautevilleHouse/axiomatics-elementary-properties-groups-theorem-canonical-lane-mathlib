import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticsElementaryPropertiesGroupsTheoremCanonicalLaneLean

structure ElementaryPropertiesCertificate (P : ElementaryPropertiesPackage) where
  associativityProof : Prop
  identityProof : Prop
  inverseProof : Prop
  closureProof : Prop
  homomorphismProof : Prop
  associativityProofClosed : associativityProof
  identityProofClosed : identityProof
  inverseProofClosed : inverseProof
  closureProofClosed : closureProof
  homomorphismProofClosed : homomorphismProof

def ElementaryPropertiesCertificateClosed (C : ElementaryPropertiesCertificate P) : Prop :=
  C.associativityProof ∧ C.identityProof ∧ C.inverseProof ∧ C.closureProof ∧ C.homomorphismProof

theorem elementary_properties_certificate_closed
    (C : ElementaryPropertiesCertificate P) :
    ElementaryPropertiesCertificateClosed C := by
  exact And.intro C.associativityProofClosed
    (And.intro C.identityProofClosed
      (And.intro C.inverseProofClosed
        (And.intro C.closureProofClosed C.homomorphismProofClosed)))

end AxiomaticsElementaryPropertiesGroupsTheoremCanonicalLaneLean
end HautevilleHouse