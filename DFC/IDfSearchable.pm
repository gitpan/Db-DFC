# ------------------------------------------------------------------- #
# IDfSearchable
# com.documentum.fc.common.IDfSearchable
# ------------------------------------------------------------------- #
package IDfSearchable;


use JPL::AutoLoader;
use JPL::Class 'com::documentum::fc::common::IDfSearchable';


sub getKeyAt {
	my ($self,$index) = @_;
	my $getKeyAt = JPL::AutoLoader::getmeth('getKeyAt',['int'],['double']);
	return $$self->$getKeyAt($index);
}

sub getKeyCount {
	my $self = shift;
	my $getKeyCount = JPL::AutoLoader::getmeth('getKeyCount',[],['int']);
	return $$self->$getKeyCount();
}

sub isInSortedOrder {
	my $self = shift;
	my $isInSortedOrder = JPL::AutoLoader::getmeth('isInSortedOrder',[],['boolean']);
	return $$self->$isInSortedOrder();
}


1;
#__EOF__