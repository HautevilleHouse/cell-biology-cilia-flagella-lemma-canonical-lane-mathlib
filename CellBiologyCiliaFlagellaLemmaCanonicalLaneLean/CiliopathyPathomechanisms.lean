import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaLemmaCanonicalLaneLean

structure CiliopathyPathomechanismsPackage where
  structuralDefects : Prop
  transportDefects : Prop
  signalingDefects : Prop
  geneticMutations : Prop
  phenotypicSpectrum : Prop

def CiliopathyPathomechanismsClosed (P : CiliopathyPathomechanismsPackage) : Prop :=
  P.structuralDefects ∧ P.transportDefects ∧ P.signalingDefects ∧ P.geneticMutations ∧ P.phenotypicSpectrum

end CellBiologyCiliaFlagellaLemmaCanonicalLaneLean
end HautevilleHouse