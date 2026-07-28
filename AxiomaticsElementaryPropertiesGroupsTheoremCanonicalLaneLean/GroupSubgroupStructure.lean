import AxiomaticsElementaryPropertiesGroupsTheoremCanonicalLaneLean.GroupDefinitions

namespace HautevilleHouse
namespace AxiomaticsElementaryPropertiesGroupsTheoremCanonicalLaneLean

structure SubgroupPackage (G : GroupAdmittedObject) where
  subgroupCarrier : Set G.group.carrier
  closedUnderMul : ∀ a b, a ∈ subgroupCarrier → b ∈ subgroupCarrier → G.group.mul a b ∈ subgroupCarrier
  closedUnderInv : ∀ a, a ∈ subgroupCarrier → G.group.inv a ∈ subgroupCarrier
  containsOne : G.group.one ∈ subgroupCarrier

def SubgroupClosed (G : GroupAdmittedObject) (S : SubgroupPackage G) : Prop :=
  S.closedUnderMul ∧ S.closedUnderInv ∧ S.containsOne

structure NormalSubgroupPackage (G : GroupAdmittedObject) (S : SubgroupPackage G) where
  normalityCondition : ∀ (g : G.group.carrier) (h : G.group.carrier), 
    h ∈ S.subgroupCarrier → G.group.mul (G.group.mul g h) (G.group.inv g) ∈ S.subgroupCarrier

def NormalSubgroupClosed (G : GroupAdmittedObject) (S : SubgroupPackage G) (N : NormalSubgroupPackage G S) : Prop :=
  N.normalityCondition

structure QuotientGroupPackage (G : GroupAdmittedObject) (N : NormalSubgroupPackage G (h := ?_)) where
  quotientCarrier : Type
  quotientMul : quotientCarrier → quotientCarrier → quotientCarrier
  quotientGroupAxioms : Prop

def QuotientGroupClosed (G : GroupAdmittedObject) (N : NormalSubgroupPackage G (h := ?_)) (Q : QuotientGroupPackage G N) : Prop :=
  Q.quotientGroupAxioms

end AxiomaticsElementaryPropertiesGroupsTheoremCanonicalLaneLean
end HautevilleHouse