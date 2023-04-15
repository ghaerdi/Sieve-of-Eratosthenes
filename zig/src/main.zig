const std = @import("std");

fn sieveOfEratosthenes(allocator: std.mem.Allocator, comptime n: u32) !std.ArrayList(u32) {
    var booleans = try std.ArrayList(bool).initCapacity(allocator, n);
    defer booleans.deinit();

    var primes = std.ArrayList(u32).init(allocator);
    const limit = std.math.sqrt(n);

    var i: u32 = 0;
    while (i < n) : (i += 1) {
        try booleans.append(true);
    }

    i = 2;
    while (i < limit) : (i += 1) {
        if (booleans.items[i]) {
            var j: u32 = i * i;
            while (j < n) : (j += i) {
                booleans.items[j] = false;
            }
        }
    }

    i = 2;
    while (i < n) : (i += 1) {
        if (booleans.items[i]) {
            try primes.append(i);
        }
    }

    return primes;
}

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    defer std.debug.assert(!gpa.deinit());

    const gpaAllocator = gpa.allocator();

    const primes = try sieveOfEratosthenes(gpaAllocator, 40_000_000);
    defer primes.deinit();

    const primesLen = std.mem.len(primes.items);
    std.debug.print("primes len: {}\n", .{primesLen});
    std.debug.print("last prime: {}\n", .{primes.items[primesLen - 1]});
}
