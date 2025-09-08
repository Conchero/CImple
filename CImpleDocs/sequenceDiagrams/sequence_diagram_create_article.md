```mermaid 

sequenceDiagram
participant User
participant Blog
participant Auth
participant BDD

User ->> Blog: GET /create when not  connected
Blog ->> Auth: @login_required
Auth -x Blog: (user not logged in)
Blog ->> User: redirect to /login 
User ->> Blog: GET /create 
Blog ->> BDD: get categories 
User ->> Blog: POST /create
Blog ->> BDD: <INSERT INTO post (title, body, author_id, category_id)>
Blog ->> User: redirect to index "/"


