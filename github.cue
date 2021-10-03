import "github.com/atcol/drill-cue/schemas:drill"

_repos: [ "rust-lang", "cue-lang" ]

_requests: [ 
    for r in _repos { 
      {
        name: "\(r)"
        request: url: "/orgs/\(r)/repos"
      }
    } 
  ]

drill.#Drill & {
  base: "https://api.github.com"
  plan: _requests
}
