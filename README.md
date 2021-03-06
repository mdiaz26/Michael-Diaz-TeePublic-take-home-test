# Michael Diaz TeePublic Take Home Assessment

## Introduction

This program is designed to display options for different products based on user input. It is currently incomplete, but has some limited functionality.

## Installation

If you're running this program for the first time, make sure you have Ruby installed locally. You can check by running the command `ruby -v`. If necessary, follow the instructions on the [Ruby documentation](https://www.ruby-lang.org/en/documentation/installation/) to install it.

Before running the program, install the necessary gems by running the command `bundle` or `bundle install`. Once that is complete, you are ready to go!

## Instructions for use

To run the program, navigate into its root directory using a command line interface and run the command `ruby main.rb`. You will see a prompt to enter a product type as well as 0 or more product options. You can exit the program at any time by entering `q` or `Q`.

The product options are `tshirt`, `mug`, and `sticker`. `sticker` is currently functional, so if you enter `sticker`, you should expect to see:
```
sticker
Size: x-small, small, medium, large, x-large
Style: matte, glossy
```
If you add an option for size, you will see what styles are available in that size. Our current data only includes `small` stickers in a `matte` style, so the command `sticker small` would result in:
```
sticker small
Style: matte
```
There is a greater selection of `large` stickers:
```
sticker large
Style: matte, glossy
```

## Testing

To run tests, type `rspec spec` into the command line in the project directory.