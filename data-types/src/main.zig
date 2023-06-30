const std = @import("std");

pub fn main() anyerror!void {
    // Integers
    // i8, u8
    // i1, u1
    // i2, u2
    // i5, u5
    // i16, u16
    // i32, u32
    // i64, u64
    // i128, u128
    // isize, usize
    var age: u32 = 10;
    age = 30;

    std.debug.print("{}\n", .{age});

    // Floating-point
    // f32, f64
    var isOld: bool = false;
    _ = isOld;

    // Boolean
    // bool -> true, false
    var pi: f64 = 3.1415;
    _ = pi;

    // Struct
    // age -> i32 = 4 bytes
    const User = struct {
        age: i32,

        // member functions

        // static functions
    };

    const User2 = struct {
        user: User,
    };

    std.debug.print("Size of User: {}\n", .{@sizeOf(User)});

    std.debug.print("Size of User: {}\n", .{@sizeOf(User2)});

    // Enum
    const Months = enum(u8) { January, February, March, _ };

    var month: Months = .January;
    std.debug.print("Month: {}\n", .{month});

    // Unions
    const UserOrMonth = union(enum) {
        user: User,
        month: Months,
    };

    var userOrMonth: UserOrMonth = UserOrMonth{
        .user = User{
            .age = 20,
        },
    };

    switch (userOrMonth) {
        .user => |u| {
            std.log.info("User: {}\n", .{u});
        },
        else => {},
    }
}
