import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaLemmaCanonicalLaneLean

structure AxonemeStructurePackage where
  ninePlusTwoArrangement : Prop
  radialSpokesPresent : Prop
  dyneinArmsPresent : Prop
  centralPairMicrotubules : Prop
  nexinLinksPresent : Prop

structure AxonemeStructureEvidence (A : AxonemeStructurePackage) where
  ninePlusTwoArrangementClosed : A.ninePlusTwoArrangement
  radialSpokesPresentClosed : A.radialSpokesPresent
  dyneinArmsPresentClosed : A.dyneinArmsPresent
  centralPairMicrotubulesClosed : A.centralPairMicrotubules
  nexinLinksPresentClosed : A.nexinLinksPresent

def AxonemeStructureClosed (A : AxonemeStructurePackage) : Prop :=
  A.ninePlusTwoArrangement ∧ A.radialSpokesPresent ∧ A.dyneinArmsPresent ∧
  A.centralPairMicrotubules ∧ A.nexinLinksPresent

theorem axoneme_structure_closed_from_evidence (A : AxonemeStructurePackage)
    (E : AxonemeStructureEvidence A) : AxonemeStructureClosed A := by
  exact And.intro E.ninePlusTwoArrangementClosed
    (And.intro E.radialSpokesPresentClosed
      (And.intro E.dyneinArmsPresentClosed
        (And.intro E.centralPairMicrotubulesClosed E.nexinLinksPresentClosed)))

end CellBiologyCiliaFlagellaLemmaCanonicalLaneLean
end HautevilleHouse