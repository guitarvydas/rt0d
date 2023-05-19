1. run make to convert 0d.manual.rt into 0d.rt.1
2. parse 0d.rt.1 (example) using rt0d.ohm

- status: revelation: struct fields are slots with types and implementation.  Implementation is
1. refer to base code written in some other language
2. refer "&" to pseudo-code written in RT (script written in RT that might invoke code elsewhere)
3. 
4. return whatever is in the slot (a "value") (initially #undefined, assumed to be overwritten by descendant)
5. in-place RT code (anoynmous function, like 2, but, unnamed)


1. -
2. &name-of-rt-script
3. 
4. .
5. \Predicate (input types) (body)
5. \Action (input types) (output types) (body)
5. \Attribute (output types) (body)

---

name type location

location
- immediate
- script local
- toolbox
- #undefined

_type_
Action    (in) -> (out)
Filter    (in) -> (out)
Attribute      -> (out)
Predicate (in) ->

_destructuring input data_
fn (x:int, y:float, z:String) means that the single block of input data is destructured into 3 sub-types of data: int, float, String
then, we need to consider the location of such data, e.g. 
- "int" is probably immediate
- "float" might be immediate or boxed, where boxed means pointer-to-a-hunk-of-data
- "String" is probably boxed, where boxed means pointer-to-a-hunk-of-data

_destructuring output data_
fn (...) -> (x:int,y:float,z:String)
same as above except that it is with respect to the single block of output data
