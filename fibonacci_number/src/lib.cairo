use debug::PrintTrait;

// Run with: scarb cairo-run --available-gas=200000000 
fn main() {
    fibonacci(12);
}

// fib(n) = fib(n-1) + fib(n-2)
fn fibonacci(n: u32) -> u32 {
    if n <= 1 {
        return n;
    } else {
        return fibonacci(n - 1) + fibonacci(n - 2);
    }
}
