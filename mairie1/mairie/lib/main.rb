require_relative './mairie_scraper'

# Récupération des emails de toutes les mairies
townhall_emails = MairieScraper.get_all_townhall_emails

# Affichage des résultats
puts "=== LISTE DES MAIRIES ET LEURS EMAILS ==="
townhall_emails.each do |hash|
  hash.each do |town, email|
    puts "#{town}: #{email}"
  end
end

# Sauvegarde dans un fichier texte
File.open('emails_mairies.txt', 'w') do |file|
  file.puts "=== LISTE DES MAIRIES ET LEURS EMAILS ==="
  townhall_emails.each do |hash|
    hash.each do |town, email|
      file.puts "#{town}: #{email}"
    end
  end
end

puts "\nLes résultats ont été sauvegardés dans le fichier 'emails_mairies.txt'."