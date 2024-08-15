/**
Library: HIV.B2.DT Logic

@DecisionID: HIV.B2.DT
@BusinessRule: Check for signs of serious illness
@Trigger: HIV.B2 Check for signs of serious illness
@Trigger: HIV.D3 Check for signs of serious illness
@HitPolicy: Rule Order
@Description: Check for serious illness

Data Concepts:
 * HIV.A.DE17: Age | Calculated age (number of years) of the client based on date of birth
 * HIV.D.DE17: Signs of serious illness | Signs that may indicate the client has a serious illness and needs triage or an emergency referral
 * HIV.D.DE9: Body temperature | Temperature of the client in Celsius

Consolidated guidelines on HIV prevention, testing, treatment, service delivery and monitoring: recommendations for a public health approach (2021) Chapter 5: Advanced HIV Disease. Figure 5.1: Algorithm for providing a package of care for people with advanced HIV disease.
*/

library HIVB2DTLogicDemo

using FHIR version '4.0.1'

include HIVConcepts called Concepts
include FHIRHelpers version '4.0.1'

context Patient

define "Signs of serious illness Observation":
  [Observation: Concepts."Signs of serious illness"] O
    where O.status in { 'final', 'amended', 'corrected' }  


define "Immediately take action":
  exists(
    "Signs of serious illness Observation" O
      where O.value ~ Concepts."Tachycardia"
  )  

/*
 @dynamicValue: Guidance
 */
define "Guidance":
  case 
  when "Immediately take action" 
    then 'Immediately take action or refer for care if a client is having this issue'
  else null
  end



