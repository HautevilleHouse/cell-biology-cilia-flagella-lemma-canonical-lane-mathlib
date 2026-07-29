import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaLemmaCanonicalLaneLean

structure DyneinMotorProtein where
  heavyChainType : String
  atpaseActive : Prop
  microtubuleBindingDomain : Prop
  forceGenerationCycle : Prop
  coordinatedRegulation : Prop

def dyneinMotorClosed (D : DyneinMotorProtein) : Prop :=
  D.atpaseActive ∧ D.microtubuleBindingDomain ∧ D.forceGenerationCycle ∧ D.coordinatedRegulation

structure DyneinRegulatoryComplex where
  nexinLinkMediation : Prop
  radialSpokeControl : Prop
  calciumSensitivity : Prop
  mechanicalFeedback : Prop

def dyneinRegulatoryClosed (R : DyneinRegulatoryComplex) : Prop :=
  R.nexinLinkMediation ∧ R.radialSpokeControl ∧ R.calciumSensitivity ∧ R.mechanicalFeedback

end CellBiologyCiliaFlagellaLemmaCanonicalLaneLean
end HautevilleHouse
