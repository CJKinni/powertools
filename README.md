# Powertools

This gem provides some extensions to Ruby classes that make my life a lot easier.

It doesn't aim to be a comprehensive list of improvements, but rather a curated
list of things I find myself encountering frequently.

# Range

`#sort` is provided as a helper method to ensure your range is from smallest
to largest.

`#each` now works backwards for all classes that include a `#pred` method.