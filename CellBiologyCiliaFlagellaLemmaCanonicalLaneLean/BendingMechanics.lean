import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaLemmaCanonicalLaneLean

structure BendingMechanicsPackage where
  shearAngle : ℝ
  dyneinActivation : Prop
  elasticRestoringForce : Prop
  beatPattern : Prop
  dyneinActivationTerm : dyneinActivation
  elasticRestoringForceTerm : elasticRestoringForce
  beatPatternTerm : beatPattern

structure BendingEvidence (B : BendingMechanicsPackage) where
  shearAngleClosed : B.shearAngle ∈ Set.Ioo (-π) π
  dyneinActivationClosed : B.dyneinActivation
  elasticRestoringForceClosed : B.elasticRestoringForce
  beatPatternClosed : B.beatPattern

def BendingClosed (B : BendingMechanicsPackage) : Prop :=
  B.shearAngle ∈ Set.Ioo (-π) π ∧ B.dyneinActivation ∧ B.elasticRestoringForce ∧ B.beatPattern

theorem bending_closed_from_evidence (B : BendingMechanicsPackage) (E : BendingEvidence B) : BendingClosed B := by
  exact And.intro E.shearAngleClosed (And.intro E.dyneinActivationClosed (And.intro E.elasticRestoringForceClosed E.beatPatternClosed))

end CellBiologyCiliaFlagellaLemmaCanonicalLaneLean
end HautevilleHouse