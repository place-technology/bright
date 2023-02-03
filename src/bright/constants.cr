module Bright
  module Constants
    VERSION = {{ `shards version #{__DIR__}`.chomp.stringify }}

    DEFAULT_SINGLE_REQUEST_TIMEOUT = 60

    STATUS_CODES = {400 => "Bad Request", 412 => "A field can not be empty"}
  end
end
