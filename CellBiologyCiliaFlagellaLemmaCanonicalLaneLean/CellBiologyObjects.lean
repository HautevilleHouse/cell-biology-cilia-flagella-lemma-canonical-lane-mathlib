import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaLemmaCanonicalLaneLean

structure CiliaFlagellaCell where
  cellType : Type
  hasCilia : Prop
  hasFlagella : Prop
  beatPattern : Type
  waveform : Type

default

structure CiliaFlagellaObject where
  cell : CiliaFlagellaCell
  lemmaConclusion : Prop
  conclusion : lemmaConclusion

def CiliaFlagellaWitnessClosed (O : CiliaFlagellaObject) : Prop :=
  O.lemmaConclusion

end CellBiologyCiliaFlagellaLemmaCanonicalLaneLean
end HautevilleHouse