#
# Instructions
#
# 1. Figure out what this function does
# 2. Write a unit test for it
# 3. Refactor to function for readability and efficiency
#
# NOTE: Do regular commits that show agile style iterations through the problem.
#
package SillyFunction;

sub group_products {
	my ($products) = @_;

	my %brand_type = ();
	my $grouped_products = [];

	foreach (@{$products}) {
		$brand_type{$_->{brand} . $_->{type}} = $_ if $_->{brand} and $_->{type} and not exists $brand_type{$_->{brand} . $_->{type}};
	}

	foreach (sort keys %brand_type) {
		push(@{$grouped_products}, $brand_type{$_});
	}

	return $grouped_products;
}

1;
