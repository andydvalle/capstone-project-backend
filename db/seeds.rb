# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.destory_all
# Patient.destory_all
# Condition.destory_all
# Medication.destory_all

andy = User.create({
    username: "andy", 
    password: "andy"
})

hal = User.create({
    username: "hal", 
    password: "hal"
})

bronn = Patient.create({
    firstName: "Bronn",
    lastName: "Pupperson",
    dob: "02/27/1989",
    allergies: "none",
    user_id: 1
})
zuko = Patient.create({
    firstName: "Zuko",
    lastName: "McKitty",
    dob: "02/24/1991",
    allergies: "none",
    user_id: 1
})
jane = Patient.create({
    firstName: "Jane",
    lastName: "Doe",
    dob: "01/01/1991",
    allergies: "Codeine",
    user_id: 2
})
john = Patient.create({
    firstName: "John",
    lastName: "Doe",
    dob: "01/01/1991",
    allergies: "Penicillin",
    user_id: 2
})

htn = Condition.create({
    name: "hypertension",
    notes: "this is the one with my high blood pressure, usually around 145/90",
    patient_id: 2
})

dm = Condition.create({
    name: "Diabetes",
    notes: "I need to consider decreasing my carbs and sugar intake",
    patient_id: 1
})

lisinopril = Medication.create({
    name_route: "Lisinopril (oral pill)",
    strength: "20mg tab",
    instructions: "Daily",
    notes: "this one is for my high bp",
    sunday: true,
    monday: true,
    tuesday: true,
    wednesday: true,
    thursday: true,
    friday: true,
    saturday: true,
    patient_id: 2
})

metformin = Medication.create({
    name_route: "Metformin",
    strength: "500mg tab",
    instructions: "Daily with evening meal",
    notes: "this one is for my high blood sugar, longer acting",
    sunday: true,
    monday: true,
    tuesday: true,
    wednesday: true,
    thursday: true,
    friday: true,
    saturday: true,
    patient_id: 1
})

clinic1 = Clinic.create({
    name: "Care Medical Clinic",
    practitioner: "Dr. Johnson",
    address: "1234 Main St",
    address2: "",
    city: "Seattle",
    state: "WA",
    zip: "98118",
    # location: "1234 Main St  Seattle WA 98118",
    number: "123-456-7890",
    notes: "Cold building, bring a jacket",
    patient_id: 1
})

clinic2 = Clinic.create({
    name: "Care Medical Center",
    practitioner: "Dr. Jackson",
    # location: "1234 Main St  Seattle WA 98118",
    address: "1234 Main St",
    address2: "",
    city: "Seattle",
    state: "WA",
    zip: "98118",    
    number: "123-456-7890",
    notes: "Yellow building around the corner from parking lot",
    patient_id: 2
})

appt1 = Appointment.create({
    title: "Doctor Visit",
    date: "2020-07-20",
    time: "13:00",
    notes: "Don't forget to bring meds",
    patient_id: 1,
    clinic_id:1
})

appt2 = Appointment.create({
    title: "First appointment",
    date: "2020-07-21",
    time: "09:00",
    notes: "Bring a list of meds",
    patient_id: 2,
    clinic_id: 2
})
