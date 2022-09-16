# Artist GraphQL DB

## Setup Instructions

1. Clone the repo
2. `bundle install` (you may need to install bundler)
3. `rails db:setup` (you may need to install postgres)

To open up the rails console: `rails c`

To run the server: `rails s` (then `http://localhost:3000/`)

Most stuff lives in `app/`

Get to Graphiql through `http://localhost:3000/graphiql`

Grab one artist

```
query {artist(id:7) {name id}}
```

Grab all artists

```
query {artists {name id}}
```

Insert an artist

```
mutation {createArtist(input: {params: {name: "Kodo"}}){
	artist {name id}
}}
```

Update an artist:

```
mutation {updateArtist(input: {id: 1, params: {name: "Taylor Swift"}}){
	artist {name id}
}}
```