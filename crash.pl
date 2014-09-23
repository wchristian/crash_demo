BEGIN { delete $ENV{PERL_STRICTURES_EXTRA} }
no indirect;
use Sub::Quote qw( quote_sub unquote_sub );
use Sub::Defer;
defer_sub "n" => sub { unquote_sub quote_sub "n" => "" };
END { undefer_all() }
exit if !fork;
