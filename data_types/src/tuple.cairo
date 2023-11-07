use debug::PrintTrait;

// A tuple is a way  to group a number of values with different types 
// Tuple have a fixed length
// A tuple is considered a single compound element

// A unit type is a tuple that has no elements
// It's size is always 0 and it will not exists in the compiled code

fn main() {
    let tup: (u32, u64, bool) = (10, 20, true);

    // bind tup into 3 variables (destructuring)
    let (x, y, z): (u32, u64, bool) = tup;

    if (y == 20) {
        'y is 20!'.print();
    }
}
