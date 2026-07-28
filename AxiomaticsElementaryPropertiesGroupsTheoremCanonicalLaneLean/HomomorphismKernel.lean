import AxiomaticsElementaryPropertiesGroupsTheoremCanonicalLaneLean.SubgroupStructure

/-!
# Homomorphism and Kernel Package
-/

namespace HautevilleHouse
namespace AxiomaticsElementaryPropertiesGroupsTheoremCanonicalLaneLean

structure HomomorphismPackage {G H : GroupAxiomsPackage} where
  fun : G.carrier → H.carrier
  preserves_mul : ∀ a b : G.carrier, fun (G.mul a b) = H.mul (fun a) (fun b)
  kernel : Set G.carrier := {x : G.carrier | fun x = H.one}

structure HomomorphismEvidence {G H : GroupAxiomsPackage}
    (φ : HomomorphismPackage G H) where
  preserves_mul_closed : φ.preserves_mul

def HomomorphismClosed {G H : GroupAxiomsPackage}
    (φ : HomomorphismPackage G H) : Prop :=
  φ.preserves_mul

theorem homomorphism_closed_from_evidence
    {G H : GroupAxiomsPackage} (φ : HomomorphismPackage G H)
    (E : HomomorphismEvidence φ) : HomomorphismClosed φ := by
  exact E.preserves_mul_closed

structure KernelSubgroupPackage {G H : GroupAxiomsPackage}
    (φ : HomomorphismPackage G H) extends SubgroupStructurePackage G where
  kernel_eq : {x : G.carrier | φ.fun x = H.one} = subgroup

structure KernelSubgroupEvidence {G H : GroupAxiomsPackage}
    {φ : HomomorphismPackage G H} (K : KernelSubgroupPackage φ) where
  kernel_eq_closed : K.kernel_eq

def KernelSubgroupClosed {G H : GroupAxiomsPackage}
    {φ : HomomorphismPackage G H} (K : KernelSubgroupPackage φ) : Prop :=
  K.kernel_eq

theorem kernel_subgroup_closed_from_evidence
    {G H : GroupAxiomsPackage} {φ : HomomorphismPackage G H}
    (K : KernelSubgroupPackage φ) (E : KernelSubgroupEvidence K) :
    KernelSubgroupClosed K := by
  exact E.kernel_eq_closed

end AxiomaticsElementaryPropertiesGroupsTheoremCanonicalLaneLean
end HautevilleHouse