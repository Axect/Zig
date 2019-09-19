const std = @import("std");
const warn = std.debug.warn;

pub fn main() void {
    var v: @Vector(4, i32) = [4]i32{ 1, 2, 3, 4};
    const x: @Vector(4, i32) = [4]i32{ 4, 3, 2, 1 };
    v +%= x;
    const result: [4]i32 = v;
    for (result) |item, i| {
        warn("{}th element: {}\n", i, item);
    }
}
