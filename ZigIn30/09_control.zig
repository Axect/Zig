const std = @import("std");

pub fn main() void {
    var array = [_]i32{ -1, 0, 1, 2 };

    for (array) |value| {
        std.debug.print("value: {}\nfoo_if: {}\nfoo_switch: {}\n", .{ value, foo_if(value), foo_switch(value) });
    }
}

fn foo_if(v: i32) []const u8 {
    if (v < 0) {
        return "negative";
    } else {
        return "non-negative";
    }
}

fn foo_switch(v: i32) []const u8 {
    switch (v) {
        0 => return "zero",
        else => return "nonzero",
    }
}
