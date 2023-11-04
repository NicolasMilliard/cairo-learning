use debug::PrintTrait;

// const variables are available in the global scope and are immutable
const ONE_HOUR_INS_SECONDS: u32 = 3600;

fn main() {
    // mut indicates a variable is mutable
    let mut x = 5;
    x.print();
    x = 6;
    x.print();

    shadowChangeType();
}

fn shadow() {
    let x = 5;
    // shadowing allows us to change the value without changing the type
    // x is a new immutable variable
    let x = x + 1;
    {
        let x = x * 2;
        'Inner scope x value is:'.print();
        x.print();
    }
    'Outer scope x value is:'.print();
    x.print();
}

fn shadowChangeType() {
    let x: u64 = 2;
    x.print();
    // converts x to a felt (field element), type annotation is required
    let x: felt252 = x.into();
    x.print();
}
