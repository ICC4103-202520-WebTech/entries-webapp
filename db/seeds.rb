# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Entry.delete_all

Entry.create! title: "Reflexión 1", body: "Este es el contenido de la reflexión 1"
Entry.create! title: "Reflexión 2", body: "Este es el contenido de la reflexión 2"
Entry.create! title: "Reflexión 3", body: "Este es el contenido de la reflexión 3"
Entry.create! title: "Reflexión 4", body: "Este es el contenido de la reflexión 4"
Entry.create! title: "Reflexión 5", body: "Este es el contenido de la reflexión 5"
