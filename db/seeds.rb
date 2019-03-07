Location.destroy_all
puts 'destroyed all'

locations_attributes = [
  {
    name:         'Composteur du jardin partagé du P\'tit Vertbois',
    category:     'compost',
    address:      '5 rue Vaucanson, 75003 Paris',
    description:  'Une aire de compostage a été installée au jardin partagé du P’tit Verbois géré par la Régie de quartier Paris Centre. Elle comprend des bacs classiques et un lombricomposteur.',
    photo:        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfgGxw9RMXQCLejCPTFjen-ILBl8ZQ7vg0t7eOl1rO9Nnd3AudKg'
  },
  {
    name:         'Composteur du jardin des Rosiers',
    category:     'compost',
    address:      'Jardin des Rosiers, 75004 Paris',
    description:  'Ce composteur de quartier a été lancé par le Conseil de quartier St-Gervais et l’association Les jardiniers du 4è.',
    photo:        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfgGxw9RMXQCLejCPTFjen-ILBl8ZQ7vg0t7eOl1rO9Nnd3AudKg'
  },
  {
    name:         'Compost du Poireau agile',
    category:     'compost',
    address:      'Square Villemin, 75010 Paris',
    description:  'Les bacs sont ouverts à tou-tes, comme le jardin, à la condition d\'adhére à l\'association, de suivre les consignes et de participer aux travaux importants de manutention.',
    photo:        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfgGxw9RMXQCLejCPTFjen-ILBl8ZQ7vg0t7eOl1rO9Nnd3AudKg'
  },
  {
    name:         'Compostaparis - MDA 12',
    category:     'compost',
    address:      '181 avenue Daumesnil, 75012 Paris',
    description:  'Ce composteur est pour l’instant complet, mais vous pouvez vous inscrire sur la liste d’attente en vous rendant sur place.',
    photo:        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfgGxw9RMXQCLejCPTFjen-ILBl8ZQ7vg0t7eOl1rO9Nnd3AudKg'
  },
  {
    name:         'Lombricomposteur du Centre d\'animation Goscinny',
    category:     'compost',
    address:      '14 rue Goscinny, 75013 Paris',
    description:  'Le Centre d’animation Goscinny gère un lombricomposteur collectif.',
    photo:        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfgGxw9RMXQCLejCPTFjen-ILBl8ZQ7vg0t7eOl1rO9Nnd3AudKg'
  },
  {
    name:         'Compost 13 - Square Héloïse et Abélard',
    category:     'compost',
    address:      '22 rue Pierre Gourdault, 75013 Paris',
    description:  'Le composteur est pour l’instant complet (200 foyers) et la liste d’attente compte une soixantaine de personnes. Permanences : mercredi 16h30-17h30 et samedi 10h-12h.',
    photo:        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfgGxw9RMXQCLejCPTFjen-ILBl8ZQ7vg0t7eOl1rO9Nnd3AudKg'
  },
  {
    name:         'Composteur du jardin partagé George Boudry',
    category:     'compost',
    address:      '18 square Dunois, 75013 Paris',
    description:  'L’association CED 13 gère un jardin partagé qui accueille un composteur réservé aux membres du jardin partagé.',
    photo:        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfgGxw9RMXQCLejCPTFjen-ILBl8ZQ7vg0t7eOl1rO9Nnd3AudKg'
  },
  {
    name:         'Composteur Mouton Duvernet',
    category:     'compost',
    address:      '20 rue Saillard, 75014 Paris',
    description:  'Permanences : 1er et 3è samedi du mois, 2è dimanche du mois, 10h30-11h30.',
    photo:        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfgGxw9RMXQCLejCPTFjen-ILBl8ZQ7vg0t7eOl1rO9Nnd3AudKg'
  },
  {
    name:         'Composteur Lamarque',
    category:     'compost',
    address:      '8 place Denfert-Rochereau, 75014 Paris',
    description:  'Une quarantaine de foyer participent déjà. Il est nécessaire de s’inscrire pour y déposer ses déchets. Les inscrit-es assurent 1 à 2 permanences par an, s’engagent à bien trier leurs déchets et à entretenir les bacs.',
    photo:        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfgGxw9RMXQCLejCPTFjen-ILBl8ZQ7vg0t7eOl1rO9Nnd3AudKg'
  },
  {
    name:         'Composteur du jardin Le Lapin ouvrier',
    category:     'compost',
    address:      'Place de la Garenne, 75014 Paris',
    description:  'Composteur du jardin partagé "Le Lapin ouvrier", géré par l\'association Le lapin de la garenne. L’adhésion à l’association (10 €) n’est pas obligatoire.',
    photo:        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfgGxw9RMXQCLejCPTFjen-ILBl8ZQ7vg0t7eOl1rO9Nnd3AudKg'
  },
  {
    name:         'Composteurs du jardin partagé Fleur de bitume',
    category:     'compost',
    address:      'Jardin Delpayrat, 75014 Paris',
    description:  'Les composteurs du jardin partagé Fleur de bitume, gérés par l’association Fleur de bitume et situés à l’intérieur du jardin public Delpayrat, sont accessibles à tout-es, aux heures d’ouverture du jardin public Delpayrat.',
    photo:        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfgGxw9RMXQCLejCPTFjen-ILBl8ZQ7vg0t7eOl1rO9Nnd3AudKg'
  },
  {
    name:         'Point de compostage du Quartier Paris 15',
    category:     'compost',
    address:      '24 rue Paul Barruel, 75015 Paris',
    description:  'Ce composteur est une initiative de l’association du jardin partagé de la Félicité. Il n’est pas nécessaire d’adhérer à l’association pour contribuer au composteur.',
    photo:        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfgGxw9RMXQCLejCPTFjen-ILBl8ZQ7vg0t7eOl1rO9Nnd3AudKg'
  },
  {
    name:         'Points de collecte Folies d’humus',
    category:     'compost',
    address:      'Piscine Henry de Montherlant, 60 boulevard Lannes, 75016 Paris',
    description:  'Contactez l’association pour obtenir un bio-sceau et obtenir les informations nécessaires pour participer.',
    photo:        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfgGxw9RMXQCLejCPTFjen-ILBl8ZQ7vg0t7eOl1rO9Nnd3AudKg'
  },
  {
    name:         'Points de collecte Folies d’humus',
    category:     'compost',
    address:      'Stade de la Muette, 75016 Paris',
    description:  'Contactez l’association pour obtenir un bio-sceau et obtenir les informations nécessaires pour participer.',
    photo:        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfgGxw9RMXQCLejCPTFjen-ILBl8ZQ7vg0t7eOl1rO9Nnd3AudKg'
  },
  {
    name:         'Composteurs de la Ferme urbaine des Amis REcycleurs',
    category:     'compost',
    address:      '83 boulevard Ornano, 75018 Paris',
    description:  'La Ferme urbaine de la REcyclerie est équipée de 2 composteurs, qui reçoivent déjà les déchets organiques du restaurant mais peut également accueillir les vôtres.',
    photo:        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfgGxw9RMXQCLejCPTFjen-ILBl8ZQ7vg0t7eOl1rO9Nnd3AudKg'
  },
  {
    name:         'Composteur du jardin des Deux Nèthes',
    category:     'compost',
    address:      '24 avenue de Clichy, 75018 Paris',
    description:  'Le jardin est accessible aux horaires d’ouverture des parcs de la ville de Paris. Il n’est pas nécessaire d’adhérer au jardin partagé pour utiliser le composteur.',
    photo:        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfgGxw9RMXQCLejCPTFjen-ILBl8ZQ7vg0t7eOl1rO9Nnd3AudKg'
  },
  {
    name:         'Composteur collectif des Gens de Cottin',
    category:     'compost',
    address:      '16 rue Jean Cottin, 75018 Paris',
    description:  'Le composteur est sur le trottoir, adossé aux grilles de la résidence Boucry, accessible à tout-es sans condition.',
    photo:        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfgGxw9RMXQCLejCPTFjen-ILBl8ZQ7vg0t7eOl1rO9Nnd3AudKg'
  },
  {
    name:         'Composteur du Moissonneur des Lilas',
    category:     'compost',
    address:      '9 Avenue de la Porte des Lilas, 75019 Paris',
    description:  'Composteur du jardin partagé Le Moissonneur des Lilas, situé à l’intérieur du parc Serge Gainsbourg.',
    photo:        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfgGxw9RMXQCLejCPTFjen-ILBl8ZQ7vg0t7eOl1rO9Nnd3AudKg'
  },
  {
    name:         'Composteurs de la Cabane Fleury',
    category:     'compost',
    address:      'square Emmanuel Fleury, 75020 Paris',
    description:  'Les composteurs collectifs sont ouverts à tout-es. Ils sont gérés en autonomie par les participant-es.',
    photo:        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfgGxw9RMXQCLejCPTFjen-ILBl8ZQ7vg0t7eOl1rO9Nnd3AudKg'
  },
  {
    name:         'Composteur du jardin 56 Saint-Blaise',
    category:     'compost',
    address:      '56 rue Saint-Blaise, 75020 Paris',
    description:  'Initié par l’Atelier d’Architecture Autogéré, le 56 est un espace culturel écologique géré par les habitant-es du quartier.',
    photo:        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfgGxw9RMXQCLejCPTFjen-ILBl8ZQ7vg0t7eOl1rO9Nnd3AudKg'
  },
  {
    name:         'Composteur du jardin partagé de la cité Aubry',
    category:     'compost',
    address:      '2 cité Aubry, 75020 Paris',
    description:  'Il faut être adhérent-e du jardin partagé pour utiliser le composteur (15 €/an) et s’engager dans les activités de l’association .',
    photo:        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfgGxw9RMXQCLejCPTFjen-ILBl8ZQ7vg0t7eOl1rO9Nnd3AudKg'
  },
  {
    name:         'Adom',
    category:     'vêtement',
    address:      '35 Rue de la Roquette, 75011 Paris',
    description:  'Des vêtements, chaussures et accessoires des 60’s aux 80’s.',
    photo:        'https://images.unsplash.com/photo-1520006403909-838d6b92c22e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
  },
  {
    name:         'Bleach Vintage',
    category:     'vêtement',
    address:      '93 rue Saint-Denis, 75001 Paris',
    description:  'Une majorité des articles viennent tout droit des USA ou des UK et quelques vestes de Pologne ou Roumanie.',
    photo:        'https://images.unsplash.com/photo-1520006403909-838d6b92c22e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
  },
  {
    name:         'Emmaüs Alternatives',
    category:     'vêtement',
    address:      '22 Boulevard Beaumarchais, 75011 Paris',
    description:  'Bien que n’étant pas une friperie à part entière, cette association permet de trouver de jolis habits à des bons prix avec notamment la vente au kilo.',
    photo:        'https://images.unsplash.com/photo-1520006403909-838d6b92c22e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
  },
  {
    name:         'Episode',
    category:     'vêtement',
    address:      '16 Rue de Tiquetonne, 75002 Paris',
    description:  'Bon rapport qualité/prix. Des pièces de qualité à un prix qui reste raisonnable.',
    photo:        'https://images.unsplash.com/photo-1520006403909-838d6b92c22e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
  },
  {
    name:         'Free’p’star',
    category:     'vêtement',
    address:      '61 Rue de la Verrerie, 75004 Paris',
    description:  'Une friperie avec des prix bas. Seul bémol, il faut fouiller car les habits ne sont pas vraiment classés.',
    photo:        'https://images.unsplash.com/photo-1520006403909-838d6b92c22e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
  },
  {
    name:         'Free’p’star',
    category:     'vêtement',
    address:      '8 Rue Sainte Croix de la Bretonnerie, 75004 Paris',
    description:  'Une friperie avec des prix bas. Seul bémol, il faut fouiller car les habits ne sont pas vraiment classés.',
    photo:        'https://images.unsplash.com/photo-1520006403909-838d6b92c22e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
  },
  {
    name:         'Guerrisol',
    category:     'vêtement',
    address:      '45 Boulevard de la Chapelle, 75018 Paris',
    description:  'Des habits à prix vraiment mini.',
    photo:        'https://images.unsplash.com/photo-1520006403909-838d6b92c22e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
  },
  {
    name:         'Guerrisol',
    category:     'vêtement',
    address:      '17 Boulevard de Rochechouart, 75018 Paris',
    description:  'Des habits à prix vraiment mini.',
    photo:        'https://images.unsplash.com/photo-1520006403909-838d6b92c22e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
  },
  {
    name:         'Hippy Market',
    category:     'vêtement',
    address:      '41 Rue du Temple, 75004 Paris',
    description:  'Le plus grand réseau mondial de vêtements vintage, axé 70’s.',
    photo:        'https://images.unsplash.com/photo-1520006403909-838d6b92c22e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
  },
  {
    name:         'Hippy Market',
    category:     'vêtement',
    address:      '3, rue de Turbigo , 75001 Paris',
    description:  'Le plus grand réseau mondial de vêtements vintage, axé 70’s.',
    photo:        'https://images.unsplash.com/photo-1520006403909-838d6b92c22e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
  },
  {
    name:         'Mamie',
    category:     'vêtement',
    address:      '73 Rue de Rochechouart, 75018 Paris',
    description:  'La boutique la plus rétro, avec des articles de choix datant des 30’s aux 80’s.',
    photo:        'https://images.unsplash.com/photo-1520006403909-838d6b92c22e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
  },
  {
    name:         'Mamie Blue',
    category:     'vêtement',
    address:      '69 Rue de Rochechouart, 75018 Paris',
    description:  'La boutique la plus rétro, avec des articles de choix datant des 30’s aux 80’s.',
    photo:        'https://images.unsplash.com/photo-1520006403909-838d6b92c22e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
  },
  {
    name:         'Oh Lumière',
    category:     'vêtement',
    address:      '21 Avenue de la République, 75011 Paris',
    description:  'Des vêtements principalement 80’s avec une large gamme destinée aux hommes.',
    photo:        'https://images.unsplash.com/photo-1520006403909-838d6b92c22e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
  },
  {
    name:         'Pretty Box',
    category:     'vêtement',
    address:      '46 Rue de Saintonge, 75003 Paris',
    description:  'Le temple du vintage, imprégné de la mode des 70’s-80’s.',
    photo:        'https://images.unsplash.com/photo-1520006403909-838d6b92c22e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
  },
    {
    name:         'Vintage Désir',
    category:     'vêtement',
    address:      '32 Rue des Rosiers, 75004 Paris',
    description:  'Une friperie à prix doux, avec une sélection spéciale de chapeaux.',
    photo:        'https://images.unsplash.com/photo-1520006403909-838d6b92c22e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
  },
    {
    name:         'RAG Vintage',
    category:     'vêtement',
    address:      '81 Rue Saint Honoré, 75001 Paris',
    description:  'Une friperie très chic.',
    photo:        'https://images.unsplash.com/photo-1520006403909-838d6b92c22e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
  },
  {
    name:         'Thx God I’m a VIP',
    category:     'vêtement',
    address:      '12 Rue de Lancry, 75010 Paris',
    description:  'Des habits griffés à la petite fripe pas chère, ici on trouve de tout, pour tous les porte-monnaies.',
    photo:        'https://images.unsplash.com/photo-1520006403909-838d6b92c22e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
  },
  {
    name:         'Vintage story 66',
    category:     'vêtement',
    address:      '66 rue Saint-Denis, 75001 Paris',
    description:  '500m2 de friperie, avec des pièces allant des années 20 aux années 90.',
    photo:        'https://images.unsplash.com/photo-1520006403909-838d6b92c22e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
  },
  {
    name:         'Le Coffre',
    category:     'vêtement',
    address:      '26 rue de Ménilmontant, 75020 Paris ',
    description:  'Le coffre propose aussi pour les chineurs un système de bac ou la couleur fait le prix.',
    photo:        'https://images.unsplash.com/photo-1520006403909-838d6b92c22e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
  },
  {
    name:         'Le Coffre',
    category:     'vêtement',
    address:      '20 rue des Dames, 75017 Paris',
    description:  'Le coffre propose aussi pour les chineurs un système de bac ou la couleur fait le prix.',
    photo:        'https://images.unsplash.com/photo-1520006403909-838d6b92c22e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
  },
  {
    name:         'Le Coffre',
    category:     'vêtement',
    address:      '29 bd des Batignolles, 75008 Paris',
    description:  'Le coffre propose aussi pour les chineurs un système de bac ou la couleur fait le prix.',
    photo:        'https://images.unsplash.com/photo-1520006403909-838d6b92c22e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
  },
  {
    name:         'Le Coffre',
    category:     'vêtement',
    address:      '62 rue Rochechouart, 75009 Paris',
    description:  'Le coffre propose aussi pour les chineurs un système de bac ou la couleur fait le prix.',
    photo:        'https://images.unsplash.com/photo-1520006403909-838d6b92c22e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
  },
  {
    name:         'Kilo shop',
    category:     'vêtement',
    address:      '125 boulevard Saint Germain, 75006 Paris',
    description:  'Boutique vintage où l’on pèse ses fringues comme les légumes du marché.',
    photo:        'https://images.unsplash.com/photo-1520006403909-838d6b92c22e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
  },
]

