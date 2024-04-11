[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-24ddc0f5d75046c5622901739e7c5dd533143b0c8e959d652212380cedb1ea36.svg)](https://classroom.github.com/a/do2w2qzx)
# Lab 05

In this lab, you have to create the basic tables and models of the 'Y' program's database, using Migrations and ActiveRecord. Additionally, you should be able to perform simple queries to the database.

## Instructions

### Create Tables

1. Create a migration for the `users` table with the following fields:

- `name` (string)
- `email` (string)
- `password` (string)
- `created_at` (datetime)
- `updated_at` (datetime)

2. Create a migration for the `posts` table with the following fields:

- `title` (string)
- `content` (text)
- `user_id` (integer)
- `published_at` (datetime)
- `answers_count` (integer)
- `likes_count` (integer)
- `created_at` (datetime)
- `updated_at` (datetime)

All this table should have a model associated with them.

### Seed Population

1. Create a `seeds.rb` file in the `db` directory and populate the database with 5 users and 10 posts. All information should be random.

### Queries

Write the code for the following queries:

1 - Get all users

```ruby
all_users = User.all
```

2 - Get the user with id 3

```ruby
user_with_id_3 = User.find_by(id: 3)
```

3 -  Get the posts with more than 100 likes

```ruby
posts_with_more_than_100_likes = Post.where("likes_count > ?", 100)
```

4 - Get the posts with more than 10 answers and less than 20 likes

```ruby
posts_with_more_than_10_answers_and_less_than_20_likes = Post.where("answers_count > ? AND likes_count < ?", 10, 20)
```

5 - Get the users created in the month of January

```ruby
posts_created_in_january = Post.where("EXTRACT(MONTH FROM created_at) = ?", 1)

```

6 - Change the name of the user with id 3 to "Juan"

```ruby
user_with_id_3 = User.find_by(id: 3)
user_with_id_3.update(name: "Juan")
```

7 - Delete the post with id 5

```ruby
post_with_id_5 = Post.find_by(id: 5)
post_with_id_5.destroy if post_with_id_5
```