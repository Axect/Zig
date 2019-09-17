const assert = @import("std").debug.assert;

test "init with undefined" {
    // variable must initialized
    var x: i32 = undefined;
    x = 1;
    assert(x == 1);
}