import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaLemmaCanonicalLaneLean

structure IFTRegulationPackage where
  iftTrainFreq : Prop
  kinesinMotor : Prop
  dyneinMotor : Prop
  cargoInterface : Prop
  turnaroundSignal : Prop

def IFTRegulationClosed (I : IFTRegulationPackage) : Prop :=
  I.iftTrainFreq ∧ I.kinesinMotor ∧ I.dyneinMotor ∧ I.cargoInterface ∧ I.turnaroundSignal

end CellBiologyCiliaFlagellaLemmaCanonicalLaneLean
end HautevilleHouse