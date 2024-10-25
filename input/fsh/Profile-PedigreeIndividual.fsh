Profile: PedigreeIndividual
Parent: Patient
Id: PedigreeIndividual
Title: "Pedigree Individual"
Description: "Represents an individual in a pedigree."
* extension contains
  $GenderIdentityExtension named genderIdentity 0..1 MS and
  Unborn named unborn 0..1 MS and
  PopulationDescriptors named populationDescriptors 0..* MS and
  http://hl7.org/fhir/uv/phenomics-exchange/StructureDefinition/KaryotypicSex named karyotypicSex 0..1 MS

* identifier 0..* MS
* name MS
* gender MS
* deceased[x] MS
