const std = @import("std");
const assert = std.debug.assert;
const builtin = @import("builtin");

test "variable alignment" {
    var x: i32 = 1234;
    const align_of_i32 = @alignOf(@typeOf(x));
    assert(@typeOf(&x) == *i32);
    assert(*i32 == *align(align_of_i32) i32);
    if (builtin.arch == builtin.Arch.x86_64) {
        assert((*i32).alignment == 4);
    }
}
