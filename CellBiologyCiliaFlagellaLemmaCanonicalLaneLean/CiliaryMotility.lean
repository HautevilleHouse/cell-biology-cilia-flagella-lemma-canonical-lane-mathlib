import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaLemmaCanonicalLaneLean

structure CiliaryMotilityPackage where
  beatPatternGeneration : Prop
  dyneinCoordination : Prop
  nexinLinksElasticity : Prop
  fluidFlowCoupling : Prop
  chemotaxisResponse : Prop

def CiliaryMotilityClosed (M : CiliaryMotilityPackage) : Prop :=
  M.beatPatternGeneration ∧ M.dyneinCoordination ∧ M.nexinLinksElasticity ∧ M.fluidFlowCoupling ∧ M.chemotaxisResponse

end CellBiologyCiliaFlagellaLemmaCanonicalLaneLean
end HautevilleHouse