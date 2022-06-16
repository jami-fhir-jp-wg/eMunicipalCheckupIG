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

//--- bundleリソースを構成するentry[0]がCompositionリソース であり、JP_Composition_eMunicipalCheckup　プロファイルに準拠している。
Invariant: bundle-entry0-JP-Composition-eMunicipalCheckup
Severity: #error
Description: "bundleリソースを構成するentry[0]がCompositionリソース(JP_Composition_eMunicipalCheckup)である。"
Expression: 
" (
    entry[0].resource.meta.profile[0]='JP_Composition_eMunicipalCheckup'
)"

//--- bundleリソースを構成するentry[1]がPatientリソース であり、JP_Patient_eMunicipalCheckup　プロファイルに準拠している:
Invariant: bundle-entry1-JP-Patient-eMunicipalCheckup
Severity: #error
Description: "bundleリソースを構成するentry[1]がPatientリソース(JP_Patient_eMunicipalCheckup)である。"
Expression: 
 "(
    entry[1].resource.meta.profile[0]='JP_Patient_eMunicipalCheckup'
)"

//--- bundleリソースを構成するentry[2]がPractitionerRoleリソース であり、JP_PractitionerRole_eMunicipalCheckup　プロファイルに準拠している:
Invariant: bundle-entry2-JP-PractitionerRole-eMunicipalCheckup
Severity: #error
Description: "bundleリソースを構成するentry[2]がPractitionerRoleリソース(JP_PractitionerRole_eMunicipalCheckup)である。"
Expression: 
 "(
    entry[2].resource.meta.profile[0]='JP_PractitionerRole_eMunicipalCheckup'
)"

//--- bundleリソースを構成するentry[3]がorganization リソース であり、JP_Organization_eMunicipalCheckup_Provider　プロファイルに準拠している:
Invariant: bundle-entry3-JP-Organization-eMunicipalCheckup-Provider
Severity: #error
Description: "bundleリソースを構成するentry[3]がorganizationリソース(JP_Organization_eMunicipalCheckup_Provider)である。"
Expression: 
 "(
    entry[3].resource.meta.profile[0]='JP_Organization_eMunicipalCheckup_Provider'
)"

//--- bundleリソースを構成するentry[4]がPractitionerリソース であり、JP_Practitioner_eMunicipalCheckup　プロファイルに準拠している:
Invariant: bundle-entry4-JP-Practitioner-eMunicipalCheckup
Severity: #error
Description: "bundleリソースを構成するentry[4]がPractitionerリソース(JP_PractitionerRole_eMunicipalCheckup)である。"
Expression: 
 "(
    entry[4].resource.meta.profile[0]='JP_Practitioner_eMunicipalCheckup'
)"