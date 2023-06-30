const std = @import("std");

pub fn main() !void {
    var age: u32 = 21;

    // if (age >= 18) {
    //     std.log.info("You are an adult!", .{});
    // } else if (age >= 16) {
    //     std.log.info("You can drive", .{});
    // } else {
    //     std.log.info("Child", .{});
    // }

    switch (age) {
        1...10 => {
            std.log.info("Child", .{});
        },
        11...15 => {
            std.log.info("Tweener", .{});
        },
        16...18 => {
            std.log.info("Driver", .{});
        },
        getAge() => {
            std.log.info("Drink", .{});
        },
        else => {
            std.log.info("Adult", .{});
        },
    }
}

fn getAge() u32 {
    return 21;
}
