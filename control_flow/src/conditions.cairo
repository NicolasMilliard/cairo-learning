use debug::PrintTrait;

fn main() {
    simple_condition();
    conditional_let();
}

fn simple_condition() {
    let number = 5;

    if number == 5 {
        'condition was true'.print();
    } else {
        'condition was false'.print();
    }
}

fn conditional_let() {
    let condition = true;
    let number = if condition {
        5
    } else {
        6
    };

    if number == 5 {
        'condition was true'.print();
    }
}
