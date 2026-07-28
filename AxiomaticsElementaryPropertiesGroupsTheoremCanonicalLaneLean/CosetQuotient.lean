import AxiomaticsElementaryPropertiesGroupsTheoremCanonicalLaneLean.HomomorphismKernel

/-!
# Coset and Quotient Package
-/

namespace HautevilleHouse
namespace AxiomaticsElementaryPropertiesGroupsTheoremCanonicalLaneLean

structure CosetPackage {G : GroupAxiomsPackage} (H : Set G.carrier) (a : G.carrier) where
  coset : Set G.carrier := {x : G.carrier | ∃ h : G.carrier, h ∈ H ∧ G.mul a h = x}

structure QuotientGroupPackage {G : GroupAxiomsPackage}
    (N : SubgroupStructurePackage G) where
  quotient : Type u
  proj : G.carrier → quotient
  group_structure : GroupAxiomsPackage
  proj_mul : ∀ a b : G.carrier, proj (G.mul a b) = group_structure.mul (proj a) (proj b)

structure QuotientGroupEvidence {G : GroupAxiomsPackage}
    {N : SubgroupStructurePackage G} (Q : QuotientGroupPackage N) where
  proj_mul_closed : Q.proj_mul

def QuotientGroupClosed {G : GroupAxiomsPackage}
    {N : SubgroupStructurePackage G} (Q : QuotientGroupPackage N) : Prop :=
  Q.proj_mul

theorem quotient_group_closed_from_evidence
    {G : GroupAxiomsPackage} {N : SubgroupStructurePackage G}
    (Q : QuotientGroupPackage N) (E : QuotientGroupEvidence Q) :
    QuotientGroupClosed Q := by
  exact E.proj_mul_closed

end AxiomaticsElementaryPropertiesGroupsTheoremCanonicalLaneLean
end HautevilleHouse