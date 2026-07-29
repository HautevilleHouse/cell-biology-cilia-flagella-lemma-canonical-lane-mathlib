import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCiliaFlagellaLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaLemmaCanonicalLaneLean

structure FlagellarMotionPackage where
  bendingWavePattern : Prop
  dyneinRegulation : Prop
  slidingMicrotubuleMechanism : Prop
  beatFrequency : Prop
  directionControl : Prop

structure FlagellarMotionEvidence (M : FlagellarMotionPackage) where
  bendingWavePatternClosed : M.bendingWavePattern
  dyneinRegulationClosed : M.dyneinRegulation
  slidingMicrotubuleMechanismClosed : M.slidingMicrotubuleMechanism
  beatFrequencyClosed : M.beatFrequency
  directionControlClosed : M.directionControl

def FlagellarMotionClosed (M : FlagellarMotionPackage) : Prop :=
  M.bendingWavePattern ∧ M.dyneinRegulation ∧ M.slidingMicrotubuleMechanism ∧
  M.beatFrequency ∧ M.directionControl

theorem flagellar_motion_closed_from_evidence (M : FlagellarMotionPackage) (E : FlagellarMotionEvidence M) :
    FlagellarMotionClosed M := by
  exact And.intro E.bendingWavePatternClosed
    (And.intro E.dyneinRegulationClosed
      (And.intro E.slidingMicrotubuleMechanismClosed
        (And.intro E.beatFrequencyClosed E.directionControlClosed)))

end CellBiologyCiliaFlagellaLemmaCanonicalLaneLean
end HautevilleHouse