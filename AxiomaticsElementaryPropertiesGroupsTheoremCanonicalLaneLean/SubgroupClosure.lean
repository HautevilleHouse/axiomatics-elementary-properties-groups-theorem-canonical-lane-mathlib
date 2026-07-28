import AxiomaticsElementaryPropertiesGroupsTheoremCanonicalLaneLean.HomomorphismBridge

namespace HautevilleHouse
namespace AxiomaticsElementaryPropertiesGroupsTheoremCanonicalLaneLean

structure Subgroup (G : GroupStructure) where
  carrier : Set G.G
  containsOne : G.one ∈ carrier
  closedUnderMul : ∀ a b, a ∈ carrier → b ∈ carrier → G.mul a b ∈ carrier
  closedUnderInv : ∀ a, a ∈ carrier → G.inv a ∈ carrier

structure SubgroupClosurePackage (G : GroupStructure) (H : Subgroup G) where
  identityInSubgroup : Prop
  inverseInSubgroup : Prop
  cancellationInSubgroup : Prop
  subgroupBridgeClosed : Prop

structure SubgroupClosureEvidence (G : GroupStructure) (H : Subgroup G) (P : SubgroupClosurePackage G H) where
  identityInSubgroupClosed : P.identityInSubgroup
  inverseInSubgroupClosed : P.inverseInSubgroup
  cancellationInSubgroupClosed : P.cancellationInSubgroup
  subgroupBridgeClosedClosed : P.subgroupBridgeClosed

def SubgroupClosed (G : GroupStructure) (H : Subgroup G) (P : SubgroupClosurePackage G H) : Prop :=
  P.identityInSubgroup ∧ P.inverseInSubgroup ∧ P.cancellationInSubgroup ∧ P.subgroupBridgeClosed

theorem subgroup_closed_from_evidence (G : GroupStructure) (H : Subgroup G) (P : SubgroupClosurePackage G H) (E : SubgroupClosureEvidence G H P) : SubgroupClosed G H P := by
  exact And.intro E.identityInSubgroupClosed (And.intro E.inverseInSubgroupClosed (And.intro E.cancellationInSubgroupClosed E.subgroupBridgeClosedClosed))

end AxiomaticsElementaryPropertiesGroupsTheoremCanonicalLaneLean
end HautevilleHouse