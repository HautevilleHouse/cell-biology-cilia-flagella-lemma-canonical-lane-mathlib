import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaLemmaCanonicalLaneLean

structure FlagellaBeatPatternPackage where
  asymmetricBeat : Prop
  symmetricBeat : Prop
  frequencyControl : Prop
  waveformPropagation : Prop
  calciumModulation : Prop

def FlagellaBeatPatternClosed (B : FlagellaBeatPatternPackage) : Prop :=
  B.asymmetricBeat ∧ B.symmetricBeat ∧ B.frequencyControl ∧ B.waveformPropagation ∧ B.calciumModulation

end CellBiologyCiliaFlagellaLemmaCanonicalLaneLean
end HautevilleHouse