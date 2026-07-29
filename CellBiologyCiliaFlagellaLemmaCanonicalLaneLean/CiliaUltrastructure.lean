import CellBiologyCiliaFlagellaLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaLemmaCanonicalLaneLean

structure CiliaUltrastructurePackage where
  microtubuleDoublets : Prop
  dyneinArms : Prop
  radialSpokes : Prop
  centralPair : Prop

structure CiliaUltrastructureEvidence (C : CiliaUltrastructurePackage) where
  microtubuleDoubletsClosed : C.microtubuleDoublets
  dyneinArmsClosed : C.dyneinArms
  radialSpokesClosed : C.radialSpokes
  centralPairClosed : C.centralPair

def CiliaUltrastructureClosed (C : CiliaUltrastructurePackage) : Prop :=
  C.microtubuleDoublets ∧ C.dyneinArms ∧ C.radialSpokes ∧ C.centralPair

theorem cilia_ultrastructure_closed_from_evidence
    (C : CiliaUltrastructurePackage) (E : CiliaUltrastructureEvidence C) :
    CiliaUltrastructureClosed C := by
  exact And.intro E.microtubuleDoubletsClosed
    (And.intro E.dyneinArmsClosed
      (And.intro E.radialSpokesClosed E.centralPairClosed))

end CellBiologyCiliaFlagellaLemmaCanonicalLaneLean
end HautevilleHouse