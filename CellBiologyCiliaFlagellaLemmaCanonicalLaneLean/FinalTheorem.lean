import canonicalLaneMathlib.AdmissibleClass
import CellBiologyCiliaFlagellaLemmaCanonicalLaneLean.AxonemeStructure
import CellBiologyCiliaFlagellaLemmaCanonicalLaneLean.DyneinMotorActivity
import CellBiologyCiliaFlagellaLemmaCanonicalLaneLean.CiliaryBeatPattern

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | AdmittedObject.axoneme org => axonemeOrganizationClosed org
  | AdmittedObject.dynein motor => dyneinMotorClosed motor
  | AdmittedObject.beat pattern => ciliaryBeatClosed pattern

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  rcases A with ⟨obj, _, _, _⟩
  rcases obj with (org | motor | pattern)
  · exact A.gateWitness
  · exact A.gateWitness
  · exact A.gateWitness

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedCiliaFlagellaClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cilia_flagella_endgame (A : AdmissibleClass) :
    ConstrainedCiliaFlagellaClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyCiliaFlagellaLemmaCanonicalLaneLean
end HautevilleHouse
