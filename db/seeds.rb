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
    name:         'Julia\'s skate',
    category:     'recyclage',
    address:      '22 rue de Sèvres, 75006 Paris',
    description:  'Lovely skate'
  },
  {
    name:         'Julia\'s scooter',
    category:     'recyclage',
    address:      '19 rue de Turenne, 75004 Paris',
    description:  'Lovely trotinette'
  },
  {
    name:         'Julia\'s palm',
    category:     'recyclage',
    address:      '9 rue d\'Orsel, 75018 Paris',
    description:  'Nice palme in Piccadilly'
  },
  {
    name:         'Celia\'s roller',
    category:     'recyclage',
    address:      '14 Rue Crespin du Gast, 75011 Paris',
    description:  'Beautiful roller skate'
  },
  {
    name:         'Dania\'s skate',
    category:     'recyclage',
    address:      '209 rue Saint Maur, 75010 Paris',
    description:  'A beautiful skate'
  },
  {
    name:         'Emily\'s bike',
    category:     'composte',
    address:      '9 rue d\'orsel',
    description:  'Try my bike!'
  },
  {
    name:         'Guillaume\'s skateboard',
    category:     'composte',
    address:      '53 rue sauffroy, 75017 Paris',
    description:  'A beautiful skate'
  },
  {
    name:         'Jule\'s bike',
    category:     'composte',
    address:      '4, Rue de la Fontaine Bouillante, 02810, Saint-Gengoulph, Aisne, Hauts-de-France',
    description:  'Try my bike!'
  },
  {
    name:         'Marine\'s bike',
    category:     'composte',
    address:      '108, Le Vernay, 71250, Chérizet, Saône-et-Loire, Bourgogne-Franche-Comté',
    description:  'Try my bike!'
  },
  {
    name:        'Elie\'s skate',
    category:     'vêtement',
    address:      '101, La Bâche, Mavilly-Mandelot, Côte-d\'Or, Bourgogne-Franche-Comté',
    description:  'A beautiful skate'
  },
  {
    name:         'Coralie\'s scooter',
    category:     'vêtement',
    address:      '196, La Reparerie, 36340, Mouhers, Indre, Centre-Val de Loire',
    description:  'Lovely trotinette'
  },
  {
    name:         'Hamza\'s palm',
    category:     'vêtement',
    address:      '4, Rue de la Poste, 37340, Ambillou, Indre-et-Loire, Centre-Val de Loire',
    description:  'Nice palm in Piccadilly'
  },
  {
    name:         'Germain\'s skateboard',
    category:     'alimentation',
    address:      '5, Route de la Gorgere, 87800, Saint-Hilaire-les-Places, Haute-Vienne, Nouvelle-Aquitaine',
    description:  'Beautiful skateboard!'
  },
  {
    name:         'Louise\'s surf',
    category:     'alimentation',
    address:      '65, 73130, Saint-Colomban-des-Villards, Auvergne-Rhône-Alpes',
    description:  'My beautiful surf'
  },
  {
    name:         'Claire\'s bike',
    category:     'alimentation',
    address:      '10, Rue de la Cavée, 80160, Fransures, Somme, Hauts-de-France',
    description:  'Try my bike!'
  },
  {
    name:         'Pierre\'s skateboard',
    category:     'marché',
    address:      '8, Rue de la Hutte Baret, 88220, Raon-aux-Bois, Vosges, Grand Est',
    description:  'A beautiful skate'
  },
  {
    name:         'Valentine\'s bike',
    category:     'marché',
    address:      '16 villa Gaudelet, 75011 Paris',
    description:  'Try my bike!'
  },
  {
    name:         'Theo\'s surf',
    category:     'marché',
    address:      'Domaine de Pixérécourt, 54220 Malzéville',
    description:  'My beautiful surf'
  },
  {
    name:         'Alexandre\'s bike',
    category:     'marché',
    address:      'Langhärdle 4, 77784 Oberharmersbach, Allemagne',
    description:  'Try my bike!'
  },
  {
    name:         'Dylan\'s skate',
    category:     'événement',
    address:      '56 rue Sedaine, 75011 Paris',
    description:  'Lovely skate'
  },
  {
    name:         'Claire\'s skate',
    category:     'événement',
    address:      '27 rue Leon Frot, 75011 Paris',
    description:  'Lovely skate'
  },
  {
    name:         'Leonie\'s skate',
    category:     'événement',
    address:      '19 rue du Temple, 75004 Paris',
    description:  'Lovely skate'
  },
  {
    name:         'Jad\'s skate',
    category:     'événement',
    address:      '9 rue jean louis renardon, 69650 Saint Germain au mont d\'or',
    description:  'Lovely skate'
  },
]

locations_attributes.each do |attribute|
  location = Location.new(attribute)
  location.save!
end
