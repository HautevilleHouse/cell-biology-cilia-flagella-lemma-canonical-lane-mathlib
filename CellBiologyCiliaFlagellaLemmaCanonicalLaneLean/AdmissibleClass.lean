import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaLemmaCanonicalLaneLean

structure CiliaFlagellaAdmittedObject where
  cellType : Type
  ciliaPresent : Prop
  flagellaPresent : Prop
  motilityObserved : Prop
  conclusion : motilityObserved

structure AdmissibleClass where
  object : CiliaFlagellaAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyCiliaFlagellaLemmaCanonicalLaneLean
end HautevilleHouse