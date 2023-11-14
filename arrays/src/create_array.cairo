use debug::PrintTrait;
// Required to create and use array methods
use array::ArrayTrait;

// Arrays are queues whose values can't be modified
// Once a memory slot is written to, it can't be overwritten (read only)
// Appends items is only at the end and remove items only at the beginning (pop_front)
fn main() {
    let mut a = ArrayTrait::new();
    a.append(0);
    a.append(1);
    a.append(2);

    let mut arr = ArrayTrait::<u128>::new();
    // or explicitly
    let mut arr: Array<u128> = ArrayTrait::new();
}
