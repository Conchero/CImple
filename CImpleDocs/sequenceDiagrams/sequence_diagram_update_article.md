```mermaid 

sequenceDiagram
participant User
participant Blog
participant Auth
participant BDD

User ->> Blog: GET {:id}/update when not  connected
Blog ->> Auth: @login_required
Auth -x Blog: (user not logged in)
Blog ->> User: redirect to /login 
User ->> Blog: GET {:id}/update 
Blog ->> Blog: getPost(id) 
User ->> Blog: POST {:id}/update
Blog ->> BDD: < 'UPDATE post SET title = ?, body = ?, category_id = ?' ' WHERE id = ?',)>
Blog ->> User: redirect to index "/"



