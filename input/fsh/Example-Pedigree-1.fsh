/**
 Individual
 */
Instance: pedigree-1-individual-example-1
InstanceOf: PedigreeIndividual
Title: "Pedigree 1 Individual Example 1"
* extension[genderIdentity].valueCodeableConcept = #female
* identifier.system = "urn:pedigree-fhir-ig:unique-string/individual"
* identifier.value = "pedigree-1-1"
* gender = #female
* birthDate = "2019-06-15"

Instance: pedigree-1-individual-example-2
InstanceOf: PedigreeIndividual
Title: "Pedigree 1 Individual Example 2"
* extension[genderIdentity].valueCodeableConcept = #female
* identifier.system = "urn:pedigree-fhir-ig:unique-string/individual"
* identifier.value = "pedigree-1-2"
* gender = #female

Instance: pedigree-1-individual-example-3
InstanceOf: PedigreeIndividual
Title: "Pedigree 1 Individual Example 3"
* extension[genderIdentity].valueCodeableConcept = #female
* identifier.system = "urn:pedigree-fhir-ig:unique-string/individual"
* identifier.value = "pedigree-1-3"
* gender = #female

Instance: pedigree-1-individual-example-4
InstanceOf: PedigreeIndividual
Title: "Pedigree 1 Individual Example 4"
* extension[genderIdentity].valueCodeableConcept = #female
* identifier.system = "urn:pedigree-fhir-ig:unique-string/individual"
* identifier.value = "pedigree-1-4"
* gender = #female

Instance: pedigree-1-individual-example-5
InstanceOf: PedigreeIndividual
Title: "Pedigree 1 Individual Example 5"
* extension[genderIdentity].valueCodeableConcept = #female
* identifier.system = "urn:pedigree-fhir-ig:unique-string/individual"
* identifier.value = "pedigree-1-5"
* gender = #female

Instance: pedigree-1-individual-example-6
InstanceOf: PedigreeIndividual
Title: "Pedigree 1 Individual Example 6"
* extension[genderIdentity].valueCodeableConcept = #male
* identifier.system = "urn:pedigree-fhir-ig:unique-string/individual"
* identifier.value = "pedigree-1-6"
* gender = #male

Instance: pedigree-1-individual-example-7
InstanceOf: PedigreeIndividual
Title: "Pedigree 1 Individual Example 7"
* extension[genderIdentity].valueCodeableConcept = #female
* identifier.system = "urn:pedigree-fhir-ig:unique-string/individual"
* identifier.value = "pedigree-1-7"
* gender = #female

Instance: pedigree-1-individual-example-8
InstanceOf: PedigreeIndividual
Title: "Pedigree 1 Individual Example 8"
* extension[genderIdentity].valueCodeableConcept = #male
* identifier.system = "urn:pedigree-fhir-ig:unique-string/individual"
* identifier.value = "pedigree-1-8"
* gender = #male

Instance: pedigree-1-individual-example-9
InstanceOf: PedigreeIndividual
Title: "Pedigree 1 Individual Example 9"
* extension[genderIdentity].valueCodeableConcept = #female
* identifier.system = "urn:pedigree-fhir-ig:unique-string/individual"
* identifier.value = "pedigree-1-9"
* gender = #female

Instance: pedigree-1-individual-example-10
InstanceOf: PedigreeIndividual
Title: "Pedigree 1 Individual Example 10"
* extension[genderIdentity].valueCodeableConcept = #male
* identifier.system = "urn:pedigree-fhir-ig:unique-string/individual"
* identifier.value = "pedigree-1-10"
* gender = #male

Instance: pedigree-1-individual-example-11
InstanceOf: PedigreeIndividual
Title: "Pedigree 1 Individual Example 11"
* extension[genderIdentity].valueCodeableConcept = #female
* identifier.system = "urn:pedigree-fhir-ig:unique-string/individual"
* identifier.value = "pedigree-1-11"
* gender = #female

Instance: pedigree-1-individual-example-12
InstanceOf: PedigreeIndividual
Title: "Pedigree 1 Individual Example 12"
* extension[genderIdentity].valueCodeableConcept = #male
* identifier.system = "urn:pedigree-fhir-ig:unique-string/individual"
* identifier.value = "pedigree-1-12"
* gender = #male

Instance: pedigree-1-individual-example-13
InstanceOf: PedigreeIndividual
Title: "Pedigree 1 Individual Example 13"
* extension[genderIdentity].valueCodeableConcept = #female
* identifier.system = "urn:pedigree-fhir-ig:unique-string/individual"
* identifier.value = "pedigree-1-13"
* gender = #female


