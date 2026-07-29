import canonicalLaneMathlib.AdmissibleClass
import CellBiologyObjects
import StabilityEvidence

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaLemmaCanonicalLaneLean

structure AxonemeEvidenceTerms where
  microtubuleArrangement : Prop
  dyneinAttachment : Prop
  slidingMechanism : Prop
  axonemeClosed : Prop

structure DyneinEvidenceTerms where
  motorDomain : Prop
  atpBinding : Prop
  conformationalChange : Prop
  dyneinClosed : Prop

structure IFTEvidenceTerms where
  particleComposition : Prop
  bidirectionalTransport : Prop
  cargoBinding : Prop
  iftClosed : Prop

structure CiliaFlagellaEvidenceTerms where
  axoneme : AxonemeEvidenceTerms
  dynein : DyneinEvidenceTerms
  ift : IFTEvidenceTerms
  stability : CiliaBeatStabilityPackage
  allClosed : Prop

end CellBiologyCiliaFlagellaLemmaCanonicalLaneLean
end HautevilleHouse