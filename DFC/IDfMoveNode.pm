# ------------------------------------------------------------------- #
# IDfMoveNode
# com.documentum.operations.IDfMoveNode
# ------------------------------------------------------------------- #
package IDfMoveNode;
@ISA = (IDfOperationNode);


use JPL::AutoLoader;
use JPL::Class 'com::documentum::operations::IDfMoveNode';
use JPL::Class 'com::documentum::fc::client::IDfSysObject';
use JPL::Class 'com::documentum::fc::common::IDfId';


sub getObject {
	my $self = shift;
	my $getObject = JPL::AutoLoader::getmeth('getObject',[],['com.documentum.fc.client.IDfSysObject']);
	my $tmp = $$self->$getObject();
	if ($tmp) {
		bless(\$tmp,IDfSysObject);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getObjectId {
	my $self = shift;
	my $getObjectId = JPL::AutoLoader::getmeth('getObjectId',[],['com.documentum.fc.common.IDfId']);
	my $tmp = $$self->$getObjectId();
	if ($tmp) {
		bless(\$tmp,IDfId);
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

sub setSourceFolderId {
	my ($self,$sourceFolderId) = @_;
	my $setSourceFolderId = JPL::AutoLoader::getmeth('setSourceFolderId',['com.documentum.fc.common.IDfId'],[]);
	return $$self->$setSourceFolderId($$sourceFolderId);
}


1;
#__EOF__