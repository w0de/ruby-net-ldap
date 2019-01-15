# -*- ruby encoding: utf-8 -*-
##
# BER extensions to +true+.
module Net::BER::Extensions::TrueClass
  ##
  # Converts +true+ to the BER wireline representation of +true+.
  def to_ber
    # http://tools.ietf.org/html/rfc4511#section-5.1
    "\x01\x01\xFF".force_encoding("ASCII-8BIT")
  end
end
