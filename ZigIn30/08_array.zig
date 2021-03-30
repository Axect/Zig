const std = @import("std");

pub fn main() void {
    var array: [3]u32 = [_]u32{ 47, 47, 47 };
    var slice: []u32 = array[0..2];

    std.debug.print("length of array: {}\n", .{array.len});
    std.debug.print("length of slice: {}\n", .{slice.len});
    std.debug.print("slice: {}\n", .{slice});
}
