import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaLemmaCanonicalLaneLean

structure IFTComplexPackage where
  IFTAList : List String
  IFTBList : List String
  cargoBinding : Prop
  motorProteins : Prop
  bindingAffinity : Prop
  cargoBindingTerm : cargoBinding
  motorProteinsTerm : motorProteins
  bindingAffinityTerm : bindingAffinity

structure IFTEvidence (I : IFTComplexPackage) where
  cargoBindingClosed : I.cargoBinding
  motorProteinsClosed : I.motorProteins
  bindingAffinityClosed : I.bindingAffinity

def IFTClosed (I : IFTComplexPackage) : Prop :=
  I.cargoBinding ∧ I.motorProteins ∧ I.bindingAffinity

theorem ift_closed_from_evidence (I : IFTComplexPackage) (E : IFTEvidence I) : IFTClosed I := by
  exact And.intro E.cargoBindingClosed (And.intro E.motorProteinsClosed E.bindingAffinityClosed)

end CellBiologyCiliaFlagellaLemmaCanonicalLaneLean
end HautevilleHouse