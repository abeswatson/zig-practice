const std = @import("std");

const Month = enum(u32) {
    January,
    February,
    March,
    April,
    May,
    June,
    July,
    August,
    September,
    October,
    November,
    December,

    pub inline fn isNovember(self: Month) bool {
        return self == .November;
    }
};

pub fn main() !void {
    var month: Month = .August;

    std.log.info("Month is: {}, Size of Month: {}", .{ @enumToInt(month), @sizeOf(Month) });

    month = .November;
    std.log.info("Is November: {}", .{month.isNovember()});
}
