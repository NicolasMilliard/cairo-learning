use debug::PrintTrait;

// Conver scalar types from one to another one with:
// try_into: if the conversion is fallible
// into: if the conversion is infallible

// try_info returns Option<T> so it must be unwrapped

fn main() {
    let my_felt252 = 10;
    let my_u8: u8 = my_felt252.try_into().unwrap();
    my_u8.print();

    let my_u16: u16 = my_u8.into();
    my_u16.print();
}
