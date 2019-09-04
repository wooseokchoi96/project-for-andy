
d1 = Doctor.create(name: 'Kunxi', age: 50)
d2 = Doctor.create(name: 'Andy', age: 100)
d3 = Doctor.create(name: 'Jason', age: 5)
d4 = Doctor.create(name: 'Tracie', age: 1)

p1 = Patient.create(name: 'Darrow', age: 90, my_dog: "https://bit.ly/2lYtLWH")
p2 = Patient.create(name: 'Rutger', age: 60, my_dog: "https://bit.ly/2ZEboZ6")
p3 = Patient.create(name: 'Ryan', age: 24, my_dog: "https://bit.ly/2ATNpaY")
p4 = Patient.create(name: 'Dan', age: 57, my_dog: "https://bit.ly/2SRK5mU")

Appointment.create(doctor: d1, patient: p1, description: "I am too tall", date: "01/02/19")
Appointment.create(doctor: d2, patient: p1, description: "I miss you, I just wanted to see you", date: "01/20/19")
Appointment.create(doctor: d3, patient: p3, description: "I eat too much carbs", date: "10/02/19")
Appointment.create(doctor: d4, patient: p4, description: "I want some mangos", date: "01/02/20")