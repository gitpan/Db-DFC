# ------------------------------------------------------------------- #
# IDfMoveOperation
# com.documentum.operations.IDfMoveOperation
# ------------------------------------------------------------------- #
package IDfMoveOperation;
@ISA = (IDfOperation);


use JPL::AutoLoader;
use JPL::Class 'com::documentum::operations::IDfMoveOperation';
use JPL::Class 'com::documentum::fc::common::IDfId';
use JPL::Class 'com::documentum::fc::common::IDfList';


sub getDestinationFolderId {
	my $self = shift;
	my $getDestinationFolderId = JPL::AutoLoader::getmeth('getDestinationFolderId',[],['com.documentum.fc.common.IDfId']);
	my $tmp = $$self->$getDestinationFolderId();
	if ($tmp) {
		bless(\$tmp,IDfId);
		return \$tmp;
	} else {
		return undef;
	}
}

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

sub getSourceFolderId {
	my $self = shift;
	my $getSourceFolderId = JPL::AutoLoader::getmeth('getSourceFolderId',[],['com.documentum.fc.common.IDfId']);
	my $tmp = $$self->$getSourceFolderId();
	if ($tmp) {
		bless(\$tmp,IDfId);
		return \$tmp;
	} else {
		return undef;
	}
}

sub setDestinationFolderId {
	my ($self,$folderId) = @_;
	my $setDestinationFolderId = JPL::AutoLoader::getmeth('setDestinationFolderId',['com.documentum.fc.common.IDfId'],[]);
	return $$self->$setDestinationFolderId($$folderId);
}

sub setSourceFolderId {
	my ($self,$sourceFolderId) = @_;
	my $setSourceFolderId = JPL::AutoLoader::getmeth('setSourceFolderId',['com.documentum.fc.common.IDfId'],[]);
	return $$self->$setSourceFolderId($$sourceFolderId);
}


1;
#__EOF__