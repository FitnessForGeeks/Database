truncate table reviews;

insert into reviews(
	accountId,
    recipeId,
    text,
    rating,
    createdAt
)
values(
	2,
    1,
    'Very tasty',
    3.5,
    current_timestamp()
);

update recipes
set avgRating = ((avgRating * reviewCount) + 3.5)/(reviewCount + 1), reviewCount = reviewCount + 1
where id = 1;

insert into reviews(
	accountId,
    recipeId,
    text,
    rating,
    createdAt
)
values(
	2,
    1,
    'My favorite pastitsio recipe. Others\' bechamel layers are too thick and starchy-tasting. This is so good. ',
    5,
    current_timestamp()
);

update recipes
set avgRating = ((avgRating * reviewCount) + 5)/(reviewCount + 1), reviewCount = reviewCount + 1
where id = 1;