/**
 Affection Status
 */
Instance: pedigree-1-affected-status-example-1
InstanceOf: AffectedStatus
Title: "Pedigree 1 Affected Status Example 1"
* identifier.system = "urn:pedigree-fhir-ig:unique-string/affected-status"
* identifier.value = "pedigree-1-1"
* status = #final
* code = $SNOMED#103309006 "Patient affected"
* subject = Reference(pedigree-1-individual-example-1)
* valueBoolean = true


/**
 Relationship
 */
Instance: pedigree-1-relationship-example-1
InstanceOf: PedigreeRelationship
Title: "Pedigree 1 Relationship Example 1"
* extension[0].url = $PatientRecordExtension
* extension[0].valueReference = Reference(pedigree-1-individual-example-13)
* identifier.system = "urn:pedigree-fhir-ig:unique-string/relationship"
* identifier.value = "pedigree-1-1"
* status = #completed
* patient = Reference(pedigree-1-individual-example-11)
* relationship = $PedigreeRelationshipsCodeSystem#REL:003 "Biological parent"

Instance: pedigree-1-relationship-example-2
InstanceOf: PedigreeRelationship
Title: "Pedigree 1 Relationship Example 2"
* extension[0].url = $PatientRecordExtension
* extension[0].valueReference = Reference(pedigree-1-individual-example-12)
* identifier.system = "urn:pedigree-fhir-ig:unique-string/relationship"
* identifier.value = "pedigree-1-2"
* status = #completed
* patient = Reference(pedigree-1-individual-example-11)
* relationship = $PedigreeRelationshipsCodeSystem#REL:003 "Biological parent"

Instance: pedigree-1-relationship-example-3
InstanceOf: PedigreeRelationship
Title: "Pedigree 1 Relationship Example 3"
* extension[0].url = $PatientRecordExtension
* extension[0].valueReference = Reference(pedigree-1-individual-example-11)
* identifier.system = "urn:pedigree-fhir-ig:unique-string/relationship"
* identifier.value = "pedigree-1-3"
* status = #completed
* patient = Reference(pedigree-1-individual-example-7)
* relationship = $PedigreeRelationshipsCodeSystem#REL:003 "Biological parent"

Instance: pedigree-1-relationship-example-4
InstanceOf: PedigreeRelationship
Title: "Pedigree 1 Relationship Example 4"
* extension[0].url = $PatientRecordExtension
* extension[0].valueReference = Reference(pedigree-1-individual-example-10)
* identifier.system = "urn:pedigree-fhir-ig:unique-string/relationship"
* identifier.value = "pedigree-1-4"
* status = #completed
* patient = Reference(pedigree-1-individual-example-7)
* relationship = $PedigreeRelationshipsCodeSystem#REL:003 "Biological parent"

Instance: pedigree-1-relationship-example-5
InstanceOf: PedigreeRelationship
Title: "Pedigree 1 Relationship Example 5"
* extension[0].url = $PatientRecordExtension
* extension[0].valueReference = Reference(pedigree-1-individual-example-11)
* identifier.system = "urn:pedigree-fhir-ig:unique-string/relationship"
* identifier.value = "pedigree-1-5"
* status = #completed
* patient = Reference(pedigree-1-individual-example-6)
* relationship = $PedigreeRelationshipsCodeSystem#REL:003 "Biological parent"

Instance: pedigree-1-relationship-example-6
InstanceOf: PedigreeRelationship
Title: "Pedigree 1 Relationship Example 6"
* extension[0].url = $PatientRecordExtension
* extension[0].valueReference = Reference(pedigree-1-individual-example-10)
* identifier.system = "urn:pedigree-fhir-ig:unique-string/relationship"
* identifier.value = "pedigree-1-6"
* status = #completed
* patient = Reference(pedigree-1-individual-example-6)
* relationship = $PedigreeRelationshipsCodeSystem#REL:003 "Biological parent"

Instance: pedigree-1-relationship-example-7
InstanceOf: PedigreeRelationship
Title: "Pedigree 1 Relationship Example 7"
* extension[0].url = $PatientRecordExtension
* extension[0].valueReference = Reference(pedigree-1-individual-example-9)
* identifier.system = "urn:pedigree-fhir-ig:unique-string/relationship"
* identifier.value = "pedigree-1-7"
* status = #completed
* patient = Reference(pedigree-1-individual-example-5)
* relationship = $PedigreeRelationshipsCodeSystem#REL:003 "Biological parent"

