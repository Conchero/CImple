```mermaid

---
title: CImple Class Diagram
---

classDiagram

class User{
    - int id 
    - string username
    - string password 
}

class Category{
    - int id 
    - string title 
}

class Post{
    - int id
    - string title
    - string body
    - DateTime created_at
    - int author_id
    - int category_id
}

class UserPost{
    - int id
    - int post_id 
    - int author_id 
}

class PostCategory{
    - int id
    - int post_id 
    - int category_id 
}


User "1"-->"1" UserPost
User "1"-->"*" Post
Post "1"-->"1" UserPost

Category "1"-->"*" Post
Post "1"-->"1" PostCategory
Category "1"-->"1" PostCategory

