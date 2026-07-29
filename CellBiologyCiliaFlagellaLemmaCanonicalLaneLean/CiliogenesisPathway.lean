import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaLemmaCanonicalLaneLean

structure CiliogenesisCascade where
  basalBodyDocking : Prop
  transitionZoneFormation : Prop
  axonemeExtension : Prop
  membraneRemodeling : Prop
  ciliaryGateAssembly : Prop
  ttf_centrioleMaturation : Prop

def CiliogenesisClosed (C : CiliogenesisCascade) : Prop :=
  C.basalBodyDocking ∧ C.transitionZoneFormation ∧ C.axonemeExtension ∧
  C.membraneRemodeling ∧ C.ciliaryGateAssembly ∧ C.ttf_centrioleMaturation

end CellBiologyCiliaFlagellaLemmaCanonicalLaneLean
end HautevilleHouse