Instance: pedigree-1-relationship-example-8
InstanceOf: PedigreeRelationship
Title: "Pedigree 1 Relationship Example 8"
* extension[0].url = $PatientRecordExtension
* extension[0].valueReference = Reference(pedigree-1-individual-example-8)
* identifier.system = "urn:pedigree-fhir-ig:unique-string/relationship"
* identifier.value = "pedigree-1-8"
* status = #completed
* patient = Reference(pedigree-1-individual-example-5)
* relationship = $PedigreeRelationshipsCodeSystem#REL:003 "Biological parent"

Instance: pedigree-1-relationship-example-9
InstanceOf: PedigreeRelationship
Title: "Pedigree 1 Relationship Example 9"
* extension[0].url = $PatientRecordExtension
* extension[0].valueReference = Reference(pedigree-1-individual-example-9)
* identifier.system = "urn:pedigree-fhir-ig:unique-string/relationship"
* identifier.value = "pedigree-1-9"
* status = #completed
* patient = Reference(pedigree-1-individual-example-4)
* relationship = $PedigreeRelationshipsCodeSystem#REL:003 "Biological parent"

Instance: pedigree-1-relationship-example-10
InstanceOf: PedigreeRelationship
Title: "Pedigree 1 Relationship Example 10"
* extension[0].url = $PatientRecordExtension
* extension[0].valueReference = Reference(pedigree-1-individual-example-8)
* identifier.system = "urn:pedigree-fhir-ig:unique-string/relationship"
* identifier.value = "pedigree-1-10"
* status = #completed
* patient = Reference(pedigree-1-individual-example-4)
* relationship = $PedigreeRelationshipsCodeSystem#REL:003 "Biological parent"

Instance: pedigree-1-relationship-example-11
InstanceOf: PedigreeRelationship
Title: "Pedigree 1 Relationship Example 11"
* extension[0].url = $PatientRecordExtension
* extension[0].valueReference = Reference(pedigree-1-individual-example-9)
* identifier.system = "urn:pedigree-fhir-ig:unique-string/relationship"
* identifier.value = "pedigree-1-11"
* status = #completed
* patient = Reference(pedigree-1-individual-example-3)
* relationship = $PedigreeRelationshipsCodeSystem#REL:003 "Biological parent"

Instance: pedigree-1-relationship-example-12
InstanceOf: PedigreeRelationship
Title: "Pedigree 1 Relationship Example 12"
* extension[0].url = $PatientRecordExtension
* extension[0].valueReference = Reference(pedigree-1-individual-example-8)
* identifier.system = "urn:pedigree-fhir-ig:unique-string/relationship"
* identifier.value = "pedigree-1-12"
* status = #completed
* patient = Reference(pedigree-1-individual-example-3)
* relationship = $PedigreeRelationshipsCodeSystem#REL:003 "Biological parent"

Instance: pedigree-1-relationship-example-13
InstanceOf: PedigreeRelationship
Title: "Pedigree 1 Relationship Example 13"
* extension[0].url = $PatientRecordExtension
* extension[0].valueReference = Reference(pedigree-1-individual-example-9)
* identifier.system = "urn:pedigree-fhir-ig:unique-string/relationship"
* identifier.value = "pedigree-1-13"
* status = #completed
* patient = Reference(pedigree-1-individual-example-2)
* relationship = $PedigreeRelationshipsCodeSystem#REL:003 "Biological parent"

Instance: pedigree-1-relationship-example-14
InstanceOf: PedigreeRelationship
Title: "Pedigree 1 Relationship Example 14"
* extension[0].url = $PatientRecordExtension
* extension[0].valueReference = Reference(pedigree-1-individual-example-8)
* identifier.system = "urn:pedigree-fhir-ig:unique-string/relationship"
* identifier.value = "pedigree-1-14"
* status = #completed
* patient = Reference(pedigree-1-individual-example-2)
* relationship = $PedigreeRelationshipsCodeSystem#REL:003 "Biological parent"

Instance: pedigree-1-relationship-example-15
InstanceOf: PedigreeRelationship
Title: "Pedigree 1 Relationship Example 15"
* extension[0].url = $PatientRecordExtension
* extension[0].valueReference = Reference(pedigree-1-individual-example-6)
* identifier.system = "urn:pedigree-fhir-ig:unique-string/relationship"
* identifier.value = "pedigree-1-15"
* status = #completed
* patient = Reference(pedigree-1-individual-example-1)
* relationship = $PedigreeRelationshipsCodeSystem#REL:003 "Biological parent"

