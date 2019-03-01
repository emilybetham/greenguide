users_attributes = [
  {
    name:         'Emily',
    email:        'emily@gmail.com',
    password:     'password'
  },
  {
    name:         'Dania',
    email:        'dania@gmail.com',
    password:     'password'
  },
  {
    name:         'Celia',
    email:        'celia@gmail.com',
    password:     'password'
  },
  {
    name:         'Julia',
    email:        'julia@gmail.com',
    password:     'password'
  }
]
User.destroy_all
User.create!(users_attributes)

Location.destroy_all
puts 'destroyed all'

locations_attributes = [
  {
    name:         'Point recyclage',
    category:     'recyclage',
    address:      '22 rue de Sèvres, 75006 Paris',
    description:  'Esapce recylclage pour toutes sortes de déchets',
    photo:        'http://www.policelocale.be/files/5318/attachments/1604fc5ad08b1e718077602ba3923432.jpg'
  },
  {
    name:         'Point recyclage',
    category:     'recyclage',
    address:      '19 rue de Turenne, 75004 Paris',
    description:  'Esapce recylclage pour toutes sortes de déchets',
    photo:        'http://www.policelocale.be/files/5318/attachments/1604fc5ad08b1e718077602ba3923432.jpg'
  },
  {
    name:         'Point recyclage',
    category:     'recyclage',
    address:      '32 rue Leon Frot, 75011 Paris',
    description:  'Esapce recylclage pour toutes sortes de déchets',
    photo:        'http://www.policelocale.be/files/5318/attachments/1604fc5ad08b1e718077602ba3923432.jpg'
  },
  {
    name:         'Point recyclage',
    category:     'recyclage',
    address:      '9 rue d\'Orsel, 75018 Paris',
    description:  'Esapce recylclage pour toutes sortes de déchets',
    photo:        'http://www.policelocale.be/files/5318/attachments/1604fc5ad08b1e718077602ba3923432.jpg'
  },
  {
    name:         'Point recyclage',
    category:     'recyclage',
    address:      '14 Rue Crespin du Gast, 75011 Paris',
    description:  'Esapce recylclage pour toutes sortes de déchets',
    photo:        'http://www.policelocale.be/files/5318/attachments/1604fc5ad08b1e718077602ba3923432.jpg'
  },
  {
    name:         'Point recyclage',
    category:     'recyclage',
    address:      '209 rue Saint Maur, 75010 Paris',
    description:  'Esapce recylclage pour toutes sortes de déchets',
    photo:        'http://www.policelocale.be/files/5318/attachments/1604fc5ad08b1e718077602ba3923432.jpg'
  },
  {
    name:         'Point composte',
    category:     'composte',
    address:      '9 rue d\'orsel',
    description:  'Venez composter avec vos voisins, tous les jours de la semaine.',
    photo:        'http://4.bp.blogspot.com/-W_Z_CG4Qiz8/VEoXN-ugE4I/AAAAAAAAHHE/j-qKzHyT8uQ/s1600/jardin%2Bsanterre%2B3%2Bcopyright%2Banne-lore%2Bmesnage.jpg'
  },

  {
    name:         'Point composte',
    category:     'composte',
    address:      '53 rue sauffroy, 75017 Paris',
    description:  'Venez composter avec vos voisins, tous les jours de la semaine.',
    photo:        'http://4.bp.blogspot.com/-W_Z_CG4Qiz8/VEoXN-ugE4I/AAAAAAAAHHE/j-qKzHyT8uQ/s1600/jardin%2Bsanterre%2B3%2Bcopyright%2Banne-lore%2Bmesnage.jpg'
  },
  {
    name:         'Point composte',
    category:     'composte',
    address:      '4, Rue de la Fontaine Bouillante, 02810, Saint-Gengoulph, Aisne, Hauts-de-France',
    description:  'Venez composter avec vos voisins, tous les jours de la semaine.',
    photo:        'http://4.bp.blogspot.com/-W_Z_CG4Qiz8/VEoXN-ugE4I/AAAAAAAAHHE/j-qKzHyT8uQ/s1600/jardin%2Bsanterre%2B3%2Bcopyright%2Banne-lore%2Bmesnage.jpg'
  },
    {
    name:         'Point composte',
    category:     'composte',
    address:      '18 Rue Crespin du Gast, 75011 Paris',
    description:  'Venez composter avec vos voisins, tous les jours de la semaine.',
    photo:        'http://4.bp.blogspot.com/-W_Z_CG4Qiz8/VEoXN-ugE4I/AAAAAAAAHHE/j-qKzHyT8uQ/s1600/jardin%2Bsanterre%2B3%2Bcopyright%2Banne-lore%2Bmesnage.jpg'
  },
  {
    name:         'Point composte',
    category:     'composte',
    address:      '108, Le Vernay, 71250, Chérizet, Saône-et-Loire, Bourgogne-Franche-Comté',
    description:  'Venez composter avec vos voisins, tous les jours de la semaine.',
    photo:        'http://4.bp.blogspot.com/-W_Z_CG4Qiz8/VEoXN-ugE4I/AAAAAAAAHHE/j-qKzHyT8uQ/s1600/jardin%2Bsanterre%2B3%2Bcopyright%2Banne-lore%2Bmesnage.jpg'
  },
  {
    name:        'Friperie de Paris',
    category:     'vêtement',
    address:      '101, La Bâche, Mavilly-Mandelot, Côte-d\'Or, Bourgogne-Franche-Comté',
    description:  'La meilleure fiperie de Paris! Venez decouvrir votre côté groovy!',
    photo:        'https://www.parisperfect.com/blog/wp-content/uploads/2015/01/Vintage-Paris-Perfect-660-1-2.jpg'
  },
   {
    name:         'Friperie de Paris',
    category:     'vêtement',
    address:      '116 Rue Oberkampf, 75011 Paris',
    description:  'La meilleure fiperie de Paris! Venez decouvrir votre côté groovy!',
    photo:        'https://www.parisperfect.com/blog/wp-content/uploads/2015/01/Vintage-Paris-Perfect-660-1-2.jpg'
  },
  {
    name:         'Friperie de Paris',
    category:     'vêtement',
    address:      '196, La Reparerie, 36340, Mouhers, Indre, Centre-Val de Loire',
    description:  'La meilleure fiperie de Paris! Venez decouvrir votre côté groovy!',
    photo:        'https://www.parisperfect.com/blog/wp-content/uploads/2015/01/Vintage-Paris-Perfect-660-1-2.jpg'
  },
  {
    name:         'Friperie de Paris',
    category:     'vêtement',
    address:      '4, Rue de la Poste, 37340, Ambillou, Indre-et-Loire, Centre-Val de Loire',
    description:  'La meilleure fiperie de Paris! Venez decouvrir votre côté groovy!',
    photo:        'https://www.parisperfect.com/blog/wp-content/uploads/2015/01/Vintage-Paris-Perfect-660-1-2.jpg'
  },
  {
    name:         'Magasin Bio',
    category:     'alimentation',
    address:      '5, Route de la Gorgere, 87800, Saint-Hilaire-les-Places, Haute-Vienne, Nouvelle-Aquitaine',
    description:  'Magasin bio avec plein de choix et possibilité d\'acheter en vrac!',
    photo:        'https://www.natureo-bio.fr/wp-content/themes/natureo/assets/images/stores/magasin-bio-natureo-02.jpg'
  },
  {
    name:         'Magasin Bio',
    category:     'alimentation',
    address:      '5 Rue Crespin du Gast, 75011 Paris',
    description:  'Magasin bio avec plein de choix et possibilité d\'acheter en vrac!',
    photo:        'https://www.natureo-bio.fr/wp-content/themes/natureo/assets/images/stores/magasin-bio-natureo-02.jpg'
  },
  {
    name:         'Magasin Bio',
    category:     'alimentation',
    address:      '65, 73130, Saint-Colomban-des-Villards, Auvergne-Rhône-Alpes',
    description:  'Le meilleur magasin bio, sans plastique!',
    photo:        'https://www.natureo-bio.fr/wp-content/themes/natureo/assets/images/stores/magasin-bio-natureo-02.jpg'
  },
  {
    name:         'Magasin Bio',
    category:     'alimentation',
    address:      '10, Rue de la Cavée, 80160, Fransures, Somme, Hauts-de-France',
    description:  'Le meilleur magasin bio, sans plastique!',
    photo:        'https://www.natureo-bio.fr/wp-content/themes/natureo/assets/images/stores/magasin-bio-natureo-02.jpg'
  },
  {
    name:         'Marché',
    category:     'marché',
    address:      '4 Rue Victor Gelez, 75011 Paris',
    description:  'Les meilleurs fruits et legumes, tous les matins!',
    photo:        "https://food20.fr/FOOD/wp-content/uploads/2016/11/marche-paris-900x500.jpg"
  },
  {
    name:         'Marché',
    category:     'marché',
    address:      '8, Rue de la Hutte Baret, 88220, Raon-aux-Bois, Vosges, Grand Est',
    description:  'Les meilleurs fruits et legumes, tous les matins!',
    photo:        "https://food20.fr/FOOD/wp-content/uploads/2016/11/marche-paris-900x500.jpg"
  },
  {
    name:         'Marché',
    category:     'marché',
    address:      '16 villa Gaudelet, 75011 Paris',
    description:  'Les meilleurs fruits et legumes, tous les matins!',
    photo:        "https://food20.fr/FOOD/wp-content/uploads/2016/11/marche-paris-900x500.jpg"
  },
  {
    name:         'Marché',
    category:     'marché',
    address:      'Domaine de Pixérécourt, 54220 Malzéville',
    description:  'Les meilleurs fruits et legumes, tous les matins!',
    photo:        "https://food20.fr/FOOD/wp-content/uploads/2016/11/marche-paris-900x500.jpg"
  },
  {
    name:         'Marché',
    category:     'marché',
    address:      'Langhärdle 4, 77784 Oberharmersbach, Allemagne',
    description:  'Marché du dimanche à ne pas rater!',
    photo:        "https://food20.fr/FOOD/wp-content/uploads/2016/11/marche-paris-900x500.jpg"
  },
  {
    name:         'Festival écolo',
    category:     'événement',
    address:      '56 rue Sedaine, 75011 Paris',
    description:  'Festival de musique et d\'art, tous les fonds seront donné aux associations ecologiques.',
    photo:        'http://www.efflorescenceculturelle.com/wp-content/uploads/2017/06/WeLoveGreen2017_23.jpg'
  },
  {
    name:         'Soirée écolo',
    category:     'événement',
    address:      '11 Rue Crespin du Gast, 75011 Paris',
    description:  'Super soirée pour discuter/echanger sur l\'ecologie! Venez nombreux!',
    photo:        'http://www.efflorescenceculturelle.com/wp-content/uploads/2017/06/WeLoveGreen2017_23.jpg'
  },
  {
    name:         'Soirée écolo',
    category:     'événement',
    address:      '27 rue Leon Frot, 75011 Paris',
    description:  'Super soirée pour discuter/echanger sur l\'ecologie! Venez nombreux!',
    photo:        'http://www.efflorescenceculturelle.com/wp-content/uploads/2017/06/WeLoveGreen2017_23.jpg'
  },
  {
    name:         'Talk écolo',
    category:     'événement',
    address:      '19 rue du Temple, 75004 Paris',
    description:  'Venez ecouter les professionels en ecologie de Paris!',
    photo:        'http://www.efflorescenceculturelle.com/wp-content/uploads/2017/06/WeLoveGreen2017_23.jpg'
  },
  {
    name:         'Marche pour l\'environnement',
    category:     'événement',
    address:      '9 rue jean louis renardon, 69650 Saint Germain au mont d\'or',
    description:  'Marchons ensemble pour proteger notre environnement!',
    photo:        'http://www.efflorescenceculturelle.com/wp-content/uploads/2017/06/WeLoveGreen2017_23.jpg'
  },
]

locations_attributes.each do |attribute|
  location = Location.new(attribute)
  location.save!
end

puts 'Seeded'

