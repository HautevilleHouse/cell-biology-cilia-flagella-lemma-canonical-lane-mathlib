import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaLemmaCanonicalLaneLean

structure AxonemeMicrotubuleDoublet where
  doubletNumber : Nat
  tubulinPolymer : Type
  dyneinArmAttached : Prop
  radialSpokeConnected : Prop
  nexinLinkPresent : Prop

def axonemeDoubletRingClosed (D : AxonemeMicrotubuleDoublet) : Prop :=
  D.dyneinArmAttached ∧ D.radialSpokeConnected ∧ D.nexinLinkPresent

structure AxonemeOrganization where
  doublets : List AxonemeMicrotubuleDoublet
  centralSheathPresent : Prop
  microtubuleArrangement9plus2 : Prop
  radialSpokeArrayDefined : Prop

def axonemeOrganizationClosed (O : AxonemeOrganization) : Prop :=
  O.centralSheathPresent ∧ O.microtubuleArrangement9plus2 ∧ O.radialSpokeArrayDefined

end CellBiologyCiliaFlagellaLemmaCanonicalLaneLean
end HautevilleHouse
