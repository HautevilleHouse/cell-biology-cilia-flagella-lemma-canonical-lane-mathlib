import CellBiologyCiliaFlagellaLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaLemmaCanonicalLaneLean

structure MicrotubuleStructurePackage (A : AdmissibleClass) where
  ninePlusTwoArrangement : Prop
  centralPairPresent : Prop
  outerDoubletsPresent : Prop
  radialSpokesPresent : Prop
  nexinLinksPresent : Prop
  ninePlusTwoArrangementClosed : ninePlusTwoArrangement
  centralPairPresentClosed : centralPairPresent
  outerDoubletsPresentClosed : outerDoubletsPresent
  radialSpokesPresentClosed : radialSpokesPresent
  nexinLinksPresentClosed : nexinLinksPresent

def MicrotubuleStructureClosed (A : AdmissibleClass) (M : MicrotubuleStructurePackage A) : Prop :=
  M.ninePlusTwoArrangement ∧ M.centralPairPresent ∧ M.outerDoubletsPresent ∧ M.radialSpokesPresent ∧ M.nexinLinksPresent

theorem microtubule_structure_closed_from_evidence (A : AdmissibleClass) (M : MicrotubuleStructurePackage A) :
    MicrotubuleStructureClosed A M := by
  exact And.intro M.ninePlusTwoArrangementClosed
    (And.intro M.centralPairPresentClosed
      (And.intro M.outerDoubletsPresentClosed
        (And.intro M.radialSpokesPresentClosed M.nexinLinksPresentClosed)))

end CellBiologyCiliaFlagellaLemmaCanonicalLaneLean
end HautevilleHouse
