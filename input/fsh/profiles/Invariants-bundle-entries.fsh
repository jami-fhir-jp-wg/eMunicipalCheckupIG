/*
Invariant: bundle-entries-valid
Severity: #error
Description: "bundleリソースを構成するentryがすべて妥当なリソースインスタンスから構成されている"
Expression: 
*/
/*
* entry[patient].resource only JP_Patient_eMunicipalCheckup
* entry[practitionerRole].resource only JP_PractitionerRole_eMunicipalCheckup
* entry[organizationProvider].resource only JP_Organization_eMunicipalCheckup_Provider
* entry[practitioner].resource only JP_Practitioner_eMunicipalCheckup
* entry[encounter].resource only JP_Encounter_eMunicipalCheckup
* entry[coverage].resource only JP_Coverage_eMunicipalCheckup
* entry[organizationInsurer].resource only JP_Organization_eMunicipalCheckup_Insurer
* entry[observationGroup].resource only JP_Observation_eMunicipalCheckup_Group
* entry[observation].resource only JP_Observation_eMunicipalCheckup
* entry[specimen].resource only JP_Specimen_eMunicipalCheckup
* entry[diagnosticReport].resource only JP_DiagnosticReport_eMunicipalCheckup
* entry[media].resource only JP_Media_eMunicipalCheckup
* entry[documentReference].resource only JP_DocumentReference_eMunicipalCheckup
*/
/* entry contains
    composition 1..1 MS and 
    patient 1..1 MS and
    practitionerRole 1..1 MS and
    organizationProvider 1..1 MS and
    practitioner 1..1 MS and
    encounter 1..1 MS and
    coverage 0..1 MS and
    organizationInsurer 0..1 MS and
    observationGroup 0..* MS and
    observation 0..* MS and
    specimen 0..* MS and
    diagnosticReport 0..* MS and
    media 0..* MS and
    documentReference 0..* MS
*/

Invariant: bundle-entry0-JP-Composition-eMunicipalCheckup
Severity: #error
Description: "bundleリソースを構成するentry[0]がCompositionリソース(JP_Composition_eMunicipalCheckup)である。"
Expression: 
" (
    entry[0].resource.meta.profile[0]='JP_Composition_eMunicipalCheckup'
)"

Invariant: bundle-entry0-Composition
Severity: #error
Description: "bundleリソースを構成するentry[0]がCompositionリソース(Compostion)である。"
Expression: 
" (
    entry[0].where(resource is Composition ).exists()
)"


Invariant: bundle-entry1-JP-Patient-eMunicipalCheckup
Severity: #error
Description: "bundleリソースを構成するentry[1]がPatientリソース(JP_Patient_eMunicipalCheckup)である。"
Expression: 
 "(
    entry[1].resource.meta.profile[0]='JP_Patient_eMunicipalCheckup'
)"


Invariant: bundle-entry1-Patient
Severity: #error
Description: "bundleリソースを構成するentry[1]がPatientリソース(Patient)である。"
Expression: 
 "(
    entry[1].where(resource is Patient ).exists()
)"

/*
Invariant: bundle-entry1-PractitionerRole
Severity: #error
Description: "bundleリソースを構成するentry[2]がPractitionerRoleリソースである。"
Expression: 
 "(
    entry[2].where(resource is PractitionerRole ).exists()
)"

Invariant: bundle-entry1-PractitionerRole
Severity: #error
Description: "bundleリソースを構成するentry[1]がPractitionerRoleリソースである。"
Expression: 
 "(
    entry[3].where(resource is organizationProvider ).exists()
)"
*/
