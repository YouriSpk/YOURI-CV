# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Création de compétences de test
#skills_data = [
  #{ name: "HTML", level: "advanced", section: "hard" },
  #{ name: "CSS", level: "intermediate", section: "soft" },
  #{ name: "JavaScript", level: "advanced", section: "soft" },
  #{ name: "Ruby", level: "advanced", section: "soft" },
  #{ name: "Python", level: "intermediate", section: "soft" },
  #{ name: "Java", level: "intermediate", section: "hard" },
  #{ name: "C++", level: "advanced", section: "hard" },
  #{ name: "SQL", level: "advanced", section: "soft" },
  #{ name: "Git", level: "intermediate", section: "soft" }
#]

# Création des compétences à partir des données
#skills_data.each do |skill_data|
 # Skill.create!(skill_data)
#end

#puts "Compétences créées avec succès!"
work_experiences_data = [
  {
    title: "Full Stack Web Developer",
    company: "Marin Digital Agency",
    description: "Développement web",
    start_date: Date.new(2024, 2),
    end_date: Date.today
  },
  {
    title: "IT Systemadmin",
    company: "Joblift",
    description: "Gestion d’inventaire, Google Workspace, Scanners, Science informatique, Microsoft Windows, Bitwarden, JIRA, Installation matérielle, Windows 10, TeamViewer, Processus ITIL, Confluence, Git, Asana, Centre d'assistance, English, Ingénierie électronique, Gestion de projet, Suite Atlassian, Mac, Personio, Zoom",
    start_date: Date.new(2022, 5),
    end_date: Date.new(2023, 8)
  },
  # Ajoutez d'autres expériences professionnelles ici...
]

# Création des expériences professionnelles à partir des données
work_experiences_data.each do |experience_data|
  WorkExperience.create!(experience_data)
end

puts "Expériences professionnelles créées avec succès!"