Instance: pedigree-1-relationship-example-16
InstanceOf: PedigreeRelationship
Title: "Pedigree 1 Relationship Example 16"
* extension[0].url = $PatientRecordExtension
* extension[0].valueReference = Reference(pedigree-1-individual-example-5)
* identifier.system = "urn:pedigree-fhir-ig:unique-string/relationship"
* identifier.value = "pedigree-1-16"
* status = #completed
* patient = Reference(pedigree-1-individual-example-1)
* relationship = $PedigreeRelationshipsCodeSystem#REL:003 "Biological parent"


/**
 Organization
 */
Instance: pedigree-1-organization-example-1
InstanceOf: Organization
Title: "Pedigree 1 Organization Example 1"
* identifier.system = "urn:pedigree-fhir-ig:unique-string/organization"
* identifier.value = "pedigree-1-1"
* active = true
* type.coding = $OrganizationTypeCodeSystem#prov "Healthcare Provider"
* type.text = "Hospital"
* name = "Amazing Children's Hospital"


/**
 Condition
 */
Instance: pedigree-1-condition-example-1
InstanceOf: Condition
Title: "Pedigree 1 Condition Example 1"
* identifier.system = "urn:pedigree-fhir-ig:unique-string/condition"
* identifier.value = "pedigree-1-1"
* clinicalStatus = $ConditionClinicalStatusCodeSystem#recurrence "Recurrence"
* verificationStatus = $ConditionVerificationStatusCodeSystem#confirmed "Confirmed"
* code.coding = $HPO#HP:0003002 "Breast carcinoma"
* code.text = "Recurrent breast cancer"
* bodySite.coding = $UBERON#UBERON:0000310 "breast"
* bodySite.text = "Breast"
* subject = Reference(pedigree-1-individual-example-1)


/**
 Pedigree
 */
Instance: pedigree-1-pedigree-example-1
InstanceOf: Pedigree
Title: "Pedigree 1 Pedigree Example 1"
* identifier.system = "urn:pedigree-fhir-ig:unique-string/pedigree"
* identifier.value = "pedigree-1-1"
* status = #final
* type = $SNOMED#422432008 "Family history section"
* subject = Reference(pedigree-1-individual-example-1)
* date = "2021-06-15"
* author = Reference(pedigree-1-organization-example-1)
* title = "Pedigree"
* section[0].title = "Proband"
* section[0].entry = Reference(pedigree-1-individual-example-1)
* section[1].title = "Reason"
* section[1].entry = Reference(pedigree-1-condition-example-1)
* section[2].title = "Individuals"
* section[2].entry[0] = Reference(pedigree-1-individual-example-1)
* section[2].entry[1] = Reference(pedigree-1-individual-example-2)
* section[2].entry[2] = Reference(pedigree-1-individual-example-3)
* section[2].entry[3] = Reference(pedigree-1-individual-example-4)
* section[2].entry[4] = Reference(pedigree-1-individual-example-5)
* section[2].entry[5] = Reference(pedigree-1-individual-example-6)
* section[2].entry[6] = Reference(pedigree-1-individual-example-7)
* section[2].entry[7] = Reference(pedigree-1-individual-example-8)
* section[2].entry[8] = Reference(pedigree-1-individual-example-9)
* section[2].entry[9] = Reference(pedigree-1-individual-example-10)
* section[2].entry[10] = Reference(pedigree-1-individual-example-11)
* section[2].entry[11] = Reference(pedigree-1-individual-example-12)
* section[2].entry[12] = Reference(pedigree-1-individual-example-13)
* section[3].title = "Relationships"
* section[3].entry[0] = Reference(pedigree-1-relationship-example-1)
* section[3].entry[1] = Reference(pedigree-1-relationship-example-2)
* section[3].entry[2] = Reference(pedigree-1-relationship-example-3)
* section[3].entry[3] = Reference(pedigree-1-relationship-example-4)
* section[3].entry[4] = Reference(pedigree-1-relationship-example-5)
* section[3].entry[5] = Reference(pedigree-1-relationship-example-6)
* section[3].entry[6] = Reference(pedigree-1-relationship-example-7)
* section[3].entry[7] = Reference(pedigree-1-relationship-example-8)
* section[3].entry[8] = Reference(pedigree-1-relationship-example-9)
* section[3].entry[9] = Reference(pedigree-1-relationship-example-10)
* section[3].entry[10] = Reference(pedigree-1-relationship-example-11)
* section[3].entry[11] = Reference(pedigree-1-relationship-example-12)
* section[3].entry[12] = Reference(pedigree-1-relationship-example-13)
* section[3].entry[13] = Reference(pedigree-1-relationship-example-14)
* section[3].entry[14] = Reference(pedigree-1-relationship-example-15)
* section[3].entry[15] = Reference(pedigree-1-relationship-example-16)
