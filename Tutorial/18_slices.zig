const std = @import("std");
const assert = std.debug.assert;

test "basic slices" {
    var array = [_]i32{ 1, 2, 3, 4 };

    // A slice is a pointer and a length.
    // slice.len : runtime (not compile time)
    const slice = array[0 .. array.len];
    assert(&slice[0] == &array[0]);
    assert(slice.len == array.len);

    assert(@typeOf(slice.ptr) == [*]i32);
    assert(@typeOf(&slice[0]) == *i32);
    assert(@ptrToInt(slice.ptr) == @ptrToInt(&slice[0]));
}
