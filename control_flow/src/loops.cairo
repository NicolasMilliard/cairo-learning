use debug::PrintTrait;

fn main() {
    return_loop();
}

fn again_loop() {
    let mut i: usize = 0;

    // Loops have to be run with the '--available-gas=XXX' flag
    // For example: scarb cairo-run --available-gas=2000000
    loop {
        if i > 10 {
            break;
        }
        if i == 5 {
            i += 1;
            // Tells the program to continue to the next iteration of the loop
            // In this case, it will not print 'again!' when i == 5
            continue;
        }
        'again!'.print();
        i += 1;
    }
}

fn return_loop() {
    let mut counter = 0;

    let result = loop {
        if counter == 10 {
            break counter * 2;
        }
        counter += 1;
    };

    'The result is '.print();
    result.print();
}
