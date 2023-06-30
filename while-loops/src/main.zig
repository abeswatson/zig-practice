const std = @import("std");

pub fn main() !void {
    while (generatedNumber()) |value| {
        std.log.info("Generated: {}", .{value});
    }
}

var number: i32 = 0;

fn generatedNumber() ?i32 {
    if (number < 10) {
        number += 1;
        return number - 1;
    }

    return null;
}
