-- CREATE TABLE users (
--   user_id SERIAL PRIMARY KEY UNIQUE,
--   user_name VARCHAR(20),
--   first_name VARCHAR(20),
--   last_name VARCHAR(20),
--   birth_date DATE,
--   user_email VARCHAR(30),
--   user_allergy VARCHAR(120)
--   );

-- ALTER TABLE users
-- 	ADD user_password VARCHAR(25);

-- CREATE TABLE recipes (
--   recipe_id SERIAL PRIMARY KEY UNIQUE,
--   author_id INT NOT NULL REFERENCES authors(author_id),
--   grocery_list VARCHAR NOT NULL REFERENCES groceries(grocery_list),
--   recipe_updates VARCHAR(500),
--   recommendation_id INT NOT NULL REFERENCES recommendations(recommendation_id)
--   );

--  CREATE TABLE authors (
--   author_id SERIAL PRIMARY KEY UNIQUE,
--   user_email VARCHAR NOT NULL REFERENCES users(user_email),
--   user_password VARCHAR NOT NULL REFERENCES users(user_password),
--	 recipe_id INT NOT NULL REFERENCES recipes(recipe_id)
--   );

-- CREATE TABLE groceries (
-- 	grocery_id SERIAL PRIMARY KEY UNIQUE,
--   author_id INT NOT NULL REFERENCES authors(author_id),
--   user_id INT NOT NULL REFERENCES users(user_id),
--   saved_recipe_id INT NOT NULL REFERENCES saved_recipes(saved_recipes_id),
--   grocery_list VARCHAR(500)
--   );
  
-- CREATE TABLE comments_ratings (
--   comment_rating_id SERIAL PRIMARY KEY UNIQUE,
--   user_id INT NOT NULL REFERENCES users(user_id),
--   recipe_id INT NOT NULL REFERENCES recipes(recipe_id),
--   notify_id INT NOT NULL REFERENCES notifications(notify_id)
--   );

-- CREATE TABLE notifiaction (
--   notify_id SERIAL PRIMARY KEY UNIQUE,
--   user_id INT NOT NULL REFERENCES users(user_id),
--   user_email VARCHAR NOT NULL REFERENCES  users(user_email),
--   recipe_id VARCHAR(500),
--   recommendation_id INT NOT NULL REFERENCES recipe(recipe_id)
--   );

-- CREATE TABLE saved recipes (
--   saved_recipes SERIAL PRIMARY KEY UNIQUE,
--   user_id INT NOT NULL REFERENCES users(user_id),
--   user_email VARCHAR NOT NULL REFERENCES  users(user_email),
--   grocery_id VARCHAR(500) INT NOT NULL REFERENCES grocery(grocery_id)
--   );