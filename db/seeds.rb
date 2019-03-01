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
    name:         'Point recyclage Paris',
    category:     'recyclage',
    address:      '22 rue de Sèvres, 75006 Paris',
    description:  'Esapce recylclage pour toutes sortes de déchets',
    photo:        'https://www.ecosia.org/images?q=point+recyclage+paris#id=50AC305164C6BCE04553BC5090A73BD000A5ED00'
  },
  {
    name:         'Point recyclage Paris',
    category:     'recyclage',
    address:      '19 rue de Turenne, 75004 Paris',
    description:  'Esapce recylclage pour toutes sortes de déchets',
    photo:        'https://www.ecosia.org/images?q=point+recyclage+paris#id=50AC305164C6BCE04553BC5090A73BD000A5ED00'
  },
  {
    name:         'Point recyclage Paris',
    category:     'recyclage',
    address:      '32 rue Leon Frot, 75011 Paris',
    description:  'Esapce recylclage pour toutes sortes de déchets',
    photo:        'https://www.ecosia.org/images?q=point+recyclage+paris#id=50AC305164C6BCE04553BC5090A73BD000A5ED00'
  },
  {
    name:         'Point recyclage Paris',
    category:     'recyclage',
    address:      '9 rue d\'Orsel, 75018 Paris',
    description:  'Esapce recylclage pour toutes sortes de déchets',
    photo:        'https://www.ecosia.org/images?q=point+recyclage+paris#id=50AC305164C6BCE04553BC5090A73BD000A5ED00'
  },
  {
    name:         'Point recyclage Paris',
    category:     'recyclage',
    address:      '14 Rue Crespin du Gast, 75011 Paris',
    description:  'Esapce recylclage pour toutes sortes de déchets',
    photo:        'https://www.ecosia.org/images?q=point+recyclage+paris#id=50AC305164C6BCE04553BC5090A73BD000A5ED00'
  },
  {
    name:         'Point recyclage Paris',
    category:     'recyclage',
    address:      '209 rue Saint Maur, 75010 Paris',
    description:  'Esapce recylclage pour toutes sortes de déchets',
    photo:        'https://www.ecosia.org/images?q=point+recyclage+paris#id=50AC305164C6BCE04553BC5090A73BD000A5ED00'
  },
  {
    name:         'Point composte Paris',
    category:     'composte',
    address:      '9 rue d\'orsel',
    description:  'Venez composter avec vos voisins, tous les jours de la semaine.',
    photo:        'https://www.ecosia.org/images?q=espace+composte+a+paris#id=3AFF585DDB46CCA0864136F55459DF9E563CE12C'
  },
  {
    name:         'Point composte Paris',
    category:     'composte',
    address:      '53 rue sauffroy, 75017 Paris',
    description:  'Venez composter avec vos voisins, tous les jours de la semaine.',
    photo:        'https://www.ecosia.org/images?q=espace+composte+a+paris#id=3AFF585DDB46CCA0864136F55459DF9E563CE12C'
  },
  {
    name:         'Point composte Paris',
    category:     'composte',
    address:      '4, Rue de la Fontaine Bouillante, 02810, Saint-Gengoulph, Aisne, Hauts-de-France',
    description:  'Venez composter avec vos voisins, tous les jours de la semaine.',
    photo:        'https://www.ecosia.org/images?q=espace+composte+a+paris#id=3AFF585DDB46CCA0864136F55459DF9E563CE12C'
  },
  {
    name:         'Point composte Paris',
    category:     'composte',
    address:      '108, Le Vernay, 71250, Chérizet, Saône-et-Loire, Bourgogne-Franche-Comté',
    description:  'Venez composter avec vos voisins, tous les jours de la semaine.',
    photo:        'https://www.ecosia.org/images?q=espace+composte+a+paris#id=3AFF585DDB46CCA0864136F55459DF9E563CE12C'
  },
  {
    name:        'Friperie de Paris',
    category:     'vêtement',
    address:      '101, La Bâche, Mavilly-Mandelot, Côte-d\'Or, Bourgogne-Franche-Comté',
    description:  'La meilleur fiperie de Paris! Venez decouvrir votre côté groovy!',
    photo:        'https://www.ecosia.org/images?q=vintage+clothing+store#id=E272E4C5A2386C514DF0EE10931B22F39DA606F0'
  },
  {
    name:         'Friperie de Paris',
    category:     'vêtement',
    address:      '196, La Reparerie, 36340, Mouhers, Indre, Centre-Val de Loire',
    description:  'La meilleur fiperie de Paris! Venez decouvrir votre côté groovy!',
    photo:        'https://www.ecosia.org/images?q=vintage+clothing+store#id=E272E4C5A2386C514DF0EE10931B22F39DA606F0'
  },
  {
    name:         'Friperie de Paris',
    category:     'vêtement',
    address:      '4, Rue de la Poste, 37340, Ambillou, Indre-et-Loire, Centre-Val de Loire',
    description:  'La meilleur fiperie de Paris! Venez decouvrir votre côté groovy!',
    photo:        'https://www.ecosia.org/images?q=vintage+clothing+store#id=E272E4C5A2386C514DF0EE10931B22F39DA606F0'
  },
  {
    name:         'Magasin Bio',
    category:     'alimentation',
    address:      '5, Route de la Gorgere, 87800, Saint-Hilaire-les-Places, Haute-Vienne, Nouvelle-Aquitaine',
    description:  'Magasin bio avec plein de choix et possibilité d\'acheter en vrac!',
    photo:        'https://www.ecosia.org/images?q=magasin+bio#id=E5D5DA1A9DA26DD3A0C3FEFC6F68294B08BBD147'
  },
  {
    name:         'Magasin Bio',
    category:     'alimentation',
    address:      '65, 73130, Saint-Colomban-des-Villards, Auvergne-Rhône-Alpes',
    description:  'Le meilleur magasin bio, sans plastique!',
    photo:        'https://www.ecosia.org/images?q=magasin+bio#id=E5D5DA1A9DA26DD3A0C3FEFC6F68294B08BBD147'
  },
  {
    name:         'Magasin Bio',
    category:     'alimentation',
    address:      '10, Rue de la Cavée, 80160, Fransures, Somme, Hauts-de-France',
    description:  'Le meilleur magasin bio, sans plastique!',
    photo:        'https://www.ecosia.org/images?q=magasin+bio#id=E5D5DA1A9DA26DD3A0C3FEFC6F68294B08BBD147'
  },
  {
    name:         'Marche',
    category:     'marché',
    address:      '8, Rue de la Hutte Baret, 88220, Raon-aux-Bois, Vosges, Grand Est',
    description:  'Les meilleurs fruits et legumes, tous les matins!',
    photo:        "https://www.ecosia.org/images?q=march\%C3\%A9+paris#id=C86E64DAB4BA6A61905CE8B7B7507B92984A60F"
  },
  {
    name:         'Marche',
    category:     'marché',
    address:      '16 villa Gaudelet, 75011 Paris',
    description:  'Les meilleurs fruits et legumes, tous les matins!',
    photo:        "https://www.ecosia.org/images?q=march\%C3\%A9+paris#id=C86E64DAB4BA6A61905CE8B7B7507B92984A60F"
  },
  {
    name:         'Marche',
    category:     'marché',
    address:      'Domaine de Pixérécourt, 54220 Malzéville',
    description:  'Les meilleurs fruits et legumes, tous les matins!',
    photo:        "https://www.ecosia.org/images?q=march\%C3\%A9+paris#id=C86E64DAB4BA6A61905CE8B7B7507B92984A60F"
  },
  {
    name:         'Marché',
    category:     'marché',
    address:      'Langhärdle 4, 77784 Oberharmersbach, Allemagne',
    description:  'Marché du dimanche à ne pas rater!',
    photo:        "https://www.ecosia.org/images?q=march\%C3\%A9+paris#id=C86E64DAB4BA6A61905CE8B7B7507B92984A60F"
  },
  {
    name:         'Festival ecolo',
    category:     'événement',
    address:      '56 rue Sedaine, 75011 Paris',
    description:  'Festival de musique et d\'art, tous les fonds seront donné aux associations ecologiques.',
    photo:        'https://www.ecosia.org/images?q=we+love+green#id=D3B7F02E95C9934E6209E0967BEA7D66CEAADA6C'
  },
  {
    name:         'Soirée ecolo',
    category:     'événement',
    address:      '27 rue Leon Frot, 75011 Paris',
    description:  'Super soirée pour discuter/echanger sur l\'ecologie! Venez nombreux!',
    photo:        'https://www.ecosia.org/images?q=we+love+green#id=D3B7F02E95C9934E6209E0967BEA7D66CEAADA6C'
  },
  {
    name:         'Talk ecolo',
    category:     'événement',
    address:      '19 rue du Temple, 75004 Paris',
    description:  'Venez ecouter les professionels en ecologie de Paris!',
    photo:        'https://www.ecosia.org/images?q=we+love+green#id=D3B7F02E95C9934E6209E0967BEA7D66CEAADA6C'
  },
  {
    name:         'Marche pour l\'environnement,
    category:     'événement',
    address:      '9 rue jean louis renardon, 69650 Saint Germain au mont d\'or',
    description:  'Marchons ensemble pour proteger notre environnement!',
    photo:        'https://www.ecosia.org/images?q=we+love+green#id=D3B7F02E95C9934E6209E0967BEA7D66CEAADA6C'
  },
]

locations_attributes.each do |attribute|
  location = Location.new(attribute)
  location.save!
end
