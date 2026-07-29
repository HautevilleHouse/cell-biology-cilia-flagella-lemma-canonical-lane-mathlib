import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCiliaFlagellaLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaLemmaCanonicalLaneLean

structure IntraflagellarTransportPackage where
  anterogradeTransport : Prop
  retrogradeTransport : Prop
  cargoBinding : Prop
  kinesinMotor : Prop
  dyneinMotor : Prop
  turnoverRegulation : Prop

structure IntraflagellarTransportEvidence (T : IntraflagellarTransportPackage) where
  anterogradeTransportClosed : T.anterogradeTransport
  retrogradeTransportClosed : T.retrogradeTransport
  cargoBindingClosed : T.cargoBinding
  kinesinMotorClosed : T.kinesinMotor
  dyneinMotorClosed : T.dyneinMotor
  turnoverRegulationClosed : T.turnoverRegulation

def IntraflagellarTransportClosed (T : IntraflagellarTransportPackage) : Prop :=
  T.anterogradeTransport ∧ T.retrogradeTransport ∧ T.cargoBinding ∧
  T.kinesinMotor ∧ T.dyneinMotor ∧ T.turnoverRegulation

theorem intraflagellar_transport_closed_from_evidence (T : IntraflagellarTransportPackage) (E : IntraflagellarTransportEvidence T) :
    IntraflagellarTransportClosed T := by
  exact And.intro E.anterogradeTransportClosed
    (And.intro E.retrogradeTransportClosed
      (And.intro E.cargoBindingClosed
        (And.intro E.kinesinMotorClosed
          (And.intro E.dyneinMotorClosed E.turnoverRegulationClosed))))

end CellBiologyCiliaFlagellaLemmaCanonicalLaneLean
end HautevilleHouse