Instance: HIVB2DTDemo
InstanceOf: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recommendationdefinition
Title: "HIV.B2.DT Check for signs of serious illness"
Description: "Check for signs of serious illness"
Usage: #definition
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableplandefinition"
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableplandefinition"
* library = Canonical(HIVB2DTLogicDemo)
* extension[+]
  * url = "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"
  * valueCode = #computable
* url = "http://smart.who.int/hiv/PlanDefinition/HIVB2DTDemo"
* name = "HIVB2DTDemo"
* status = #draft
* experimental = true
* publisher = "World Health Organization (WHO)"
* relatedArtifact[+]
  * type = #citation
  * citation = "Consolidated Guidelines on HIV Testing Services (2019)"
* action[+]
  * textEquivalent = "Check for signs of serious illness"
  * action[+]
    * title = "Take appropriate action"
    * textEquivalent = "Take appropriate action for client showing signs of serious illness"
    * condition[+]
      * kind = #applicability
      * expression
        * language = #text/cql-identifier
        * expression = "Immediately take action"
    * dynamicValue[+]
      * path = "description"
      * expression
        * language = #text/cql-identifier
        * expression = "Guidance"
