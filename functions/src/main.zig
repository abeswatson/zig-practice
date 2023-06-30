const std = @import("std");

fn add(a: i32, b: i32) i32 {
    var result = a + b;
    return result;
}

fn printName(name: []const u8) void {
    std.log.info("{s}", .{name});
}

// Functions
// * Statements
// * Naming rules
// * Return types
pub fn main() !void {
    var res = add(30, 40);

    std.log.info("30 + 40 = {}", .{res});

    printName("Abe Watson");
}
