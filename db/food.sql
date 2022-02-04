DROP TABLE IF EXISTS `favorite`;
DROP TABLE IF EXISTS `recipes`;
DROP TABLE IF EXISTS `users`;

CREATE TABLE `recipes` (
`id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
`title`VARCHAR(150) NOT NULL,
`picture`VARCHAR(255),
`description`TEXT NOT NULL,
 ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO `recipes`(`title`, `picture`, `description`) VALUES
('Fluffy Pancake', 
'https://media.istockphoto.com/photos/pancakes-with-berries-and-maple-syrup-picture-id161170090', 
'Votre marché pour 24 pièces d’environ 5 cm de diamètre
2 jaunes d’œufs
60 g de sucre
60 g de lait
40 g de farine
1/2 c à c de levure
4 blancs d’œufs
1/4 de c à c de vinaigre – Émilie avait mis de la crème de tartre, ce que je n’avais pas. J’ai donc remplacé l’ingrédient manquant par du vinaigre. Ce qui permet au blanc d’œuf de bien tenir.
La préparation des Fluffy Pancakes
Mélangez les 2 jaunes d’œufs avec la moitié du sucre. Incorporez le lait petit à petit.Mélangez la levure avec la farine. Tamisez sur la préparation à base de jaunes d’oeufs.
Battez les 4 blancs d’œuf avec le vinaigre. Ajoutez le sucre restant. La structure doit être ferme et souple. Incorporez les blancs d’œufs délicatement en 3 fois dans la préparation à base de jaunes d’œufs. Faites fondre un peu de beurre dans un poêle antiadhésive avec couvercle. 
Déposez de la pâte, laissez cuire 3-4 minutes à feu doux et avec couvercle. Retournez-les et poursuivez la cuisson de l’autre côté, toujours avec le couvercle. Astuce
Vous pouvez les cuire dans un emporte-pièces rond en inox pour qu’ils aient vraiment une hauteur spectaculaire ' ),
('Brochettes de Tofu Mariné et Légumes Grillés' , 'https://media.istockphoto.com/photos/barbecued-tofu-skewers-picture-id184219445', 'Ingrédients
Tofu Mariné
1 bloc de tofu ferme ou extra-ferme
¼ tasse de sauce soya
¼ tasse de bouillon de légumes
2 c. à table de sirop d''érable
½ c. à thé de fumée liquide
1 c. à table de jus de citron
1 c. à table de pâte de tomates
1 c. à table dhuile d''olive
2 gousses d''ail, râpées.
Brochette de légumes
1 oignon rouge
2 courgettes
Une dizaine de tomates cerises
1 poivron jaune.
Directions
Couper le tofu en cubes.
Dans un grand bol, mélanger tous les ingrédients de la marinade.
Déposer les cubes de tofu et laisser mariner au moins 1 heure ou toute la nuit.
Brochette de Légumes
Couper l''oignon rouge en gros morceaux, les courgettes en rondelles et les poivrons jaunes en gros cubes.
Monter les brochettes en alternant les cubes de tofu mariné et les légumes.
Aligner les brochettes sur la grille du BBQ. (Pour une cuisson au four, préchauffer le four à 205°C /400°F et disposer les brochettes sur une plaque à biscuits recouverte du papier parchemin.)
Cuire 10 minutes de chaque côté en badigeonnant du reste de marinade.'),
('Magrets de canard au miel', 'https://media.istockphoto.com/photos/duck-fillet-with-garlic-herb-and-sauce-picture-id1035031584', 'INGRÉDIENTS : 4 PERS.
2 gros magrets de canard
6 échalotes
10 cl de vinaigre balsamique
1 c. à soupe de miel
sel, poivre
1.
Retirez l''excès de gras sur le côté des magrets mais laissez la graisse de canard sur le dessus. À l’aide d’un couteau de cuisine bien aiguisé, réalisez des entailles en forme de croisillons dans la peau du canard jusqu’à la chair. Salez et poivrez. 
2.
Faites chauffer une grande poêle antiadhésive sans matière grasse. Lorsqu’elle est bien chaude, déposez-y les magrets côté peau. Laissez-les cuire entre 5 et 10 min en arrosant la chair avec le gras fondu du magret de canard. Retirez les magrets. 
3.
Videz l’excès de graisse et remettez le canard dans la poêle, côté chair cette fois-ci. Poursuivez la cuisson du magret pendant 5 min environ. Retirez-les du feu et réservez-les au chaud en les enveloppant dans du papier d’aluminium. 
4.
Épluchez les échalotes et hachez-les. Dans la même poêle, faites revenir les échalotes pendant 5 min. Déglacez au vinaigre balsamique. À l’aide d’une spatule en bois, grattez bien les sucs de cuisson dans le fond de la poêle. Ajoutez le miel et portez 1 min à ébullition. Découpez les magrets de canard poêlés en tranches et nappez-les de sauce avant de déguster. Servez-les accompagnés des pâtes fraîches. 
ASTUCES
Choisissez un magret de canard bien bombé. Pensez bien à quadriller la peau à l’aide d’un couteau bien aiguisé pour faciliter la cuisson de la chair en profondeur. Débutez toujours la cuisson du magret côté peau pour que la viande rende sa graisse. Vous n’aurez donc pas besoin d’ajouter de matière grasse dans votre poêle avant cuisson.'),
('Rostis de pommes de terre', 
'https://media.istockphoto.com/photos/potato-pancakes-with-garlic-picture-id613147574',
'INGRÉDIENTS : 4 PERS.
4 pommes de terre bintje
1 c. à soupe de farine de blé
1 c. à soupe d''huile de tournesol
2 œufs
1 oignon
Sel, poivre
PRÉPARATION :
1.
Épluchez les pommes de terre et l''oignon, râpez-les.
2.
Pressez la préparation entre les mains pour retirer le maximum de jus.
3.
Dans un saladier, mélangez les pommes de terre, les œufs et la farine.
4.
Salez et poivrez.
5.
Dans une grande poêle, versez une cuillère d''huile et faites chauffer.
6.
À l''aide d''une grande cuillère, formez les galettes et placez-les dans une poêle en les aplatissant.
'),
('Nouilles sautées', 
'https://media.istockphoto.com/photos/bowls-with-chow-mein-picture-id1038108608',
'Ingrédients
Chou kale : 5 feuilles
Poivron rouge : 1
Oignon : 1
Nouilles japonaises : 200 g
Poulet : 200 g
Huile neutre
Sucre : 1 pincée de sucre
Cumin : 1 pincée
Sauce soja
Poivre
Déroulé de la recette
J''épluche et j''émince l''oignon et je le fais revenir dans une poêle avec un filet d''huile et le cumin.
Pendant ce temps, je découpe le poivron et l''ajoute aux oignons.
Je découpe le poulet en morceaux, je l''ajoute dans la poêle bien chaude et je laisse bien dorer.
A part, je fais cuire les nouilles dans un grand volume d''eau bouillante salée en suivant les indications du paquet, puis je les égoutte.
Je retire les parties dures du chou kale, je lave ses feuilles, puis je les découpe avant de les ajouter dans la poêle en même temps que les nouilles.
J''ajoute la pincée de sucre, un peu de sauce soja, le poivre et je mélange bien.
Une petite variante : Je peux remplacer le poulet par du tofu ou du tempeh pour une version végétarienne et ajouter quelques herbes aromatiques à ma préparation.' ),
('Spaghetti alla napoletana', 
'https://media.istockphoto.com/photos/spaghetti-in-a-dish-on-a-white-background-picture-id1144823591',
'Ingrédients
250 g de spaghetti
800 g de tomates en conserve
2 c. à c. de basilic frais
Persil frais et ciselé
1 c. à s. d''huile d''olive
Sel ou sel fin
Poivre
Préparation
Passez les tomates au tamis et écrasez bien la pulpe.

Faites chauffer l''huile dans une casserole, ajouter cette purée de tomate et portez le tout à ébullition.
Salez et poivrez puis laissez mijoter à feu doux pendant 30 à 40 minutes sans couvrir.
Une fois que la sauce a réduit de moitié, ajoutez le basilic et le persil.
Faites cuire vos spaghettis, égouttez-les et mélangez-les avec la sauce.
Bon appétit !');


CREATE TABLE `users` (
  `id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
);

INSERT INTO `users` (`email`, `password`) VALUES
  ('francesco@food.com', 'password');
;


CREATE TABLE `favorite`(
`id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
`recipe_id`INT NOT NULL,
`user_id`INT NOT NULL,
FOREIGN KEY (recipe_id) REFERENCES recipes(id),
FOREIGN KEY (user_id) REFERENCES users(id)
);