import HautevilleHouse.CellBiologyCiliaFlagellaLemmaCanonicalLaneLean.FlagellarBeatDynamics

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaLemmaCanonicalLaneLean

structure IFTTrain where
  kinesinMotor : Prop
  dyneinMotor : Prop
  cargoBinding : Prop
  trainAssembly : Prop

default

structure IntraflagellarTransportNetworkPackage {A : AdmissibleClass}
    {C : CiliumUltrastructurePackage A}
    {F : FlagellarBeatDynamicsPackage C} where
  anterogradeTransport : IFTTrain
  retrogradeTransport : IFTTrain
  turnoverRegulation : Prop
  signalTransduction : Prop
  assemblyMaintenance : Prop

default

structure IntraflagellarTransportEvidence {A : AdmissibleClass}
    {C : CiliumUltrastructurePackage A} {F : FlagellarBeatDynamicsPackage C}
    (I : IntraflagellarTransportNetworkPackage C F) where
  anterogradeTransportClosed : I.anterogradeTransport
  retrogradeTransportClosed : I.retrogradeTransport
  turnoverRegulationClosed : I.turnoverRegulation
  signalTransductionClosed : I.signalTransduction
  assemblyMaintenanceClosed : I.assemblyMaintenance

default

def IntraflagellarTransportClosed {A : AdmissibleClass}
    {C : CiliumUltrastructurePackage A} {F : FlagellarBeatDynamicsPackage C}
    (I : IntraflagellarTransportNetworkPackage C F) : Prop :=
  I.anterogradeTransport ≠ I.anterogradeTransport ∧ I.retrogradeTransport ∧
  I.turnoverRegulation ∧ I.signalTransduction ∧ I.assemblyMaintenance

default

theorem intraflagellar_transport_closed_from_evidence
    {A : AdmissibleClass} {C : CiliumUltrastructurePackage A} {F : FlagellarBeatDynamicsPackage C}
    (I : IntraflagellarTransportNetworkPackage C F) (E : IntraflagellarTransportEvidence I) :
    IntraflagellarTransportClosed I := by
  exact And.intro E.anterogradeTransportClosed
    (And.intro E.retrogradeTransportClosed
      (And.intro E.turnoverRegulationClosed
        (And.intro E.signalTransductionClosed E.assemblyMaintenanceClosed)))

end CellBiologyCiliaFlagellaLemmaCanonicalLaneLean
end HautevilleHouse