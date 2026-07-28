import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticsElementaryPropertiesGroupsTheoremCanonicalLaneLean

structure GroupActionsPackage where
  actionDefined : Prop
  identityAction : Prop
  compatibility : Prop
  orbitStabilizerTheorem : Prop

structure GroupActionsEvidence (A : GroupActionsPackage) where
  actionDefinedClosed : A.actionDefined
  identityActionClosed : A.identityAction
  compatibilityClosed : A.compatibility
  orbitStabilizerTheoremClosed : A.orbitStabilizerTheorem

def GroupActionsClosed (A : GroupActionsPackage) : Prop :=
  A.actionDefined ∧ A.identityAction ∧ A.compatibility ∧ A.orbitStabilizerTheorem

theorem group_actions_closed_from_evidence (A : GroupActionsPackage) (E : GroupActionsEvidence A) : GroupActionsClosed A := by
  exact And.intro E.actionDefinedClosed (And.intro E.identityActionClosed (And.intro E.compatibilityClosed E.orbitStabilizerTheoremClosed))

end AxiomaticsElementaryPropertiesGroupsTheoremCanonicalLaneLean
end HautevilleHouse
