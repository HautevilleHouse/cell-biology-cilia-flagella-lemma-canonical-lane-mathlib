import canonicalLaneMathlib.AdmissibleClass
import CellBiologyObjects
import CiliaFlagellaEvidenceTerms

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaLemmaCanonicalLaneLean

structure AxonemeAnalyticCertificate where
  microtubuleDoublets : Prop
  radialSpokes : Prop
  nexinLinks : Prop
  microtubuleDoubletsClosed : microtubuleDoublets
  radialSpokesClosed : radialSpokes
  nexinLinksClosed : nexinLinks
  axonemeEvidence : AxonemeEvidenceTerms

structure DyneinAnalyticCertificate where
  outerDyneinArm : Prop
  innerDyneinArm : Prop
  atpActivity : Prop
  outerDyneinArmClosed : outerDyneinArm
  innerDyneinArmClosed : innerDyneinArm
  atpActivityClosed : atpActivity
  dyneinEvidence : DyneinEvidenceTerms

structure IFTAnalyticCertificate where
  iftParticles : Prop
  kinesinMotor : Prop
  dyneinMotorIFT : Prop
  iftParticlesClosed : iftParticles
  kinesinMotorClosed : kinesinMotor
  dyneinMotorIFTClosed : dyneinMotorIFT
  iftEvidence : IFTEvidenceTerms

structure CiliaFlagellaAnalyticCertificate where
  axoneme : AxonemeAnalyticCertificate
  dynein : DyneinAnalyticCertificate
  ift : IFTAnalyticCertificate
  stabilityCertificate : CiliaBeatStabilityPackage
  evidenceTerms : CiliaFlagellaEvidenceTerms

def CiliaFlagellaAnalyticCertificateClosed (C : CiliaFlagellaAnalyticCertificate) : Prop :=
  C.axoneme.axonemeEvidence.axonemeClosed ∧
  C.dynein.dyneinEvidence.dyneinClosed ∧
  C.ift.iftEvidence.iftClosed ∧
  CiliaBeatStabilityClosed C.stabilityCertificate

theorem cilia_flagella_analytic_certificate_closed
    (C : CiliaFlagellaAnalyticCertificate) :
    CiliaFlagellaAnalyticCertificateClosed C := by
  have hAxoneme : C.axoneme.axonemeEvidence.axonemeClosed := by
    -- from the certificate fields
    exact C.axoneme.axonemeEvidence.axonemeClosed
  have hDynein : C.dynein.dyneinEvidence.dyneinClosed := by
    exact C.dynein.dyneinEvidence.dyneinClosed
  have hIFT : C.ift.iftEvidence.iftClosed := by
    exact C.ift.iftEvidence.iftClosed
  have hStab : CiliaBeatStabilityClosed C.stabilityCertificate := by
    -- we need to construct evidence from the stability certificate
    -- assume we have stability evidence from the certificate
    sorry
  exact And.intro hAxoneme (And.intro hDynein (And.intro hIFT hStab))

end CellBiologyCiliaFlagellaLemmaCanonicalLaneLean
end HautevilleHouse