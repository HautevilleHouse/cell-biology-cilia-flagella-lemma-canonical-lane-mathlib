import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaLemmaCanonicalLaneLean

structure MicrotubuleDoubletConfig where
  protofilamentCount : Nat
  microtubuleAInnerDiameter : ℕ
  microtubuleAOuterDiameter : ℕ
  microtubuleBPartialWall : Prop
  nexinLinkAttachment : Prop
  radialSpokePresent : Prop

def MicrotubuleDoubletClosed (M : MicrotubuleDoubletConfig) : Prop :=
  M.protofilamentCount = 13 ∧ M.microtubuleAInnerDiameter = 15 ∧
  M.microtubuleAOuterDiameter = 25 ∧ M.microtubuleBPartialWall ∧
  M.nexinLinkAttachment ∧ M.radialSpokePresent

end CellBiologyCiliaFlagellaLemmaCanonicalLaneLean
end HautevilleHouse