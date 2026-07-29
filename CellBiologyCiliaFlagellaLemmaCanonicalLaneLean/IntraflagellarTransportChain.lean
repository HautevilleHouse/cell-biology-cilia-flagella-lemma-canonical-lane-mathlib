import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaLemmaCanonicalLaneLean

structure IFTComplex where
  IFTAComplexPresent : Prop
  IFTBComplexPresent : Prop
  kinesinIIMotor : Prop
  dyneinIIMotor : Prop
  cargoBindingDomain : Prop
  diffusionBarrier : Prop

def IFTTransportCycleClosed (I : IFTComplex) : Prop :=
  I.IFTAComplexPresent ∧ I.IFTBComplexPresent ∧ I.kinesinIIMotor ∧
  I.dyneinIIMotor ∧ I.cargoBindingDomain ∧ I.diffusionBarrier

end CellBiologyCiliaFlagellaLemmaCanonicalLaneLean
end HautevilleHouse