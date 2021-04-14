Profile: Pedigree
Parent: Composition
Id: Pedigree
Title: "Pedigree"
Description: "A Pedigree is collection of selected information about a family, including the individuals, relationships between them, and relevant health conditions."
* type.coding.system = $SNOMED
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
* section contains reason 1..1
* section[reason].title = "Reason"
* section[reason].code = SectionType#reason
* section[reason].entry 0..*
* section[reason].entry only Reference(Condition)
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

