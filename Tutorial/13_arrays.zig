const std = @import("std");
const assert = std.debug.assert;
const mem = std.mem;

// array literal
const message = [_]u8{'h', 'e', 'l', 'l', 'o'};

// get the size of an array
comptime {
    assert(message.len == 5);
}

// string literal is an array literal
const same_message = "hello";

comptime {
    assert(mem.eql(u8, message, same_message));
    assert(@typeOf(message) == @typeOf(same_message));
}

test "iterate over an array" {
    var sum: usize = 0;
    for (message) |byte| {
        sum += byte;
    }
    assert(sum == usize('h') + usize('e') + usize('l') * 2 + usize('o'));
}

var some_integers: [100]i32 = undefined;

test "modify an array" {
    for (some_integers) |*item, i| {
        item.* = @intCast(i32, i);
    }
    assert(some_integers[10] == 10);
    assert(some_integers[99] == 99);
}

// Array concatenation works at compile time
const part_one = [_]i32{1, 2, 3, 4};
const part_two = [_]i32{5, 6, 7, 8};
const all_of_it = part_one ++ part_two;
comptime {
    assert(mem.eql(i32, all_of_it, [_]i32{ 1, 2, 3, 4, 5, 6, 7, 8}));
}

// String is also array
const hello = "hello";
const world = "world";
const hello_world = hello ++ " " ++ world;
comptime {
    assert(mem.eql(u8, hello_world, "hello world"));
}

// ** does repeating patterns
const pattern = "ab" ** 3;
comptime {
    assert(mem.eql(u8, pattern, "ababab"));
}

// initialize an array to zero
const all_zero = [_]u16{0} ** 10;
comptime {
    assert(all_zero.len == 10);
    assert(all_zero[5] == 0);
}

// use compile-time code to initialize an array
var fancy_array = init: {
    var initial_value: [10]Point = undefined;
    for (initial_value) |*pt, i| {
        pt.* = Point {
            .x = @intCast(i32, i),
            .y = @intCast(i32, i) * 2,
        };
    }
    break :init initial_value;
};

const Point = struct {
    x: i32,
    y: i32,
};

test "compile-time array initialization" {
    assert(fancy_array[4].x == 4);
    assert(fancy_array[4].y == 8);
}