import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticsElementaryPropertiesGroupsTheoremCanonicalLaneLean

structure GroupOperationsPackage where
  binaryOperationDefined : Prop
  identityUniqueness : Prop
  inverseUniqueness : Prop
  cancellationLaws : Prop

structure GroupOperationsEvidence (O : GroupOperationsPackage) where
  binaryOperationDefinedClosed : O.binaryOperationDefined
  identityUniquenessClosed : O.identityUniqueness
  inverseUniquenessClosed : O.inverseUniqueness
  cancellationLawsClosed : O.cancellationLaws

def GroupOperationsClosed (O : GroupOperationsPackage) : Prop :=
  O.binaryOperationDefined ∧ O.identityUniqueness ∧ O.inverseUniqueness ∧ O.cancellationLaws

theorem group_operations_closed_from_evidence (O : GroupOperationsPackage) (E : GroupOperationsEvidence O) : GroupOperationsClosed O := by
  exact And.intro E.binaryOperationDefinedClosed (And.intro E.identityUniquenessClosed (And.intro E.inverseUniquenessClosed E.cancellationLawsClosed))

end AxiomaticsElementaryPropertiesGroupsTheoremCanonicalLaneLean
end HautevilleHouse
