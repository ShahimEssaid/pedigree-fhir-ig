Alias: PatientRecordExtension = http://hl7.org/fhir/StructureDefinition/familymemberhistory-patient-record
Alias: GenderIdentityExtension = http://hl7.org/fhir/StructureDefinition/patient-genderIdentity
Alias: SNOMED = http://snomed.info/sct
Alias: PedigreeRelationships = http://ga4gh-cp.github.io/pedigree-fhir-ig/CodeSystem/PedigreeRelationships

Instance: Bart
InstanceOf: PedigreeIndividual
Title: "Bart"
Description: "Bart is the proband and consultand."
* extension[0].url = "http://ga4gh-cp.github.io/pedigree-fhir-ig/StructureDefinition/patient-unborn"
* extension[0].valueBoolean = false
* gender = #female
* identifier.system = "urn:fdc:sprinfieldlab.net:2021:id/patient"
* identifier.value = "1"
* deceasedBoolean = false

Instance: Homer
InstanceOf: PedigreeIndividual
Title: "Homer"
Description: "Homer is Bart's father and Marge's husband."
* extension[0].url = "http://ga4gh-cp.github.io/pedigree-fhir-ig/StructureDefinition/patient-unborn"
* extension[0].valueBoolean = false
* gender = #male
* identifier.system = "urn:fdc:sprinfieldlab.net:2021:id/patient"
* identifier.value = "2"
* deceasedBoolean = false

Instance: Marge
InstanceOf: PedigreeIndividual
Title: "Marge"
Description: "Marge is Bart's mother and Homer's wife."
* extension[0].url = "http://ga4gh-cp.github.io/pedigree-fhir-ig/StructureDefinition/patient-unborn"
* extension[0].valueBoolean = false
* gender = #female
* identifier.system = "urn:fdc:sprinfieldlab.net:2021:id/patient"
* identifier.value = "3"
* deceasedBoolean = false

Instance: Abe
InstanceOf: PedigreeIndividual
Title: "Abe"
Description: "Abe is Homer's father."
* extension[0].url = "http://ga4gh-cp.github.io/pedigree-fhir-ig/StructureDefinition/patient-unborn"
* extension[0].valueBoolean = false
* gender = #female
* identifier.system = "urn:fdc:sprinfieldlab.net:2021:id/patient"
* identifier.value = "4"
* deceasedBoolean = false

Instance: BartMargeRelationship
InstanceOf: PedigreeRelationship
Title: "Bart-Marge Relationship"
Description: "The relationship between Bart and his mother."
* status = #completed
* identifier.system = "urn:fdc:sprinfieldlab.net:2021:id/relationship"
* identifier.value = "bart_marge"
* relationship = PedigreeRelationships#REL:003
* patient = Reference(Bart)
* extension[0].url = PatientRecordExtension
* extension[0].valueReference = Reference(Marge)

Instance: BartHomerRelationship
InstanceOf: PedigreeRelationship
Title: "Bart-Homer Relationship"
Description: "The relationship between Bart and his father."
* status = #completed
* identifier.system = "urn:fdc:sprinfieldlab.net:2021:id/relationship"
* identifier.value = "bart_homer"
* relationship = PedigreeRelationships#REL:003
* patient = Reference(Bart)
* extension[0].url = PatientRecordExtension
* extension[0].valueReference = Reference(Homer)

Instance: MargeHomerRelationship
InstanceOf: PedigreeRelationship
Title: "Marge-Homer Relationship"
Description: "The relationship between Marge and her husband."
* status = #completed
* identifier.system = "urn:fdc:sprinfieldlab.net:2021:id/relationship"
* identifier.value = "marge_homer"
* relationship = PedigreeRelationships#REL:026
* patient = Reference(Marge)
* extension[0].url = PatientRecordExtension
* extension[0].valueReference = Reference(Homer)

Instance: HomerAbeRelationship
InstanceOf: PedigreeRelationship
Title: "Homer-Abe Relationship"
Description: "The relationship between Homer and his father."
* status = #completed
* identifier.system = "urn:fdc:sprinfieldlab.net:2021:id/relationship"
* identifier.value = "homer_abe"
* relationship = PedigreeRelationships#REL:003
* patient = Reference(Homer)
* extension[0].url = PatientRecordExtension
* extension[0].valueReference = Reference(Abe)

Instance: BartsCondition
InstanceOf: Condition
Title: "Bart's condition"
Description: "Attention deficit hyperactivity disorder, the condition that triggered the collection of this pedigree."
* code = SNOMED#406506008
* subject = Reference(Bart)

Instance: DrNick
InstanceOf: Practitioner
Title: "Dr Nick"
Description: "Dr Nick, author of this pedigree."
* name[0].given = "Nick"
* name[0].family = "Riviera"
* gender = #male

Instance: SimpsonsPedigree
InstanceOf: Pedigree
Title: "Simpson's pedigree"
Description: "A pedigree of the Simpson's family."
* status = #final
* type = SNOMED#422432008
* date = "2021-02-10"
* author = Reference(DrNick)
* title = "Pedigree"
* subject = Reference(Bart)
* section[0].title = "Proband"
* section[0].code = SectionType#proband
* section[0].entry[0] = Reference(Bart)
* section[1].title = "Reason collected"
* section[1].code = SectionType#reasonCollected
* section[1].entry[0] = Reference(BartsCondition)
* section[2].title = "Individuals"
* section[2].code = SectionType#individuals
* section[2].entry[0] = Reference(Bart)
* section[2].entry[1] = Reference(Marge)
* section[2].entry[2] = Reference(Homer)
* section[2].entry[3] = Reference(Abe)
* section[3].title = "Relationships"
* section[3].code = SectionType#relationships
* section[3].entry[0] = Reference(BartMargeRelationship)
* section[3].entry[1] = Reference(BartHomerRelationship)
* section[3].entry[2] = Reference(MargeHomerRelationship)
* section[3].entry[2] = Reference(HomerAbeRelationship)
* section[4].title = "Other"
* section[4].code = SectionType#other
* section[4].entry[0] = Reference(DrNick)
