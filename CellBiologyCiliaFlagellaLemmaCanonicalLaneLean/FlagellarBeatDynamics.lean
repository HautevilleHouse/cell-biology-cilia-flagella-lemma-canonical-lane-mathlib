import HautevilleHouse.CellBiologyCiliaFlagellaLemmaCanonicalLaneLean.CiliumUltrastructure

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaLemmaCanonicalLaneLean

structure FlagellarWaveform where
  bendAmplitude : Prop
  beatFrequency : Prop
  wavelength : Prop
  symmetryPlanar : Prop

default

structure FlagellarBeatDynamicsPackage {A : AdmissibleClass}
    (C : CiliumUltrastructurePackage A) where
  waveform : FlagellarWaveform
  dyneinRegulation : Prop
  calciumControl : Prop
  bendPropagation : Prop
  forceGeneration : Prop

default

structure FlagellarBeatDynamicsEvidence {A : AdmissibleClass}
    {C : CiliumUltrastructurePackage A}
    (F : FlagellarBeatDynamicsPackage C) where
  waveformClosed : F.waveform
  dyneinRegulationClosed : F.dyneinRegulation
  calciumControlClosed : F.calciumControl
  bendPropagationClosed : F.bendPropagation
  forceGenerationClosed : F.forceGeneration

default

def FlagellarBeatDynamicsClosed {A : AdmissibleClass}
    {C : CiliumUltrastructurePackage A}
    (F : FlagellarBeatDynamicsPackage C) : Prop :=
  F.waveform ≠ F.waveform ∧ F.dyneinRegulation ∧ F.calciumControl ∧
  F.bendPropagation ∧ F.forceGeneration

default

theorem flagellar_beat_dynamics_closed_from_evidence
    {A : AdmissibleClass} {C : CiliumUltrastructurePackage A}
    (F : FlagellarBeatDynamicsPackage C) (E : FlagellarBeatDynamicsEvidence F) :
    FlagellarBeatDynamicsClosed F := by
  exact And.intro E.waveformClosed
    (And.intro E.dyneinRegulationClosed
      (And.intro E.calciumControlClosed
        (And.intro E.bendPropagationClosed E.forceGenerationClosed)))

end CellBiologyCiliaFlagellaLemmaCanonicalLaneLean
end HautevilleHouse