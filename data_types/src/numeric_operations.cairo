use debug::PrintTrait;

// Operators list:
// https://book.cairo-lang.org/appendix-02-operators-and-symbols.html#operators

fn main() {
    // addition
    let sum = 5_u8 + 10_u8;
    sum.print(); // 15

    // subtraction
    let difference = 95_u8 - 4_u8;
    difference.print(); // 91

    // multiplication
    let product = 4_u8 * 30_u8;
    product.print(); // 120

    // division
    let quotient = 56_u8 / 32_u8;
    quotient.print(); // 1

    // remainder
    let remainder = 43_u8 % 5_u8;
    remainder.print(); // 3
}
