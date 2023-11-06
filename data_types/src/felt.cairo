use debug::PrintTrait;

// Felt: default is felt252, felt is an integer: 0 <= x < P 
// P = 2^251 + 17 * 2^192 + 1

// Integers vs felt is mainly in the division field (prefers integers if possible)
// In Cairo, x/y always satisfy (x/y)*y == x 
// For example: 6/2 = 3
// Another example: 1/2 = (P+1)/2 (and not 0 or 0.5) so it satisfies:
// 2 * ((P+1)/2) = P+1 ≡ 1 mod[P]

fn main() {
    let x: felt252 = 3;
    let y: u32 = x.try_into().unwrap();
    x.print();
    y.print();

    shortString();
}

// felt252 is used to store strings up to 31 characters

fn shortString() {
    let string: felt252 = 'Bonjour';
    string.print();
}
