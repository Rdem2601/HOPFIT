
Gym.destroy_all

gym_1 = Gym.new(
  name: "Fitness Etterbeek",
  address: "Rue des francs, 79, Etterbeek",
  description: "Super salle de sport pas loin des institutions européennes",
  opening_hours: "Du lundi au vendredi de 8h à 20h",
  equipments: "Machines dernier cri",
  services: "Wi-fi, piscine, sauna",
  price: 10,
  user_id: 3
)
gym_1.remote_photo_url = "http://res.cloudinary.com/da6umoo9p/image/upload/q_100/v1496670469/fitness-957115_640_dr8yta.jpg"
gym_1.save

gym_2 = Gym.new(
  name: "Fitness Saint-Gilles",
  address: "Rue Gisbert Combaz, 31, Saint-Gilles",
  description: "Salle de sport historique historique du quartier, même patrons depuis 30 ans. Ambiance familiale.",
  opening_hours: "Du lundi au jeudi de 8h à 20h, le vendredi de 10h à 22h.",
  equipments: "Nouvelles machines et écrans plasma.",
  services: "Wi-fi",
  price: 7,
  user_id: 4
)
gym_2.remote_photo_url = "http://res.cloudinary.com/da6umoo9p/image/upload/v1496825330/dumbbell-pair-299533_640_q8a3sl.jpg"
gym_2.save

gym_3 = Gym.new(
  name: "Fitness Ixelles",
  address: "Chaussée d'Ixelles, 79, Etterbeek",
  description: "Petite salle de sport pas loin de la porte de Namur.",
  opening_hours: "Du lundi au dimanche de 10h à 22h",
  equipments: "Nombreux cours avec prof certifié disponibles.",
  services: "Wi-fi, piscine, sauna, jardin, bar.",
  price: 10,
  user_id: 5
)
gym_3.remote_photo_url = "http://res.cloudinary.com/da6umoo9p/image/upload/v1496825435/gym-room-1178293_640_bblml9.jpg"
gym_3.save

