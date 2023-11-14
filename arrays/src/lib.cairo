use debug::PrintTrait;
// Required to create and use array methods
use array::ArrayTrait;

// Arrays are queues whose values can't be modified
// Once a memory slot is written to, it can't be overwritten (read only)
// Appends items is only at the end and remove items only at the beginning (pop_front)
// apppend and pop_front are not directly modifying values, but rather update pointers
fn main() {
    // create_array();
    // remove_items();
    // reading_items_with_at();
    // reading_items_with_get();
    // size_matters();
    multiple_types_array();
}

fn create_array() {
    let mut a = ArrayTrait::new();
    // Update the array
    a.append(0);
    a.append(1);
    a.append(2);

    let mut arr = ArrayTrait::<u128>::new();
    // or explicitly
    let mut arr: Array<u128> = ArrayTrait::new();
}

fn remove_items() {
    let mut arr: Array<u32> = ArrayTrait::new();
    arr.append(10);
    arr.append(1);
    arr.append(2);

    // Remove the first item
    // pop_front returns an Option
    let first_value = arr.pop_front().unwrap();
    first_value.print();
}

// get() or at() (or arr[index])
// get() returns an Option<Box<@T>> (Box is Cairo's smart-pointer) or None
// get() is useful when we're not sure if the index is valid
// at() returns an unbox() value (snapshot) or panics if the index is invalid
fn reading_items_with_at() {
    let mut arr: Array<u32> = ArrayTrait::new();
    arr.append(10);
    arr.append(20);

    let first_value = *arr.at(0); // 10
    first_value.print();
    let second_value = *arr.at(1); // 20
    second_value.print();
    let third_value = *arr.at(2); // Panic error
    third_value.print();
}

fn reading_items_with_get() -> u128 {
    let mut arr: Array<u128> = ArrayTrait::new();
    arr.append(100);
    // Edit value to 0 or 1 to see the difference
    let index_to_access = 1;

    match arr.get(index_to_access) {
        Option::Some(x) => { *x.unbox() },
        Option::None => {
            let mut data = ArrayTrait::new();
            data.append('out of bounds');
            panic(data)
        }
    }
}

// len() returns the length of an array (usize)
// is_empty check if an array is empty or not (boolean)
fn size_matters() {
    let mut arr: Array<u32> = ArrayTrait::new();
    arr.append(10);
    arr.append(20);

    let length = arr.len(); // 2
    length.print();
    let is_empty = arr.is_empty(); // false
    is_empty.print();
}

// Multiple types array is possible with Enum
#[derive(Copy, Drop)]
enum Data {
    Integer: u128,
    Felt: felt252,
    Tuple: (u32, u32)
}

fn multiple_types_array() {
    let mut arr: Array<Data> = ArrayTrait::new();
    arr.append(Data::Integer(10));
    arr.append(Data::Felt('Hello, Cairo!'));
    arr.append(Data::Tuple((10, 20)));
}

// span is a struct that represents a snapshot of an array
// It provides a safe and controled access to the elements of an array
fn span() {
    let mut arr: Array<u32> = ArrayTrait::new();
    arr.span();
}
