Alias: PatientRecordExtension = http://hl7.org/fhir/StructureDefinition/familymemberhistory-patient-record
Alias: GenderIdentityExtension = http://hl7.org/fhir/StructureDefinition/patient-genderIdentity
Alias: SNOMED = http://snomed.info/sct
Alias: PedigreeRelationshipsCodeSystem = http://ga4gh-cp.github.io/pedigree-fhir-ig/CodeSystem/PedigreeRelationships

CodeSystem: SectionType
Title: "Section Type"
Description: "Represents the different types of sections in a pedigree."
* #proband "Proband"
* #reasonCollected "Reason collected"
* #individuals "Individuals"
* #relationships "Relationships"
* #other "Other"

ValueSet: PedigreeRelationshipTypes
Title: "Pedigree Relationship Types"
Description: "The types of relationships between individuals in a pedigree."
* codes from system PedigreeRelationshipsCodeSystem

Extension: Unborn
Id: patient-unborn
Title: "Unborn"
Description: "Indicates if an individual in a pedigree hasn't been born yet."
* ^context.type = #element
* ^context.expression =  "Patient"
* value[x] only boolean
* extension 0..0

Profile: AffectedStatus
Parent: Observation
Id: AffectedStatus
Title: "Affected Status"
Description: "Whether or not the individual is affected by the condition being investigated in this pedigree; included for PED backwards compatibility."
* code = SNOMED#103309006
* value[x] only boolean 
* subject 1..1
* subject only Reference(PedigreeIndividual)
* component 0..0

Profile: PedigreeRelationship
Parent: FamilyMemberHistory
Id: PedigreeRelationship
Title: "Pedigree Relationship"
Description: "Represents a relationship between individuals in a pedigree."
* extension contains PatientRecordExtension named relative 1..1 MS
* identifier 1..* MS
* relationship MS
* relationship from PedigreeRelationshipTypes (required)
* patient MS
* name 0..0
* sex 0..0
* born[x] 0..0
* age[x] 0..0
* estimatedAge 0..0
* deceased[x] 0..0
* reasonCode 0..0
* reasonReference 0..0
* condition 0..0

Profile: PedigreeIndividual
Parent: Patient
Id: PedigreeIndividual
Title: "Pedigree Individual"
Description: "Represents and individual in a pedigree."
* extension contains
  GenderIdentityExtension named genderIdentity 0..1 MS and
  Unborn named unborn 0..1 MS
* identifier 0..* MS
* name MS
* gender MS
* deceased[x] MS

Profile: Pedigree
Parent: Composition
Id: Pedigree
Title: "Pedigree"
Description: "A Pedigree is collection of selected information about a family, including the individuals, relationships between them, and relevant health conditions."
* type.coding.system = SNOMED
* type.coding.code = #422432008
* subject MS // This is the consultand
* date MS
* title = "Pedigree"
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.ordered = true
* section ^slicing.rules = #closed
* section contains proband 1..1
* section[proband].title = "Proband"
* section[proband].code = SectionType#proband
* section[proband].entry 0..1
* section[proband].entry only Reference(PedigreeIndividual)
* section contains reasonCollected 1..1
* section[reasonCollected].title = "Reason collected"
* section[reasonCollected].code = SectionType#reasonCollected
* section[reasonCollected].entry 0..*
* section[reasonCollected].entry only Reference(Condition)
* section contains individuals 1..1 // A pedigree with a single individual should be valid
* section[individuals].title = "Individuals"
* section[individuals].code = SectionType#individuals
* section[individuals].entry 1..*
* section[individuals].entry only Reference(PedigreeIndividual)
* section contains relationships 1..1 // A pedigree with a single individual has no relationships
* section[relationships].title = "Relationships"
* section[relationships].code = SectionType#relationships
* section[relationships].entry 0..*
* section[relationships].entry only Reference(PedigreeRelationship)
* section contains other 1..1
* section[other].title = "Other"
* section[other].code = SectionType#other
* section[other].entry 0..*

