const std = @import("std");
const assert = std.debug.assert;
const mem = std.mem;

test "string literals" {
    // In Zig a string literal is an array of bytes.
    const normal_bytes = "hello";
    assert(@typeOf(normal_bytes) == [5]u8);
    assert(normal_bytes.len == 5);
    assert(normal_bytes[1] == 'e');
    assert('e' == '\x65');
    assert(mem.eql(u8, "hello", "h\x65llo"));

    // A C string literal is a null terminated pointer
    const null_terminated_bytes = c"hello";
    assert(@typeOf(null_terminated_bytes) == [*]const u8);
    assert(null_terminated_bytes[5] == 0);
}