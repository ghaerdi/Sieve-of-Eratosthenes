# About

Testing the performance of some languages and enviroments using the [Sieve of Eratosthenes](https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes) algorithm

# Results

## Ranking summary

| Position | Language | Version | Medium  | Lowest | Highest |
|----------|----------|---------|---------|--------|---------|
| 1        | Rust     | 1.75.0  | 0.271s  | 0.263s | 0.278s  |
| 2        | Zig      | 0.11.0  | 0.275s  | 0.273s | 0.280s  |
| 3        | Go       | 1.21.6  | 0.331s  | 0.298s | 0.331s  |
| 4        | .Net C#  | 8.0.101 | 0.333s  | 0.322s | 0.349s  |
| 5        | Bun      | 1.0.14  | 0.884s  | 0.874s | 0.891s  |
| 6        | Python   | 3.11.6  | 4.5s    | 4.390s | 4.601s  |
| 7        | Node     | 20.11.0 | 6.593s  | 6.559s | 6.651s  |
| 8        | Deno     | 1.40.3  | N/A     | N/A    | N/A     |

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
- 0.271s
- 0.263s
- 0.278s

Medium: 0.271s

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
- 0.304s
- 0.331s
- 0.298s

Medium: 0.331s

## [Zig](https://github.com/ziglang/zig)
#### Commands
##### Build
```console
zig build -Doptimize=ReleaseFast
```

##### Run
```console
time ./zig-out/bin/zig
```

#### Result
- 0.273s
- 0.273s
- 0.280s

Medium: 0.275s


## [Python](https://github.com/python/cpython)
#### Commands
##### Run
```console
time python main.py
```

#### Result
- 4.390s
- 4.509s
- 4.601s

Medium: 4.5s

## [Node](https://github.com/nodejs/node)
#### Commands
##### Run
```console
time node main.js
```

#### Result
- 6.559s
- 6.569s
- 6.651s

Medium: 6.593s
    
## [Deno](https://github.com/denoland/deno)
#### Commands
##### Run
```console
time deno run main.js
```

#### Result
Could not be tested

## [Bun](https://github.com/oven-sh/bun)
#### Commands
##### Run
```console
time bun run main.js
```

#### Result
- 0.874s
- 0.887s
- 0.891s

Medium: 0.884s

## [.Net C#](https://github.com/dotnet/runtime)
#### Commands
##### Build
```console
dotnet build --configuration Release
```

##### Run
```console
time ./bin/Release/net8.0/dotnet
```

#### Result
- 0.349s
- 0.322s
- 0.328s

Medium: 0.333s
