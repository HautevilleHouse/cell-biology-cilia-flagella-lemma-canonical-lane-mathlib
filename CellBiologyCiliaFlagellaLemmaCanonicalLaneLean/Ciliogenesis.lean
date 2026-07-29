import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaLemmaCanonicalLaneLean

structure CiliogenesisPackage where
  centrioleMigration : Prop
  ciliaryVesicleFormation : Prop
  axonemeElongation : Prop
  transitionZoneAssembly : Prop
  ciliaryMembraneFormation : Prop

def CiliogenesisClosed (C : CiliogenesisPackage) : Prop :=
  C.centrioleMigration ∧ C.ciliaryVesicleFormation ∧ C.axonemeElongation ∧ C.transitionZoneAssembly ∧ C.ciliaryMembraneFormation

end CellBiologyCiliaFlagellaLemmaCanonicalLaneLean
end HautevilleHouse