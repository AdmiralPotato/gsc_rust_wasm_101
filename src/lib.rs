#[no_mangle]
pub fn hello() -> u16 {
    420
}

#[no_mangle]
pub fn add(a: i32, b: i32) -> i32 {
    a + b
}