locations_attributes.each do |attribute|
  location = Location.new(attribute)
  location.save!
end

locations = JSON.parse(File.read('trimobil.json'))
locations.each do |raw_location|
  location = Location.new(
    name: raw_location["fields"]["type"],
    category: "recyclage",
    address:"#{raw_location["fields"]["adresse"]}, #{raw_location["fields"]["code_postal"]}, #{raw_location["fields"]["ville"]}",
    description: "#{raw_location["fields"]["jours_de_tenue"]}, #{raw_location["fields"]["horaires"]}.
    Dans un trimobile, vous pouvez déposer : le petit électroménager, le matériel informatique, le verre, la vaisselle, la faïence, les gros cartons d'emballage pliés, les lampes, les cartouches d'encre, les piles et petites batteries, les produits dangereux de bricolage et jardinage, les radiographies, les textiles, les petits encombrants.",
    photo: "https://api-site-cdn.paris.fr/images/104038?w=Medium"
  )
  location.save
end

locations = JSON.parse(File.read('trilib.json'))
locations.each do |raw_location|
  location = Location.new(
    name: "Station Trilib",
    category: "recyclage",
    address:"#{raw_location["fields"]["localisationfo_street"]}, #{raw_location["fields"]["localisationfo_postalcode"]}, #{raw_location["fields"]["localisationfo_town"]}",
    description: "Les espaces de tri sont composés de 4 à 6 modules de tri sélectif ouverts 24h/24.",
    photo: "https://api-site-cdn.paris.fr/images/84438?w=Large",
    status: "validate"
  )
  location.save
