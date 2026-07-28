import AxiomaticsElementaryPropertiesGroupsTheoremCanonicalLaneLean.GroupDefinitions

namespace HautevilleHouse
namespace AxiomaticsElementaryPropertiesGroupsTheoremCanonicalLaneLean

structure HomomorphismPackage (G H : GroupAdmittedObject) where
  map : G.group.carrier → H.group.carrier
  preservesMul : ∀ a b, map (G.group.mul a b) = H.group.mul (map a) (map b)
  preservesOne : map G.group.one = H.group.one

def HomomorphismClosed (G H : GroupAdmittedObject) (φ : HomomorphismPackage G H) : Prop :=
  φ.preservesMul ∧ φ.preservesOne

structure KernelPackage (G H : GroupAdmittedObject) (φ : HomomorphismPackage G H) where
  kernelCarrier : Set G.group.carrier
  kernelCondition : kernelCarrier = {x | φ.map x = H.group.one}

def KernelClosed (G H : GroupAdmittedObject) (φ : HomomorphismPackage G H) (K : KernelPackage G H φ) : Prop :=
  K.kernelCondition

structure ImagePackage (G H : GroupAdmittedObject) (φ : HomomorphismPackage G H) where
  imageCarrier : Set H.group.carrier
  imageCondition : imageCarrier = {y | ∃ x, φ.map x = y}

def ImageClosed (G H : GroupAdmittedObject) (φ : HomomorphismPackage G H) (I : ImagePackage G H φ) : Prop :=
  I.imageCondition

structure FirstIsomorphismTheoremPackage (G H : GroupAdmittedObject) (φ : HomomorphismPackage G H) 
  (K : KernelPackage G H φ) (I : ImagePackage G H φ) where
  isomorphismStatement : Prop

def FirstIsomorphismTheoremClosed (G H : GroupAdmittedObject) (φ : HomomorphismPackage G H) 
  (K : KernelPackage G H φ) (I : ImagePackage G H φ) (F : FirstIsomorphismTheoremPackage G H φ K I) : Prop :=
  F.isomorphismStatement

end AxiomaticsElementaryPropertiesGroupsTheoremCanonicalLaneLean
end HautevilleHouse