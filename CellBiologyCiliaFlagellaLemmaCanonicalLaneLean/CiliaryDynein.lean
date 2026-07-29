import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaLemmaCanonicalLaneLean

structure CiliaryDyneinPackage where
  heavyChain : Prop
  intermediateChain : Prop
  lightChain : Prop
  aTubulinBinding : Prop
  atpHydrolysis : Prop

def CiliaryDyneinClosed (D : CiliaryDyneinPackage) : Prop :=
  D.heavyChain ∧ D.intermediateChain ∧ D.lightChain ∧ D.aTubulinBinding ∧ D.atpHydrolysis

end CellBiologyCiliaFlagellaLemmaCanonicalLaneLean
end HautevilleHouse