end


# locations = JSON.parse(File.read('verre.json'))
# locations.each do |raw_location|
#   location = Location.new(
#     name: "Colonne à verre",
#     category: "recyclage",
#     address:"#{raw_location["fields"]["ad_nvo"]}, #{raw_location["fields"]["voie"]}, #{raw_location["fields"]["ardt"]}, Paris",
#     description: "Point de recyclage du verre",
#     photo: "https://images.unsplash.com/photo-1532996122724-e3c354a0b15b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
#     status: "validate"
#   )
#   location.save
# end

locations = JSON.parse(File.read('marches.json'))
locations.each do |raw_location|
  location = Location.new(
    name: raw_location["fields"]["marche"],
    category: "marché",
    address:raw_location["fields"]["adresse_complete_poi_approchant"],
    description: "Marché #{raw_location["fields"]["type"]}.
    #{"Lundi : #{raw_location["fields"]["lundi"]}\n" if raw_location["fields"]["lundi"]}#{"Mardi : #{raw_location["fields"]["mardi"]}\n" if raw_location["fields"]["mardi"]}#{"Mercredi : #{raw_location["fields"]["mercredi"]}\n" if raw_location["fields"]["mercredi"]}#{"Jeudi : #{raw_location["fields"]["jeudi"]}\n" if raw_location["fields"]["jeudi"]}#{"Vendredi : #{raw_location["fields"]["vendredi"]}\n" if raw_location["fields"]["vendredi"]}#{"Samedi : #{raw_location["fields"]["samedi"]}\n" if raw_location["fields"]["samedi"]}#{"Dimanche : #{raw_location["fields"]["dimanche"]}\n" if raw_location["fields"]["dimanche"]}",
    photo: "https://images.unsplash.com/photo-1488459716781-31db52582fe9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
    status: "validate"
  )
  location.save
end

locations = JSON.parse(File.read('jardinspartages.json'))
locations.each do |raw_location|
  p raw_location
  location = Location.new(
    name: "#{raw_location["fields"]["type_jard"]}, #{raw_location["fields"]["nom_gerant"]}",
    category: "jardin partagé",
    address: "#{raw_location["fields"]["adresse"]}, #{raw_location["fields"]["arrdt"]}, Paris",
    description: "Le jardin partagé est un espace vert cultivé et animé par les habitants.",
    photo: "https://images.unsplash.com/photo-1500651230702-0e2d8a49d4ad?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
    status: "validate"
  )

  location.save!
end

puts 'Seeded'

dania_review = Review.create(rating: 2, comment: "blbalabla", location_id: 29, user_id: 10)
