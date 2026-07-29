import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaLemmaCanonicalLaneLean

structure CiliopathySignalingPackage where
  hedgehogPathway : Prop
  wntPathway : Prop
  pdgfReceptor : Prop
  mechanosensation : Prop
  ciliopathyDefects : Prop

def CiliopathySignalingClosed (S : CiliopathySignalingPackage) : Prop :=
  S.hedgehogPathway ∧ S.wntPathway ∧ S.pdgfReceptor ∧ S.mechanosensation ∧ S.ciliopathyDefects

end CellBiologyCiliaFlagellaLemmaCanonicalLaneLean
end HautevilleHouse