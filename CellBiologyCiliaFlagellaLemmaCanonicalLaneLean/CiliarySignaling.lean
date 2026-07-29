import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaLemmaCanonicalLaneLean

structure CiliarySignalingPackage where
  hedgehogPathway : Prop
  wntPathway : Prop
  pdgfReceptor : Prop
  mechanosensation : Prop
  calciumSignaling : Prop

def CiliarySignalingClosed (S : CiliarySignalingPackage) : Prop :=
  S.hedgehogPathway ∧ S.wntPathway ∧ S.pdgfReceptor ∧ S.mechanosensation ∧ S.calciumSignaling

end CellBiologyCiliaFlagellaLemmaCanonicalLaneLean
end HautevilleHouse