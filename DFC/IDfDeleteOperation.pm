# ------------------------------------------------------------------- #
# IDfDeleteOperation
# com.documentum.operations.IDfDeleteOperation
# ------------------------------------------------------------------- #
package IDfDeleteOperation;
@ISA = (IDfOperation);


use JPL::AutoLoader;
use JPL::Class 'com::documentum::operations::IDfDeleteOperation';
use JPL::Class 'com::documentum::fc::common::IDfList';


use constant ALL_VERSIONS       =>  1; 
use constant SELECTED_VERSIONS  =>  2; 
use constant UNUSED_VERSIONS    =>  3; 


sub getObjects {
	my $self = shift;
	my $getObjects = JPL::AutoLoader::getmeth('getObjects',[],['com.documentum.fc.common.IDfList']);
	my $tmp = $$self->$getObjects();
	if ($tmp) {
		bless(\$tmp,IDfList);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getVersionDeletionPolicy {
	my $self = shift;
	my $getVersionDeletionPolicy = JPL::AutoLoader::getmeth('getVersionDeletionPolicy',[],['int']);
	return $$self->$getVersionDeletionPolicy();
}

sub setVersionDeletionPolicy {
	my ($self,$whichVersions) = @_;
	my $setVersionDeletionPolicy = JPL::AutoLoader::getmeth('setVersionDeletionPolicy',['int'],[]);
	return $$self->$setVersionDeletionPolicy($whichVersions);
}


1;
#__EOF__