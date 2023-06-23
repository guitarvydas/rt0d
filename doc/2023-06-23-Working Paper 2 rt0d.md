```
(defstruct Datum
    (ptr (Attribute (rawptr)) .)
...)
```
- means `ptr` is a field which contains an object of type `rawptr`
- `.` means that the compiler generates a lambda that returns the value of that slot, i.e. the field `ptr` is simply a piece of data

```
(defstruct Datum
...
    (clone (Action (Datum) (Datum)) -)
...)
```
- means `clone` is a field which contains an action function (aka `proc`)
- the Action has one input - a `Datum`
- the Action results in one value - a `Datum`
- `-` means that the code for `clone` is external and is supplied by the developer in some other language (e.g. Odin, Pythhon, Common Lisp, etc.)

```
(defstruct Datum
...
    (reclaim (Action (Datum) ()) -)
...)
```
- means `clone` is a field which contains an action function (aka `proc`)
- the Action has one input - a `Datum`
- the Action has no result (it is a procedure with a side-effect, not a pure function)
- `-` means that the code for `reclaim` is external and is supplied by the developer in some other language (e.g. Odin, Pythhon, Common Lisp, etc.)

```
...
   (@ free ((slot $ ptr) (slot $ len)) ())
...
```
means call external procedure `free` with 2 inputs and 0 outputs

`$` means *self*
`(slot $ ptr)` means *self.ptr*

`(reclaim_reflection)`
means call internal procedure `reclaim_reflection` with 0 inputs and 0 outputs (self `$` is always supplied as an implicit arg
