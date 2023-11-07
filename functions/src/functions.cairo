use debug::PrintTrait;

fn main() {
    // another_function('Hello', 'Cairo');
    // named_parameters();
    // statement_function();
    let value = return_value(); // store the return value into value
    value.print();

    let value_early = return_value_early();
    value_early.print();
}

fn another_function(message: felt252, name: felt252) {
    message.print();
    name.print();
}

// Named parameters allows you to give a specific names to the arguments
// in a more readable and self-descriptive way
fn named_parameters() {
    let first_arg = 3;
    let second_arg = 4;
    another_function(message: first_arg, name: second_arg);

    let message = 'Bonjour';
    let name = 'Cairo';
    another_function(:message, :name);
}

fn statement_function() {
    let y = {
        let x = 3;
        x + 1
    };
    y.print();
}

// return is implicit
// return can be used to return a value earlier
fn return_value() -> u8 {
    5
}

fn return_value_early() -> felt252 {
    return 'Hello, Cairo!';
    6
}
