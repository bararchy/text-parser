# text-parser

The text-parse lib is a part of another project of mine (https://github.com/bararchy/mos_game).
I decided to export it so I can use it in another projects.

The point of this lib is to get String data, parse it using specific symbols, and print it to the console in colors, bold, and you can even print it inside a box.

## Installation

Add it to `Projectfile`

```crystal
deps do
  github "bararchy/text-parser"
end
```

## Usage

```crystal
require "text-parser"

## Pass String from file:
Text::Parser::Box.parse(File.read("./data/prologue.en/prologue_2.data"), STDOUT)

## Pass String as object
Text::Parser::Box.parse(data, STDOUT)

## Both examples will output something along those line:
```
![alt text][output]

[output]: http://screencloud.net/v/d6JV "Example output"


The color codes are:
```
##color

as in:
text##red

will output the word "text" ind red
```
Right now the supported colors are:
```
##blue
##red
##yellow
##green
##bold
(enter)
options(a,b)
```

## Development

TODO: Write instructions for development

## Contributing

1. Fork it ( https://github.com/[your-github-name]/text-parser/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [bararchy](https://github.com/bararchy) bararchy - creator, maintainer
