(module
  (import "add" "iadd"  (func $iadd (param i32 i32) (result i32)))
  (import "go"  "print" (func $print (param i32)))

  (func $fct1 (result i32)
    (return (call $iadd (i32.const 2) (i32.const 40)))
  )
  (func $fct2 (param i32 i32) (result i32)
    (return (call $iadd (get_local 0) (get_local 1)))
  )
  (func $fct3 (param i32 i32)
    (call $print (call $iadd (get_local 0) (get_local 1)))
  )
)
