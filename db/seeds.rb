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

User.create({
    username: "andy", 
    password_digest: "andy"
})

Patient.create({
    name: "Patient1",
    dob: "02/27/1989",
    sex: "M",
    age: 31,
    user_id: 1
})

Condition.create({
    name: "hypertension",
    description: "Blood pressure is the force of your blood pushing against the walls of your arteries. Each time your heart beats, it pumps blood into the arteries. Your blood pressure is highest when your heart beats, pumping the blood. This is called systolic pressure. When your heart is at rest, between beats, your blood pressure falls. This is called diastolic pressure.",
})

Condition.create({
    name: "Diabetes",
    description: "Diabetes is a disease in which your blood glucose, or blood sugar, levels are too high. Glucose comes from the foods you eat. Insulin is a hormone that helps the glucose get into your cells to give them energy. With type 1 diabetes, your body does not make insulin. With type 2 diabetes, the more common type, your body does not make or use insulin well. Without enough insulin, the glucose stays in your blood. You can also have prediabetes. This means that your blood sugar is higher than normal but not high enough to be called diabetes. Having prediabetes puts you at a higher risk of getting type 2 diabetes.

    Over time, having too much glucose in your blood can cause serious problems. It can damage your eyes, kidneys, and nerves. Diabetes can also cause heart disease, stroke and even the need to remove a limb. Pregnant women can also get diabetes, called gestational diabetes.
    
    Blood tests can show if you have diabetes. One type of test, the A1C, can also check on how you are managing your diabetes. Exercise, weight control and sticking to your meal plan can help control your diabetes. You should also monitor your blood glucose level and take medicine if prescribed.",
})

Medication.create({
    name: "Lisinopril",
    dose: "20mg",
    frequency: "Daily",
    route: "Oral"
})

Medication.create({
    name: "Metformin",
    dose: "500mg",
    frequency: "Daily with evening meal",
    route: "Oral"
})
