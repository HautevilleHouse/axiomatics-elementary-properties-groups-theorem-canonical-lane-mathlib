import AxiomaticsElementaryPropertiesGroupsTheoremCanonicalLaneLean.ElementaryGroupProperties

namespace HautevilleHouse
namespace AxiomaticsElementaryPropertiesGroupsTheoremCanonicalLaneLean

structure GroupHomomorphism (G H : GroupStructure) where
  map : G.G → H.G
  preservesMul : ∀ a b : G.G, map (G.mul a b) = H.mul (map a) (map b)
  preservesOne : map G.one = H.one
  preservesInv : ∀ a : G.G, map (G.inv a) = H.inv (map a)

structure HomomorphismBridgePackage (G H : GroupStructure) (φ : GroupHomomorphism G H) where
  kernel : GroupStructure
  image : GroupStructure
  kernelInG : Prop
  imageInH : Prop
  homomorphismBridgeClosed : Prop

structure HomomorphismBridgeEvidence (G H : GroupStructure) (φ : GroupHomomorphism G H) (P : HomomorphismBridgePackage G H φ) where
  kernelInGClosed : P.kernelInG
  imageInHClosed : P.imageInH
  homomorphismBridgeClosedClosed : P.homomorphismBridgeClosed

def HomomorphismBridgeClosed (G H : GroupStructure) (φ : GroupHomomorphism G H) (P : HomomorphismBridgePackage G H φ) : Prop :=
  P.kernelInG ∧ P.imageInH ∧ P.homomorphismBridgeClosed

theorem homomorphism_bridge_closed_from_evidence (G H : GroupStructure) (φ : GroupHomomorphism G H) (P : HomomorphismBridgePackage G H φ) (E : HomomorphismBridgeEvidence G H φ P) : HomomorphismBridgeClosed G H φ P := by
  exact And.intro E.kernelInGClosed (And.intro E.imageInHClosed E.homomorphismBridgeClosedClosed)

end AxiomaticsElementaryPropertiesGroupsTheoremCanonicalLaneLean
end HautevilleHouse