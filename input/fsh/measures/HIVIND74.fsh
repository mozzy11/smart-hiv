Instance: HIVIND74
InstanceOf: http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/proportion-measure-cqfm
Title: "HIV.IND.74 Gonorrhoea treatment coverage, HIV prevention services"
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablemeasure"
* meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablemeasure"
* extension[http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-populationBasis].valueCode = #boolean
* description = "% of people attending HIV prevention services tested positive for gonorrhoea who were treated based on national guidelines during the reporting period"
* url = "http://smart.who.int/HIV/Measure/HIVIND74"
* status = #draft
* experimental = true
* date = "2024-07-12"
* name = "HIVIND74"
* title = "HIV.IND.74 Gonorrhoea treatment coverage, HIV prevention services"
* publisher = "World Health Organization (WHO)"
* library = "http://smart.who.int/HIV/Library/HIVIND74Logic"
* scoring = $measure-scoring#proportion "Proportion"
* group[+]
  * population[initialPopulation]
    * id = "HIV.IND.74.IP"
    * description = "Initial Population"
    * code = $measure-population#initial-population "Initial Population"
    * criteria.language = #text/cql-identifier
    * criteria.expression = "Initial Population"
  * population[denominator]
    * id = "HIV.IND.74.DEN"
    * description = "Number of people attending HIV prevention services who tested positive for gonorrhoea during the reporting period"
    * code = $measure-population#denominator "Denominator"
    * criteria.language = #text/cql-identifier
    * criteria.expression = "Denominator"
  * population[numerator]
    * id = "HIV.IND.74.NUM"
    * description = "Number of people attending HIV prevention services who tested positive for gonorrhoea and were treated based on national guidelines during the reporting period"
    * code = $measure-population#numerator "Numerator"
    * criteria.language = #text/cql-identifier
    * criteria.expression = "Numerator"