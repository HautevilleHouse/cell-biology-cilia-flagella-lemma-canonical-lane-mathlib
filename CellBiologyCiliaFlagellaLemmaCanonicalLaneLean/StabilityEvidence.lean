import canonicalLaneMathlib.AdmissibleClass
import CellBiologyObjects

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaLemmaCanonicalLaneLean

structure CiliaBeatStabilityPackage where
  beatFrequencyStable : Prop
  waveformRobust : Prop
  perturbationTolerance : Prop

structure CiliaBeatStabilityEvidence (S : CiliaBeatStabilityPackage) where
  beatFrequencyStableClosed : S.beatFrequencyStable
  waveformRobustClosed : S.waveformRobust
  perturbationToleranceClosed : S.perturbationTolerance

def CiliaBeatStabilityClosed (S : CiliaBeatStabilityPackage) : Prop :=
  S.beatFrequencyStable ∧ S.waveformRobust ∧ S.perturbationTolerance

theorem cilia_beat_stability_closed_from_evidence
    (S : CiliaBeatStabilityPackage) (E : CiliaBeatStabilityEvidence S) :
    CiliaBeatStabilityClosed S := by
  exact And.intro E.beatFrequencyStableClosed
    (And.intro E.waveformRobustClosed E.perturbationToleranceClosed)

end CellBiologyCiliaFlagellaLemmaCanonicalLaneLean
end HautevilleHouse