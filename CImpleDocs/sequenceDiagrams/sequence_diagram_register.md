```mermaid 

sequenceDiagram
participant User
participant Auth
participant BDD

User ->> Auth: POST /register
Auth ->> BDD: try "INSERT INTO user(username, password)"
BDD -x Auth: Integrity Error (username already in base)
BDD ->> Auth: (If no error)
Auth ->> User: redirect to /login



