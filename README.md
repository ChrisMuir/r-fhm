# r-fhm

R package interface to the [flat_hash_map](https://github.com/skarupke/flat_hash_map) 
C++ header files, written by [Malte Skarupke](https://github.com/skarupke).
`flat_hash_map` provides a drop-in replacement
for `std::unordered_map` and `std::unordered_set`. The hash map provided by `flat_hash_map` 
considerably outperforms `std::unordered_map` in a number of different benchmarks.

For a detailed write-up on the methods used and some benchmarks, see [this](https://probablydance.com/2017/02/26/i-wrote-the-fastest-hashtable/) blogpost.

The code in file `inst/include/flat_hash_map.hpp` of this package incorporates edits 
provided in a pull request (seen [here](https://github.com/skarupke/flat_hash_map/pull/18)) 
by [Luiz Silveira](https://github.com/zertyz).


Also, check out [r-sparsepp](https://github.com/dselivanov/r-sparsepp) by [Dmitriy Selivanov](https://github.com/dselivanov). This is a very similar package that provides R users access to the [sparsepp](https://github.com/greg7mdp/sparsepp) hash map.

## Installation

```r
# install.packages("devtools")
devtools::install_github("ChrisMuir/r-fhm")
```

## Using `flat_hash_map` in an R package

To use C++ code from flat_hash_map:

1. In the `DESCRIPTION` file, add `LinkingTo: fhm`.
2. At the top of a C++ file, add: `#include <flat_hash_map.h>`.
3. Within that C++ file, use
```c++
ska::flat_hash_map<int, std::string> my_map;
```
in place of
```c++
std::unordered_map<int, std::string> my_map;
```

## License

Boost Software License, Version 1.0, see [here](http://www.boost.org/LICENSE_1_0.txt)
