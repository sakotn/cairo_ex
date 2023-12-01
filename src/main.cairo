fn fib(a: u128, b: u128, n: u128) -> u128 implicits(RangeCheck) {
    if n == 0_u128 {
        a
    } else {
        fib(b, a + b, n - 1_u128)
    }
}

enum Enum {
    a: felt252,
    b: felt252
}

fn match_enum(enum: Enum) -> felt252 {
  match enum {
    Enum::a(x) => { x },
    Enum::b(x) => { x },
  }
}

fn fib_box(a: Box<felt252>, b: Box<felt252>, n: Box<felt252>) -> Box<felt252> {
    let unboxed_n = n.unbox();
    if unboxed_n == 0 {
        a
    } else {
        fib(b, BoxTrait::new(a.unbox() + b.unbox()), BoxTrait::new(unboxed_n - 1),)
    }
}

fn fib_match(n: felt252) -> felt252 {
    match n {
        1 => 1,
        2 => 2,
        3 => 3,
        4 => 5,
        _ => { 5 * fib(n - 4) + 3 * fib(n - 5) }
    }
}
