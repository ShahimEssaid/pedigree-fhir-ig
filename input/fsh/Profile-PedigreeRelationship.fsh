Profile: PedigreeRelationship
Parent: FamilyMemberHistory
Id: PedigreeRelationship
Title: "Pedigree Relationship"
Description: "Represents a relationship between individuals in a pedigree."
* extension contains $PatientRecordExtension named relative 1..1 MS
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
