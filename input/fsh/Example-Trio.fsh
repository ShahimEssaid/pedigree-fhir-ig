Instance: Mother
InstanceOf: PedigreeIndividual
Title: "Mother"
Description: "The mother in the trio."
* gender = #female
* identifier.system = "urn:fdc:labtec.genovic.org.au:2018:id/patient"
* identifier.value = "1"

Instance: AffectedStatusMother
InstanceOf: AffectedStatus
Title: "Affected Status Mother"
Description: "The affected status of the mother."
* status = #final
* code = $SNOMED#103309006
* valueBoolean = false
* subject = Reference(Mother)

Instance: Father
InstanceOf: PedigreeIndividual
Title: "Father"
Description: "The father in the trio."
* gender = #male
* identifier.system = "urn:fdc:labtec.genovic.org.au:2018:id/patient"
* identifier.value = "2"

Instance: FatherFirstCondition
InstanceOf: Condition
Title: "Father First Condition"
Description: "Cardiomegaly, the first condition suffered by the father."
* code = $HPO#HP:0001640
* subject = Reference(Father)

Instance: FatherSecondCondition
InstanceOf: Condition
Title: "Father Second Condition"
Description: "Shuffling gait, the second condition suffered by the father."
* code = $HPO#HP:0002362
* subject = Reference(Father)

Instance: AffectedStatusFather
InstanceOf: AffectedStatus
Title: "Affected Status Father"
Description: "The affected status of the father."
* status = #final
* code = $SNOMED#103309006
* valueBoolean = true
* subject = Reference(Father)

Instance: Proband
InstanceOf: PedigreeIndividual
Title: "Proband"
Description: "The proband in the trio."
* gender = #female
* identifier.system = "urn:fdc:labtec.genovic.org.au:2018:id/patient"
* identifier.value = "3"

Instance: ProbandCondition
InstanceOf: Condition
Title: "Proband Condition"
Description: "Progressive gait ataxia, the condition suffered by the proband."
* code = $HPO#HP:0007240
* subject = Reference(Proband)

Instance: AffectedStatusProband
InstanceOf: AffectedStatus
Title: "Affected Status Proband"
Description: "The affected status of the proband."
* status = #final
* code = $SNOMED#103309006
* valueBoolean = true
* subject = Reference(Proband)

Instance: ProbandFatherRelationship
InstanceOf: PedigreeRelationship
Title: "Proband Father Relationship"
Description: "The relationship between the proband and her father."
* status = #completed
* identifier.system = "urn:fdc:labtec.genovic.org.au:2018:id/relationship"
* identifier.value = "proband_father"
* relationship = $PedigreeRelationships#REL:003
* patient = Reference(Proband)
* extension[0].url = $PatientRecordExtension
* extension[0].valueReference = Reference(Father)

Instance: ProbandMotherRelationship
InstanceOf: PedigreeRelationship
Title: "Proband Mother Relationship"
Description: "The relationship between the proband and her mother."
* status = #completed
* identifier.system = "urn:fdc:labtec.genovic.org.au:2018:id/relationship"
* identifier.value = "proband_mother"
* relationship = $PedigreeRelationships#REL:003
* patient = Reference(Proband)
* extension[0].url = $PatientRecordExtension
* extension[0].valueReference = Reference(Mother)

Instance: MelbourneGenomics
InstanceOf: Organization
Title: "Melbourne Genomics"
Description: "The Melbourne Genomics organisation."
* name = "Melbourne Genomics"

Instance: TrioPedigree
InstanceOf: Pedigree
Title: "The trio's pedigree"
Description: "A pedigree of the trio."
* status = #final
* type = $SNOMED#422432008
* date = "2021-02-10"
* author = Reference(MelbourneGenomics)
* title = "Pedigree"
* subject = Reference(Proband)
* section[0].title = "Proband"
* section[0].code = SectionType#proband
* section[0].entry[0] = Reference(Proband)
* section[1].title = "Reason"
* section[1].code = SectionType#reason
* section[1].entry[0] = Reference(ProbandCondition)
* section[2].title = "Individuals"
* section[2].code = SectionType#individuals
* section[2].entry[0] = Reference(Proband)
* section[2].entry[1] = Reference(Mother)
* section[2].entry[2] = Reference(Father)
* section[3].title = "Relationships"
* section[3].code = SectionType#relationships
* section[3].entry[0] = Reference(ProbandFatherRelationship)
* section[3].entry[1] = Reference(ProbandMotherRelationship)
* section[4].title = "Other"
* section[4].code = SectionType#other
* section[4].entry[0] = Reference(FatherFirstCondition)
* section[4].entry[1] = Reference(FatherSecondCondition)
* section[4].entry[2] = Reference(MelbourneGenomics)
