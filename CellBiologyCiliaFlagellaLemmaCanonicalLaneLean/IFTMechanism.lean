import CellBiologyCiliaFlagellaLemmaCanonicalLaneLean.BendingMechanics

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaLemmaCanonicalLaneLean

structure IFTMechanismPackage {G : CiliaUltrastructurePackage}
    {B : BendingMechanicsPackage G} where
  anterogradeTransport : Prop
  retrogradeTransport : Prop
  IFTTrainFormation : Prop
  cargoDelivery : Prop

structure IFTMechanismEvidence {G : CiliaUltrastructurePackage}
    {B : BendingMechanicsPackage G} (I : IFTMechanismPackage B) where
  anterogradeTransportClosed : I.anterogradeTransport
  retrogradeTransportClosed : I.retrogradeTransport
  IFTTrainFormationClosed : I.IFTTrainFormation
  cargoDeliveryClosed : I.cargoDelivery

def IFTMechanismClosed {G : CiliaUltrastructurePackage}
    {B : BendingMechanicsPackage G} (I : IFTMechanismPackage B) : Prop :=
  I.anterogradeTransport ∧ I.retrogradeTransport ∧
  I.IFTTrainFormation ∧ I.cargoDelivery

theorem ift_mechanism_closed_from_evidence
    {G : CiliaUltrastructurePackage} {B : BendingMechanicsPackage G}
    (I : IFTMechanismPackage B) (E : IFTMechanismEvidence I) :
    IFTMechanismClosed I := by
  exact And.intro E.anterogradeTransportClosed
    (And.intro E.retrogradeTransportClosed
      (And.intro E.IFTTrainFormationClosed E.cargoDeliveryClosed))

end CellBiologyCiliaFlagellaLemmaCanonicalLaneLean
end HautevilleHouse