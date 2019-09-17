// *T : pointer to exactly one item
// [*]T : pointer to unknown number of items.

const std = @import("std");
const assert = std.debug.assert;
const warn = std.debug.warn;

test "address of syntax" {
    const x: i32 = 1234;
    const x_ptr = &x;

    // Dereference
    assert(x_ptr.* == 1234);

    assert(@typeOf(x_ptr) == *const i32);

    var y: i32 = 5678;
    const y_ptr = &y;
    assert(@typeOf(y_ptr) == *i32);
    y_ptr.* += 1;
    assert(y == 5679);
}

test "pointer array access" {
    var array = [_]u8{ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
    const ptr = &array[2];
    assert(@typeOf(ptr) == *u8);

    assert(array[2] == 3);
    ptr.* += 1;
    assert(array[2] == 4);
}

pub fn main() void {
    var array = [_]f64{ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
    const ptr: [*]f64 = &array;
    const ptr_2 = ptr + 1;
    warn("{}\n", @typeName(@typeOf(ptr)));
    warn("{}\n", ptr_2[0]);
}