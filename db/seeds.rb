
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
