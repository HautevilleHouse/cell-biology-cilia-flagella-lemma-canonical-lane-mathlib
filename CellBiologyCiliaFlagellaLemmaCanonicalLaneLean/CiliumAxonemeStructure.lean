import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaLemmaCanonicalLaneLean

structure AxonemePackage where
  microtubuleDoublets : Nat
  centralPair : Prop
  radialSpokes : Prop
  dyneinArms : Prop
  nexinLinks : Prop
  microtubuleDoubletsTerm : microtubuleDoublets = 9
  centralPairTerm : centralPair
  radialSpokesTerm : radialSpokes
  dyneinArmsTerm : dyneinArms
  nexinLinksTerm : nexinLinks

structure AxonemeEvidence (A : AxonemePackage) where
  microtubuleDoubletsClosed : A.microtubuleDoublets = 9
  centralPairClosed : A.centralPair
  radialSpokesClosed : A.radialSpokes
  dyneinArmsClosed : A.dyneinArms
  nexinLinksClosed : A.nexinLinks

def AxonemeClosed (A : AxonemePackage) : Prop :=
  A.microtubuleDoublets = 9 ∧ A.centralPair ∧ A.radialSpokes ∧ A.dyneinArms ∧ A.nexinLinks

theorem axoneme_closed_from_evidence (A : AxonemePackage) (E : AxonemeEvidence A) : AxonemeClosed A := by
  exact And.intro E.microtubuleDoubletsClosed (And.intro E.centralPairClosed (And.intro E.radialSpokesClosed (And.intro E.dyneinArmsClosed E.nexinLinksClosed)))

end CellBiologyCiliaFlagellaLemmaCanonicalLaneLean
end HautevilleHouse