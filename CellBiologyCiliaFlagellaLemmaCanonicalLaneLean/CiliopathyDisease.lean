import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaLemmaCanonicalLaneLean

structure CiliopathyDiseasePackage where
  polycysticKidney : Prop
  retinitisPigmentosa : Prop
  bardetBiedl : Prop
  primaryCiliaryDyskinesia : Prop
  polycysticKidneyTerm : polycysticKidney
  retinitisPigmentosaTerm : retinitisPigmentosa
  bardetBiedlTerm : bardetBiedl
  primaryCiliaryDyskinesiaTerm : primaryCiliaryDyskinesia

structure CiliopathyEvidence (C : CiliopathyDiseasePackage) where
  polycysticKidneyClosed : C.polycysticKidney
  retinitisPigmentosaClosed : C.retinitisPigmentosa
  bardetBiedlClosed : C.bardetBiedl
  primaryCiliaryDyskinesiaClosed : C.primaryCiliaryDyskinesia

def CiliopathyClosed (C : CiliopathyDiseasePackage) : Prop :=
  C.polycysticKidney ∧ C.retinitisPigmentosa ∧ C.bardetBiedl ∧ C.primaryCiliaryDyskinesia

theorem ciliopathy_closed_from_evidence (C : CiliopathyDiseasePackage) (E : CiliopathyEvidence C) : CiliopathyClosed C := by
  exact And.intro E.polycysticKidneyClosed (And.intro E.retinitisPigmentosaClosed (And.intro E.bardetBiedlClosed E.primaryCiliaryDyskinesiaClosed))

end CellBiologyCiliaFlagellaLemmaCanonicalLaneLean
end HautevilleHouse