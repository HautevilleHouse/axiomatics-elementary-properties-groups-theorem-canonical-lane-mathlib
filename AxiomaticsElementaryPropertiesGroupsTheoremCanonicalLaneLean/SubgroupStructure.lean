import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticsElementaryPropertiesGroupsTheoremCanonicalLaneLean

structure SubgroupStructurePackage where
  subgroupClosed : Prop
  subgroupContainsIdentity : Prop
  subgroupClosedUnderInverses : Prop
  subgroupClosedUnderOperation : Prop
  trivialSubgroup : Prop

structure SubgroupStructureEvidence (S : SubgroupStructurePackage) where
  subgroupClosed : S.subgroupClosed
  subgroupContainsIdentityClosed : S.subgroupContainsIdentity
  subgroupClosedUnderInversesClosed : S.subgroupClosedUnderInverses
  subgroupClosedUnderOperationClosed : S.subgroupClosedUnderOperation
  trivialSubgroupClosed : S.trivialSubgroup

def SubgroupStructureClosed (S : SubgroupStructurePackage) : Prop :=
  S.subgroupClosed ∧ S.subgroupContainsIdentity ∧ S.subgroupClosedUnderInverses ∧ S.subgroupClosedUnderOperation ∧ S.trivialSubgroup

theorem subgroup_structure_closed_from_evidence (S : SubgroupStructurePackage) (E : SubgroupStructureEvidence S) : SubgroupStructureClosed S := by
  exact And.intro E.subgroupClosed (And.intro E.subgroupContainsIdentityClosed (And.intro E.subgroupClosedUnderInversesClosed (And.intro E.subgroupClosedUnderOperationClosed E.trivialSubgroupClosed)))

end AxiomaticsElementaryPropertiesGroupsTheoremCanonicalLaneLean
end HautevilleHouse
