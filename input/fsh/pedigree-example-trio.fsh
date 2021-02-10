Alias: PatientRecordExtension = http://hl7.org/fhir/StructureDefinition/familymemberhistory-patient-record
Alias: GenderIdentityExtension = http://hl7.org/fhir/StructureDefinition/patient-genderIdentity
Alias: SNOMED = http://snomed.info/sct
Alias: PedigreeRelationships = http://ga4gh-cp.github.io/pedigree-fhir-ig/CodeSystem/PedigreeRelationships

Instance: Mother
InstanceOf: PedigreeIndividual
Title: "Mother"
Description: "The mother in a trio."
* gender = #female
* identifier.system = "urn:fdc:labtec.genovic.org.au:2018:id/patient"
* identifier.value = "1"

Instance: AffectedStatusMother
InstanceOf: AffectedStatus
Title: "Affected Status Mother"
Description: "The affected status of the mother."
* status = #final
* code = SNOMED#103309006
* valueBoolean = false
* subject = Reference(Mother)

// Has cardiomegaly HP:0001640 and shuffling gait HP:0002362
Instance: Father
InstanceOf: PedigreeIndividual
Title: "Father"
Description: "The father in a trio."
* gender = #male
* identifier.system = "urn:fdc:labtec.genovic.org.au:2018:id/patient"
* identifier.value = "2"

Instance: AffectedStatusFather
InstanceOf: AffectedStatus
Title: "Affected Status Father"
Description: "The affected status of the father."
* status = #final
* code = SNOMED#103309006
* valueBoolean = true
* subject = Reference(Father)

// Has progressive gait ataxia HP:0007240
Instance: Proband
InstanceOf: PedigreeIndividual
Title: "Proband"
Description: "The proband in a trio."
* gender = #female
* identifier.system = "urn:fdc:labtec.genovic.org.au:2018:id/patient"
* identifier.value = "3"

Instance: AffectedStatusProband
InstanceOf: AffectedStatus
Title: "Affected Status Proband"
Description: "The affected status of the proband."
* status = #final
* code = SNOMED#103309006
* valueBoolean = true
* subject = Reference(Proband)

Instance: ProbandFatherRelationship
InstanceOf: PedigreeRelationship
Title: "Proband Father Relationship"
Description: "The relationship between the proband and her father."
* status = #completed
* identifier.system = "urn:fdc:labtec.genovic.org.au:2018:id/relationship"
* identifier.value = "proband_father"
* relationship = PedigreeRelationships#REL:003
* patient = Reference(Proband)
* extension[0].url = PatientRecordExtension
* extension[0].valueReference = Reference(Father)

Instance: ProbandMotherRelationship
InstanceOf: PedigreeRelationship
Title: "Proband Mother Relationship"
Description: "The relationship between the proband and her mother."
* status = #completed
* identifier.system = "urn:fdc:labtec.genovic.org.au:2018:id/relationship"
* identifier.value = "proband_mother"
* relationship = PedigreeRelationships#REL:003
* patient = Reference(Proband)
* extension[0].url = PatientRecordExtension
* extension[0].valueReference = Reference(Mother)
