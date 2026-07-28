import AxiomaticsElementaryPropertiesGroupsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticsElementaryPropertiesGroupsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GroupWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.axioms

end AxiomaticsElementaryPropertiesGroupsTheoremCanonicalLaneLean
end HautevilleHouse