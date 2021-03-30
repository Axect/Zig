const std = @import("std");

const LikeAnObject = struct {
    value: i32,

    fn print(self: *LikeAnObject) void {
        std.debug.print("value: {}\n", .{self.value});
    }
};

pub fn main() void {
    var obj = LikeAnObject{ .value = 47 };
    obj.print();
}
