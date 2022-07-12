# About

Testing the performance of some languages and enviroments using the [Sieve of Eratosthenes](https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes) algorithm

# Results
## [Node](https://github.com/nodejs/node)
#### Commands
##### Run
```console
time node prime.js
```

#### Result
- 9.398s
- 9.317s
- 9.495s
- 9.225s (lowest)
- 9.547s (highest)

Medium: 9.3964s
    
## [Bun](https://github.com/oven-sh/bun)
#### Commands
##### Run
```console
time bun run prime.js
```

#### Result
- 0.995s (highest)
- 0.951s (lowest)
- 0.995s (highest)
- 0.951s (lowest)
- 0.954s

Medium: 0.9692s

## [Deno](https://github.com/denoland/deno)
#### Commands
##### Run
```console
time deno run prime.js
```

#### Result
- 7.968s
- 7.817s
- 7.811s (lowest)
- 8.272s (highest)
- 7.954s

Medium: 7.9644s

## [.Net 6 C#](https://github.com/dotnet/runtime)
#### Commands
##### Build
```console
dotnet build --configuration Release
```

##### Run
```console
time ./bin/Release/net6.0/dotnet
```

#### Result
- 0.458s (highest)
- 0.448s
- 0.418s
- 0.456s 
- 0.416s (lowest)

Medium: 0.4392

## [Go](https://github.com/golang/go)
#### Commands
##### Build
```console
go build -ldflags "-s -w" ./main.go
```

##### Run
```console
time ./main
```


#### Result
- 0.677s
- 0.719s
- 0.580s
- 0.910s (highest)
- 0.555s (lowest)

Medium: 0.6882s

## [Rust](https://github.com/rust-lang/rust)
#### Commands
##### Build
```console
cargo build --release
```

##### Run
```console
time ./target/release/rust
```

#### Result
- 0.372s
- 0.368s
- 0.375s
- 0.376s (highest)
- 0.366s (lowest)

Medium: 0.3714s

## [Python](https://github.com/python/cpython)
#### Commands
##### Run
```console
time python main.py
```

#### Result
- 3.399s (lowest)
- 3.412s
- 3.400s
- 3.411s
- 3.539s (highest)

Medium: 3.4322s


## Ranking

| Position | Language  | Medium  | Lowest | Highest |
|----------|-----------|---------|--------|---------|
| 1        | Rust      | 0.3714s | 0.366s | 0.3714s |
| 2        | .Net 6 C# | 0.4392s | 0.416s | 0.458s  |
| 3        | Go        | 0.6882s | 0.555s | 0.910s  |
| 4        | Bun       | 0.9692s | 0.951s | 0.995s  |
| 5        | Python    | 3.4322s | 3.399s | 3.539s  |
| 6        | Deno      | 7.9644s | 7.811s | 8.272s  |
| 7        | Node      | 9.3964s | 9.225s | 9.547s  |
