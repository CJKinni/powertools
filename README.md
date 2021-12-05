# Powertools

This gem provides some extensions to Ruby classes that make my life a lot easier.

It doesn't aim to be a comprehensive list of improvements, but rather a curated
list of things I find myself encountering frequently.

# Range Improvements

`#sort` is provided as a helper method to ensure your range is from smallest
to largest.

`#each` now works backwards for all classes that include a `#pred` method.

# `#maybe_chain`

`#maybe_chain` is added to `Array` and `Hash`.  It takes an array as an argument,
and attempts to access nested data based on the elements of the argument. If at
any point it cannot access an element, it will return nil without throwing an
error. This can be very useful for accessing deeply nested data structures, like
parsed JSON objects, which may have nil elements.

E.g.

```ruby
a = [1,2,3,{d:[9]}]
a.maybe_chain [0]
=> 1
a.maybe_chain [3]
=> {:d=>[1]}
a.maybe_chain [3, :d, 0]
=> 9
a.maybe_chain [4]
=> nil
a.maybe_chain [4, :missing_element]
=> nil
```


