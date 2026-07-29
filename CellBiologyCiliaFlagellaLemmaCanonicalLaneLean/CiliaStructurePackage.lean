import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCiliaFlagellaLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaLemmaCanonicalLaneLean

structure CiliaStructurePackage where
  axonemeMicrotubules : Prop
  ninePlusTwoArrangement : Prop
  dyneinArmsPresent : Prop
  radialSpokes : Prop
  basalBodyPresent : Prop
  transitionZone : Prop

structure CiliaStructureEvidence (C : CiliaStructurePackage) where
  axonemeMicrotubulesClosed : C.axonemeMicrotubules
  ninePlusTwoArrangementClosed : C.ninePlusTwoArrangement
  dyneinArmsPresentClosed : C.dyneinArmsPresent
  radialSpokesClosed : C.radialSpokes
  basalBodyPresentClosed : C.basalBodyPresent
  transitionZoneClosed : C.transitionZone

def CiliaStructureClosed (C : CiliaStructurePackage) : Prop :=
  C.axonemeMicrotubules ∧ C.ninePlusTwoArrangement ∧ C.dyneinArmsPresent ∧
  C.radialSpokes ∧ C.basalBodyPresent ∧ C.transitionZone

theorem cilia_structure_closed_from_evidence (C : CiliaStructurePackage) (E : CiliaStructureEvidence C) :
    CiliaStructureClosed C := by
  exact And.intro E.axonemeMicrotubulesClosed
    (And.intro E.ninePlusTwoArrangementClosed
      (And.intro E.dyneinArmsPresentClosed
        (And.intro E.radialSpokesClosed
          (And.intro E.basalBodyPresentClosed E.transitionZoneClosed))))

end CellBiologyCiliaFlagellaLemmaCanonicalLaneLean
end HautevilleHouse