Profile: AffectedStatus
Parent: Observation
Id: AffectedStatus
Title: "Affected Status"
Description: "Whether or not the individual is affected by the condition being investigated in this pedigree; included for PED backwards compatibility."
* code = $SNOMED#103309006
* value[x] only boolean 
* subject 1..1
* subject only Reference(PedigreeIndividual)
* component 0..0
