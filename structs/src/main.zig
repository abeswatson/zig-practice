const std = @import("std");

const User = struct {
    name: []const u8 = "Not Defined",
    age: u32,

    pub fn init(name: []const u8, age: u32) User {
        return User{
            .name = name,
            .age = age,
        };
    }

    pub fn printName(self: @This()) void {
        std.log.info("{s}", .{self.name});
    }
};

pub fn main() !void {
    const user = User.init("Abe", 23);

    std.log.info("{}", .{user});
    user.printName();
}
