# ------------------------------------------------------------------- #
# IDfCopyNode
# com.documentum.operations.IDfCopyNode
# ------------------------------------------------------------------- #
package IDfCopyNode;
@ISA = (IDfOperationNode);


use JPL::AutoLoader;
use JPL::Class 'com::documentum::operations::IDfCopyNode';
use JPL::Class 'com::documentum::fc::common::IDfId';
use JPL::Class 'com::documentum::fc::client::IDfSysObject';


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

sub getNewObject {
	my $self = shift;
	my $getNewObject = JPL::AutoLoader::getmeth('getNewObject',[],['com.documentum.fc.client.IDfSysObject']);
	my $tmp = $$self->$getNewObject();
	if ($tmp) {
		bless(\$tmp,IDfSysObject);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getNewObjectId {
	my $self = shift;
	my $getNewObjectId = JPL::AutoLoader::getmeth('getNewObjectId',[],['com.documentum.fc.common.IDfId']);
	my $tmp = $$self->$getNewObjectId();
	if ($tmp) {
		bless(\$tmp,IDfId);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getNewObjectName {
	my $self = shift;
	my $getNewObjectName = JPL::AutoLoader::getmeth('getNewObjectName',[],['java.lang.String']);
	return $$self->$getNewObjectName();
}

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

sub setDestinationFolderId {
	my ($self,$destinationFolderId) = @_;
	my $setDestinationFolderId = JPL::AutoLoader::getmeth('setDestinationFolderId',['com.documentum.fc.common.IDfId'],[]);
	return $$self->$setDestinationFolderId($$destinationFolderId);
}

sub setNewObjectName {
	my ($self,$newObjectName) = @_;
	my $setNewObjectName = JPL::AutoLoader::getmeth('setNewObjectName',['java.lang.String'],[]);
	return $$self->$setNewObjectName($newObjectName);
}


1;
#__EOF__