const std = @import("std");
const assert = std.debug.assert;

test "comptime vars" {
    var x: i32 = 1;
    comptime var y: i32 = 1;

    x += 1;
    y += 1;

    assert(x == 2);
    assert(y == 2);

    if (y != 2) {
        @compileError("wrong y value");
    }
}