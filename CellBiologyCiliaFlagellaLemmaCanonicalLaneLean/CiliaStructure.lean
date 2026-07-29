import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaLemmaCanonicalLaneLean

structure CiliaStructurePackage where
  axonemeType : Type u
  radialSpokes : Prop
  dyneinArms : Prop
  centralPair : Prop
  basalBody : Prop

def AxonemeClosed (C : CiliaStructurePackage) : Prop :=
  C.radialSpokes ∧ C.dyneinArms ∧ C.centralPair ∧ C.basalBody

end CellBiologyCiliaFlagellaLemmaCanonicalLaneLean
end HautevilleHouse