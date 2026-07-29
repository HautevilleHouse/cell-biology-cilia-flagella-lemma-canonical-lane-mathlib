import canonicalLaneMathlib.AdmissibleClass
import CellBiologyCiliaFlagellaLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.motilityObserved

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyCiliaFlagellaLemmaCanonicalLaneLean
end HautevilleHouse