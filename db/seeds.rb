# Suppression des anciens enregistrements (pour éviter les doublons)
Restaurant.destroy_all

# Création des 5 restaurants avec des nouvelles informations
restaurants = [
  { name: "Le Gourmet Voyageur", address: "12 Rue des Champs-Élysées, 75008 Paris", phone_number: "01 40 70 12 34", category: "french" },
  { name: "Sushiko", address: "25 Avenue de l'Opéra, 75001 Paris", phone_number: "01 45 67 89 10", category: "japanese" },
  { name: "Pasta e Basta", address: "42 Boulevard Montmartre, 75009 Paris", phone_number: "01 46 78 99 11", category: "italian" },
  { name: "Peking Palace", address: "56 Rue de la République, 75011 Paris", phone_number: "01 48 65 43 21", category: "chinese" },
  { name: "Brasserie Léon de Bruxelles", address: "33 Boulevard de la Bastille, 75012 Paris", phone_number: "01 53 24 67 89", category: "belgian" }
]

restaurants.each do |restaurant|
  Restaurant.create(restaurant)
end

puts "5 restaurants ont été créés avec succès !"
# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
