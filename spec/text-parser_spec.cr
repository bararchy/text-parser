require "./spec_helper"

text_test_colorless = ["Lorem ipsum dolor sit amet, liber eloquentiam quo no,",
                      "usu at placerat hendrerit neglegentur.",
                      "Et unum detracto quo, pri minimum constituam ne.",
                      "Mei prima mnesarchum ne. Eum facilis expetenda ne."].join("\r\n")
text_test_colored = ["Lorem ipsum dolor sit amet, liber eloquentiam quo no,##red",
                     "usu at placerat hendrerit neglegentur.##green",
                     "Et unum detracto quo, pri minimum constituam ne.##blue",
                     "Mei prima mnesarchum ne. Eum facilis expetenda ne.##yellow"].join("\r\n")
text_test_bold = ["Lorem ipsum dolor sit amet, liber eloquentiam quo no,##bold",
                  "usu at placerat hendrerit neglegentur.##bold",
                  "Et unum detracto quo, pri minimum constituam ne.##bold",
                  "Mei prima mnesarchum ne. Eum facilis expetenda ne.##bold"].join("\r\n")
text_test_options_enter = ["(enter)",
                           "options(b,a)"].join("\r\n")
describe Text::Parser do
  Text::Parser::Box.parse(text_test_colorless)
  Text::Parser::Box.parse(text_test_colored)
  Text::Parser::Box.parse(text_test_bold)
  Text::Parser::Box.parse(text_test_options_enter)
  it "works" do
    false.should eq(true)
  end
end
