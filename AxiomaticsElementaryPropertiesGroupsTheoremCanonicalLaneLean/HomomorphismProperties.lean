import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticsElementaryPropertiesGroupsTheoremCanonicalLaneLean

structure HomomorphismPropertiesPackage where
  homomorphismDefined : Prop
  preservesOperation : Prop
  kernelIsSubgroup : Prop
  imageIsSubgroup : Prop
  firstIsomorphismTheorem : Prop

structure HomomorphismPropertiesEvidence (H : HomomorphismPropertiesPackage) where
  homomorphismDefinedClosed : H.homomorphismDefined
  preservesOperationClosed : H.preservesOperation
  kernelIsSubgroupClosed : H.kernelIsSubgroup
  imageIsSubgroupClosed : H.imageIsSubgroup
  firstIsomorphismTheoremClosed : H.firstIsomorphismTheorem

def HomomorphismPropertiesClosed (H : HomomorphismPropertiesPackage) : Prop :=
  H.homomorphismDefined ∧ H.preservesOperation ∧ H.kernelIsSubgroup ∧ H.imageIsSubgroup ∧ H.firstIsomorphismTheorem

theorem homomorphism_properties_closed_from_evidence (H : HomomorphismPropertiesPackage) (E : HomomorphismPropertiesEvidence H) : HomomorphismPropertiesClosed H := by
  exact And.intro E.homomorphismDefinedClosed (And.intro E.preservesOperationClosed (And.intro E.kernelIsSubgroupClosed (And.intro E.imageIsSubgroupClosed E.firstIsomorphismTheoremClosed)))

end AxiomaticsElementaryPropertiesGroupsTheoremCanonicalLaneLean
end HautevilleHouse
