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
Text::Parser::ReadParser.parse_text(File.read("./data/prologue.en/prologue_2.data"))

## Pass String as object
Text::Parser::ReadParser.parse_text(data)

## Both examples will output something along those line:
```

```
 _______________________________________________________________________________________________________
|                                                                                                       |
|The flowers bloomed all over the horizon, hot, blazing, like hundreds of small suns.                   |
|Ripples of dust and scorched air burned everything in their path.                                      |
|You can feel the waves of invisible fire getting closer...your skin begins to burn..                   |
|                                                                                                       |
|Wake up !                                                                                              |
|                                                                                                       |
|You feel you are being shaken, thrown through the air, rocks and pebbles hit you with tremendous force.|
|                                                                                                       |
|Wake Up I said !                                                                                       |
|                                                                                                       |
|                                                (enter)                                                |
|_______________________________________________________________________________________________________|

```
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
