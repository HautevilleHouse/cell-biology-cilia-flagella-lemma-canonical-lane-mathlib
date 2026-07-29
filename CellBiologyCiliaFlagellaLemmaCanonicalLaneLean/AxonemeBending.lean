import CellBiologyCiliaFlagellaLemmaCanonicalLaneLean.DyneinMotor

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaLemmaCanonicalLaneLean

structure AxonemeBendingPackage (A : AdmissibleClass) (M : MicrotubuleStructurePackage A) (D : DyneinMotorPackage A M) where
  regulatedBending : Prop
  bendPropagation : Prop
  curvatureControl : Prop
  periodicBeating : Prop
  regulatedBendingClosed : regulatedBending
  bendPropagationClosed : bendPropagation
  curvatureControlClosed : curvatureControl
  periodicBeatingClosed : periodicBeating

def AxonemeBendingClosed (A : AdmissibleClass) (M : MicrotubuleStructurePackage A) (D : DyneinMotorPackage A M) (B : AxonemeBendingPackage A M D) : Prop :=
  B.regulatedBending ∧ B.bendPropagation ∧ B.curvatureControl ∧ B.periodicBeating

theorem axoneme_bending_closed_from_evidence (A : AdmissibleClass) (M : MicrotubuleStructurePackage A) (D : DyneinMotorPackage A M) (B : AxonemeBendingPackage A M D) :
    AxonemeBendingClosed A M D B := by
  exact And.intro B.regulatedBendingClosed
    (And.intro B.bendPropagationClosed
      (And.intro B.curvatureControlClosed B.periodicBeatingClosed))

end CellBiologyCiliaFlagellaLemmaCanonicalLaneLean
end HautevilleHouse
