/// A structure for storing a timestamp, with nanosecond precision
/// This is a doc comments
const Timestamp = struct {
    /// The number of seconds since the epoch
    seconds: i64,

    /// The number of nanoseconds past the second
    nanos: u32,

    /// Retunrs a `Timestamp` struct representing the Unix epoch
    pub fn unixEpoch() Timestamp {
        return Timestamp{
            .seconds = 0,
            .nanos = 0,
        };
    }
};
