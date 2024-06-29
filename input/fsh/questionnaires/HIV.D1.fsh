Instance: HIV.D1DetermineReasonForVisit
InstanceOf: sdc-questionnaire-extr-smap
Title: "Determine reason for visit"
Description: "Questionnaire for determine reason for visit"
Usage: #definition
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablequestionnaire"
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablequestionnaire"
* subjectType = #Patient
* language = #en
* status = #draft
* experimental = true
* item[+]
  * id = "HIV.D.DE746"
  * linkId = "HIV.D.DE746"
  * type = #choice
  * text = "Entry point for facility-level testing"
  * required = false
  * repeats = false
  * readOnly = false
