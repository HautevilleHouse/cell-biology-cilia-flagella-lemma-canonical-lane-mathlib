import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaLemmaCanonicalLaneLean

structure CiliaFlagellaAdmittedObject where
  cellModel : Type u
  flagellaStructurePresent : Prop
  motilityFunctional : Prop
  ciliumAssemblyPathway : Prop
  conclusion : flagellaStructurePresent ∧ motilityFunctional ∧ ciliumAssemblyPathway

def CiliaFlagellaWitnessClosed (O : CiliaFlagellaAdmittedObject) : Prop :=
  O.conclusion

end CellBiologyCiliaFlagellaLemmaCanonicalLaneLean
end HautevilleHouse