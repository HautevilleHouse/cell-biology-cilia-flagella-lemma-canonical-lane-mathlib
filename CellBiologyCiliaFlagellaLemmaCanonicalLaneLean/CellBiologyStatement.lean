import canonicalLaneMathlib.AdmissibleClass
import CellBiologyObjects

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaLemmaCanonicalLaneLean

structure CiliaFlagellaStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  cellConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

deriving Repr, DecidableEq

def sourceTheoremStatement : CiliaFlagellaStatement := {
  sourceKey := "cilia-flagella-lemma-canonical-lane",
  theoremName := "CiliaFlagellaLemma",
  theoremObject := "Cilia and Flagella Beat Regulation",
  classicalBoundary := "source boundary carried by theoremBoundaryOpen",
  cellConstrainedStatement := "cilia-flagella constrained theorem certificate internalized through baseline gates",
  certificateLane := "cell_constrained",
  carriedRemainder := "classical source boundary carried"
}

end CellBiologyCiliaFlagellaLemmaCanonicalLaneLean
end HautevilleHouse