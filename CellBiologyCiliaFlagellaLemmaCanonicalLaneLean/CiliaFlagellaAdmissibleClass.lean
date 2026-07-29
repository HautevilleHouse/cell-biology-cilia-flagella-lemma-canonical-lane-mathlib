import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaLemmaCanonicalLaneLean

structure CiliaFlagellaAdmittedObject where
  cell : Type
  ciliumPresent : Prop
  axonemeStructureIntact : Prop
  axonemeStructureIntactTerm : axonemeStructureIntact

structure AdmissibleClass where
  object : CiliaFlagellaAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.axonemeStructureIntact ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyCiliaFlagellaLemmaCanonicalLaneLean
end HautevilleHouse