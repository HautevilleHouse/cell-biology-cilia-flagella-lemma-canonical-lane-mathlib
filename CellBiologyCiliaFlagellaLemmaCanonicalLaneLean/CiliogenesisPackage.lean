import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCiliaFlagellaLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaLemmaCanonicalLaneLean

structure CiliogenesisPackage where
  basalBodyDocking : Prop
  ciliaryVesicleFormation : Prop
  axonemeExtension : Prop
  transitionZoneAssembly : Prop
  lengthControl : Prop
  disassembly : Prop

structure CiliogenesisEvidence (G : CiliogenesisPackage) where
  basalBodyDockingClosed : G.basalBodyDocking
  ciliaryVesicleFormationClosed : G.ciliaryVesicleFormation
  axonemeExtensionClosed : G.axonemeExtension
  transitionZoneAssemblyClosed : G.transitionZoneAssembly
  lengthControlClosed : G.lengthControl
  disassemblyClosed : G.disassembly

def CiliogenesisClosed (G : CiliogenesisPackage) : Prop :=
  G.basalBodyDocking ∧ G.ciliaryVesicleFormation ∧ G.axonemeExtension ∧
  G.transitionZoneAssembly ∧ G.lengthControl ∧ G.disassembly

theorem ciliogenesis_closed_from_evidence (G : CiliogenesisPackage) (E : CiliogenesisEvidence G) :
    CiliogenesisClosed G := by
  exact And.intro E.basalBodyDockingClosed
    (And.intro E.ciliaryVesicleFormationClosed
      (And.intro E.axonemeExtensionClosed
        (And.intro E.transitionZoneAssemblyClosed
          (And.intro E.lengthControlClosed E.disassemblyClosed))))

end CellBiologyCiliaFlagellaLemmaCanonicalLaneLean
end HautevilleHouse