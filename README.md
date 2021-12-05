# Powertools

This gem provides some extensions to Ruby classes that make my life a lot easier.

It doesn't aim to be a comprehensive list of improvements, but rather a curated
list of things I find myself encountering frequently.

# Usage

Install Powertools with `gem install powertools`.

Then, you can add `require 'powertools'` to your Ruby file to access all the
features provided by Powertools.

You may also want to only use certain features.

You can currently also use the following to selectively add features:

- `require 'powertool/maybe_chain'`
- `require 'powertool/range'`

# Warning about Breaking Changes

Some features may introduce breaking changes to the Ruby standard library.
These 'breaking changes' are generally minor changes which in my opinion
conform to my expectations about how the language should work.

Still, I'll make an effor to list any changes that break a potential assumption
about the Ruby standard library here.

## `Range#each`

If you are relying on `(4..1).each { |_| ... }` to do nothing,
because it's going from a higher number to a lower number, you should not use
the `powertool/range` package.

# Range Improvements

`#sort` is provided as a helper method to ensure your range is from smallest
to largest.

`#each` now works backwards for all classes that include a `#pred` method.
This is only enabled when a range is between two elements of the same class.
(For example, `(date.today..100000000)` is a valid Ruby range. We fallback
to the default `#each` implementation for these.)

# Maybe Chains

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


