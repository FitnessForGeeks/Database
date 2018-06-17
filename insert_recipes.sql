truncate table recipes;

insert into recipes(
	title,
    accountId,
    createdAt,
    description,
    ingredients,
    image,
    calories,
    directions
) 
values(
	'Kuchen',
    1,
    CURRENT_TIMESTAMP(),
    'This cake won me First Prize at the county fair last year. It is very chocolaty.',
    '1 package devil\'s food cake mix;1 package instant chocolate pudding mix;1 cup sour cream;1 cup vegetable oil;4 eggs;1/2 cup warm water;2 cups semisweet chocolate chips',
    'https://images.media-allrecipes.com/userphotos/560x315/1130307.jpg',
    2000,
    'Preheat oven to 350 degress F (175 degrees C).;
    In a large bowl, mix together the cake and pudding mixes, sour cream, oil, beaten eggs and water. Stir in the chocolate chips and pour batter into a well greased 12 cup bundt pan.;
    Bake for 50 to 55 minutes, or until top is springey to the touch and a wooden toothpick inserted comes out clean.
	Cool cake thoroughly in pan at least an hour anda a half before inverting onto a plate if desired, dust the cake with powdered sugar.'
);

insert into recipes(
	title,
    accountId,
    createdAt,
    description,
    image,
    calories,
    directions
) 
values(
	'Keks',
    1,
    CURRENT_TIMESTAMP(),
    'aklösdjfköasdfjkdsalöfkjdsaöfladksflöasdkjflsöadfkjsdaöflksaöfldkföalsdkfjasödlkfjasöldfkjasöldfkjaslödfkjaslödkfjlaöskdjfölasjkdflöaskdfjöaslkdjf',
    'https://www.duden.de/_media_/full/K/Keks-201100285851.jpg',
    739,
    'aölskdjföasdf'
);

insert into recipes(
	title,
    accountId,
    createdAt,
    image,
    calories,
    directions
) 
values (
	'Pizza',
    1,
    CURRENT_TIMESTAMP(),
    'http://www.delonghi.com/Global/recipes/multifry/pizza_fresca.jpg',
    495,
    ''
);

insert into recipes(
	title,
    accountId,
    createdAt,
    image,
    calories,
    directions
) 
values (
	'Fisch',
    1,
    CURRENT_TIMESTAMP(),
    'https://static.chefkoch-cdn.de/ck.de/rezepte/52/52527/792482-960x720-fisch-in-chilibutter-in-alufolie.jpg',
    1630,
    ''
);

insert into recipes(
	title,
    accountId,
    createdAt,
    image,
    calories,
    directions
) 
values (
	'Nudeln',
    1,
    CURRENT_TIMESTAMP(),
    'https://www.fuersie.de/sites/fuersie/files/styles/590x443/public/images/pasta.jpg',
    1,
    ''
);