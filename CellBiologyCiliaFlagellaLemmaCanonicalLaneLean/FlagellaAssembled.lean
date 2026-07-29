import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaLemmaCanonicalLaneLean

structure FlagellaAssembledPackage where
  intraflagellarTransport : Prop
  tubulinModifications : Prop
  lengthControl : Prop
  motilityCapacity : Prop

def FlagellaAssembledClosed (F : FlagellaAssembledPackage) : Prop :=
  F.intraflagellarTransport ∧ F.tubulinModifications ∧ F.lengthControl ∧ F.motilityCapacity

end CellBiologyCiliaFlagellaLemmaCanonicalLaneLean
end HautevilleHouse