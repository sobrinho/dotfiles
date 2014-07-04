require 'irb/completion'

IRB.conf[:PROMPT][:PLAIN] = {
  :PROMPT_I => "(%M) normal> ",
  :PROMPT_S => "(%M) string_continue> ",
  :PROMPT_C => "(%M) statement_continue> ",
  :PROMPT_N => "(%M) indent> ",
  :RETURN => "=> %s\n"
}

IRB.conf[:PROMPT_MODE] = :PLAIN
IRB.conf[:AUTO_INDENT] = true
IRB.conf[:EVAL_HISTORY] = 1000
IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:HISTORY_FILE] = File.expand_path("~/.irbhistory")
