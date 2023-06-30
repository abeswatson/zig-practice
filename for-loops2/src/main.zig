const std = @import("std");

pub fn main() !void {
    const name = "Abe";

    for (name) |ch| {
        std.debug.print("{c},", .{ch});
    }
    std.debug.print("\n", .{});
}

test "simple test" {}
