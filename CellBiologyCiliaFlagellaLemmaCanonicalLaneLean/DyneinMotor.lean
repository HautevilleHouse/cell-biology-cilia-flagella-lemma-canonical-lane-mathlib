import CellBiologyCiliaFlagellaLemmaCanonicalLaneLean.MicrotubuleStructure

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaLemmaCanonicalLaneLean

structure DyneinMotorPackage (A : AdmissibleClass) (M : MicrotubuleStructurePackage A) where
  innerArmDynein : Prop
  outerArmDynein : Prop
  atpHydrolysis : Prop
  forceGeneration : Prop
  slidingMicrotubule : Prop
  innerArmDyneinClosed : innerArmDynein
  outerArmDyneinClosed : outerArmDynein
  atpHydrolysisClosed : atpHydrolysis
  forceGenerationClosed : forceGeneration
  slidingMicrotubuleClosed : slidingMicrotubule

def DyneinMotorClosed (A : AdmissibleClass) (M : MicrotubuleStructurePackage A) (D : DyneinMotorPackage A M) : Prop :=
  D.innerArmDynein ∧ D.outerArmDynein ∧ D.atpHydrolysis ∧ D.forceGeneration ∧ D.slidingMicrotubule

theorem dynein_motor_closed_from_evidence (A : AdmissibleClass) (M : MicrotubuleStructurePackage A) (D : DyneinMotorPackage A M) :
    DyneinMotorClosed A M D := by
  exact And.intro D.innerArmDyneinClosed
    (And.intro D.outerArmDyneinClosed
      (And.intro D.atpHydrolysisClosed
        (And.intro D.forceGenerationClosed D.slidingMicrotubuleClosed)))

end CellBiologyCiliaFlagellaLemmaCanonicalLaneLean
end HautevilleHouse
