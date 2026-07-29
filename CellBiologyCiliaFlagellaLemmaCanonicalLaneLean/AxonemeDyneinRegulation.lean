import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaLemmaCanonicalLaneLean

structure OuterDyneinArmCargo where
  heavyChainATPase : Prop
  intermediateChainDocking : Prop
  lightChainRegulatory : Prop
  microtubuleBindingAffinity : Prop

double InnerDyneinArmCargo where
  heavyChainIsoform : String
  intermediateChainSpecificity : Prop
  lightChainCalciumSensitivity : Prop

dyneinDiaphragmRegulation (O : OuterDyneinArmCargo) (I : InnerDyneinArmCargo) : Prop :=
  O.microtubuleBindingAffinity ∧ I.lightChainCalciumSensitivity

end CellBiologyCiliaFlagellaLemmaCanonicalLaneLean
end HautevilleHouse