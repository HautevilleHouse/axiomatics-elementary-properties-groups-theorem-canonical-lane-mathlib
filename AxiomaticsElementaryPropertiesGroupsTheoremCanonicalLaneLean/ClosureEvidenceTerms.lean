import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticsElementaryPropertiesGroupsTheoremCanonicalLaneLean

structure ClosureEvidenceTerms where
  groupAxiomsSatisfied : Prop
  bridgeClosedFromEvidence : Prop
  gateClosedFromEvidence : Prop
  groupAxiomsSatisfiedTerm : groupAxiomsSatisfied
  bridgeClosedFromEvidenceTerm : bridgeClosedFromEvidence
  gateClosedFromEvidenceTerm : gateClosedFromEvidence

def ClosureEvidenceTerms.allClosed (C : ClosureEvidenceTerms) : Prop :=
  C.groupAxiomsSatisfied ∧ C.bridgeClosedFromEvidence ∧ C.gateClosedFromEvidence

theorem closure_evidence_terms_all_closed (C : ClosureEvidenceTerms) :
    ClosureEvidenceTerms.allClosed C := by
  exact And.intro C.groupAxiomsSatisfiedTerm
    (And.intro C.bridgeClosedFromEvidenceTerm C.gateClosedFromEvidenceTerm)

end AxiomaticsElementaryPropertiesGroupsTheoremCanonicalLaneLean
end HautevilleHouse