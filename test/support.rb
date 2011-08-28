require "test/unit"
require "execjs/module"

begin
  require "execjs-async"
rescue ExecJS::RuntimeUnavailable => e
  warn e
  exit 2
end


