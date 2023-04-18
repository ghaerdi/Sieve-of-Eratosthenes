# About

Testing the performance of some languages and enviroments using the [Sieve of Eratosthenes](https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes) algorithm

# Results

## Ranking summary

| Position | Language  | Medium  | Lowest | Highest |
|----------|-----------|---------|--------|---------|
| 1        | Rust      | 0.266s  | 0.24s  | 0.28s   |
| 2        | Go        | 0.279s  | 0.26s  | 0.29s   |
| 3        | .Net 7 C# | 0.3239s | 0.30s  | 0.34s   |
| 4        | Zig       | 0.361s  | 0.34s  | 0.37s   |
| 5        | Bun       | 0.859s  | 0.80s  | 0.91s   |
| 6        | Node      | 8.8929s | 8.62s  | 9.42s   |
| 7        | Deno      | 9.471s  | 9.15s  | 9.94s   |
| 8        | Python    | 12.709s | 11.95s | 13.56s  |

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
- 0.24s (lowest)
- 0.26s
- 0.26s
- 0.26s
- 0.27s
- 0.27s
- 0.27s
- 0.27s
- 0.28s (highest)
- 0.28s (highest)

Medium: 0.266s

## [Go](https://github.com/golang/go)
#### Commands
##### Build
```console
go build -ldflags="-s -w" ./main.go
```

##### Run
```console
time ./main
```

#### Result
- 0.26s (lowest)
- 0.27s
- 0.27s
- 0.27s
- 0.28s
- 0.28s
- 0.29s (highest)
- 0.29s (highest)
- 0.29s (highest)
- 0.29s (highest)

Medium: 0.279s

## [Zig](https://github.com/ziglang/zig)
#### Commands
##### Build
```console
zig build -Drelease-fast=true
```

##### Run
```console
time ./zig-out/bin/zig
```

#### Result
- 0.34s (lowest)
- 0.35s
- 0.36s
- 0.36s
- 0.36s
- 0.36s
- 0.37s (highest)
- 0.37s (highest)
- 0.37s (highest)
- 0.37s (highest)

Medium: 0.361s


## [Python](https://github.com/python/cpython)
#### Commands
##### Run
```console
time python main.py
```

#### Result
- 11.95s (lowest)
- 12.33s
- 12.34s
- 12.52s
- 12.62s
- 12.77s
- 12.91s
- 13.03s
- 13.06s
- 13.56s (higher)

Medium: 12.709s

## [Node](https://github.com/nodejs/node)
#### Commands
##### Run
```console
time node main.js
```

#### Result
- 8.62s (lowest)
- 8.65s
- 8.68s
- 8.68s
- 8.69s
- 8.79s
- 8.87s
- 9.24s
- 9.29s
- 9.42s (highest)

Medium: 8.8929s
    
## [Deno](https://github.com/denoland/deno)
#### Commands
##### Run
```console
time deno run main.js
```

#### Result
- 9.15s (lowest)
- 9.18s
- 9.18s
- 9.32s
- 9.33s
- 9.54s
- 9.54s
- 9.59s
- 9.94s (highest)
- 9.94s (highest)

Medium: 9.471s

## [Bun](https://github.com/oven-sh/bun)
#### Commands
##### Run
```console
time bun run main.js
```

#### Result
- 0.80s (lowest)
- 0.84s
- 0.84s
- 0.85s
- 0.85s
- 0.86s
- 0.87s
- 0.88s
- 0.89s
- 0.91s (highest)

Medium: 0.859s

## [.Net 7 C#](https://github.com/dotnet/runtime)
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
- 0.30s (lowest)
- 0.30s (lowest)
- 0.32s
- 0.33s
- 0.33s
- 0.33s
- 0.33s
- 0.33s
- 0.33s
- 0.34s (highest)

Medium: 0.3239s
