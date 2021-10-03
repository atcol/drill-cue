package drill

#Request: {
  method?: "GET" | "DELETE" | "GET" | "POST" | "PUT" | "PATCH" | "OPTIONS"
  url: string
  headers?: string
  body?: string
}

#Plan: {
  name: string
  request: #Request
}

#Drill: {
  base: string
  concurrency: *1 | int & >0
  iterations: *1 | int & >0
  rampup?: int & >0
  plan: [#Plan, ...]
}

