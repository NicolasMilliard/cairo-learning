use debug::PrintTrait;

// Integers has overflow checks
// From u8 to u256
// usize is an alias for u32 FOR NOW
// usize might be useful when in the future Cairo can be compiled to MIR
// integers are unsigned so they can not contains negative values
// u256 is basically a struct: {low: u128, high: u128}

fn sub_u8s(x: u8, y: u8) -> u8 {
    x - y
}

fn main() {
    // sub_u8s(1, 3); // cause an error (negative value)
    sub_u8s(3, 1); // no error
    // Possible integer values
    let decimal: u32 = 98222;
    let hex: u8 = 0xff;
    let octal: u16 = 0o04321;
    let binary: u8 = 0b01;

    decimal.print();
    hex.print();
    octal.print();
    binary.print();
}

