package MIME::Base2;

require 5.005_62;
use strict;
use warnings;

use vars qw( $VERSION );
$VERSION = '1.0';

sub import {
	*encode = \&encode_base2;
	*decode = \&decode_base2;
}

sub decode_base2 {
	return(pack "B*", shift);
}

sub encode_base2 {
	return(unpack "B*", shift);
}

1;
__END__

=head1 NAME

MIME::Base2 - Base2 encoder / decoder

=head1 SYNOPSIS

      use MIME::Base2;

      $encoded = MIME::Base2::encode($data);
      $decoded = MIME::Base2::decode($encoded);

=head1 DESCRIPTION

Encode data similar way like MIME::Base64 does.

=head1 EXPORT

NOTHING

=head1 AUTHOR

Stefan Gipper <stefanos@cpan.org>, http://www.coder-world.de/

=head1 SEE ALSO

perl(1), MIME::Base64(3pm).

=cut
