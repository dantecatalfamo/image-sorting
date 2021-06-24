namespace :images do
  desc "Load images into db from public/images"
  task load: :environment do
    Dir.chdir(Rails.root.join('public'))
    Dir.glob('images/*.{png,jpg,gif}').each do |image|
      next if Image.where(path: image).length != 0
      Image.new(path: '/' + image, rating: 1500, matches: 0, wins: 0, losses: 0).save!
      puts "Added #{image}"
    end
  end
end
