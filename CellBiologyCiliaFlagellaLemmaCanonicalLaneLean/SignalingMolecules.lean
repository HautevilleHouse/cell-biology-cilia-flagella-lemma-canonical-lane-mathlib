import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCiliaFlagellaLemmaCanonicalLaneLean

structure SignalingMoleculesPackage where
  hedgehogLocalization : Prop
  wntLocalization : Prop
  gpr161Localization : Prop
  lipidModifications : Prop
  hedgehogLocalizationTerm : hedgehogLocalization
  wntLocalizationTerm : wntLocalization
  gpr161LocalizationTerm : gpr161Localization
  lipidModificationsTerm : lipidModifications

structure SignalingEvidence (S : SignalingMoleculesPackage) where
  hedgehogLocalizationClosed : S.hedgehogLocalization
  wntLocalizationClosed : S.wntLocalization
  gpr161LocalizationClosed : S.gpr161Localization
  lipidModificationsClosed : S.lipidModifications

def SignalingClosed (S : SignalingMoleculesPackage) : Prop :=
  S.hedgehogLocalization ∧ S.wntLocalization ∧ S.gpr161Localization ∧ S.lipidModifications

theorem signaling_closed_from_evidence (S : SignalingMoleculesPackage) (E : SignalingEvidence S) : SignalingClosed S := by
  exact And.intro E.hedgehogLocalizationClosed (And.intro E.wntLocalizationClosed (And.intro E.gpr161LocalizationClosed E.lipidModificationsClosed))

end CellBiologyCiliaFlagellaLemmaCanonicalLaneLean
end HautevilleHouse