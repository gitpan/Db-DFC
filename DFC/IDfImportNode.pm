# ------------------------------------------------------------------- #
# IDfImportNode
# com.documentum.operations.IDfImportNode
# ------------------------------------------------------------------- #
package IDfImportNode;
@ISA = (IDfOperation);


use JPL::AutoLoader;
use JPL::Class 'com::documentum::operations::IDfImportOperation';
use JPL::Class 'com::documentum::fc::common::IDfId';
use JPL::Class 'com::documentum::fc::client::IDfSysObject';


sub getDefaultFormat {
	my $self = shift;
	my $getDefaultFormat = JPL::AutoLoader::getmeth('getDefaultFormat',[],['java.lang.String']);
	return $$self->$getDefaultFormat();
}

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

sub getDocbaseObjectType {
	my $self = shift;
	my $getDocbaseObjectType = JPL::AutoLoader::getmeth('getDocbaseObjectType',[],['java.lang.String']);
	return $$self->$getDocbaseObjectType();
}

sub getFilePath {
	my $self = shift;
	my $getFilePath = JPL::AutoLoader::getmeth('getFilePath',[],['java.lang.String']);
	return $$self->$getFilePath();
}

sub getFormat {
	my $self = shift;
	my $getFormat = JPL::AutoLoader::getmeth('getFormat',[],['java.lang.String']);
	return $$self->$getFormat();
}

sub getKeepLocalFile {
	my $self = shift;
	my $getKeepLocalFile = JPL::AutoLoader::getmeth('getKeepLocalFile',[],['boolean']);
	return $$self->$getKeepLocalFile();
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

sub getVersionLabels {
	my $self = shift;
	my $getVersionLabels = JPL::AutoLoader::getmeth('getVersionLabels',[],['java.lang.String']);
	return $$self->$getVersionLabels();
}

sub setDestinationFolderId {
	my ($self,$destinationFolderId) = @_;
	my $setDestinationFolderId = JPL::AutoLoader::getmeth('setDestinationFolderId',['com.documentum.fc.common.IDfId'],[]);
	return $$self->$setDestinationFolderId($$destinationFolderId);
}

sub setDocbaseObjectType {
	my ($self,$docbaseType) = @_;
	my $setDocbaseObjectType = JPL::AutoLoader::getmeth('setDocbaseObjectType',['java.lang.String'],[]);
	return $$self->$setDocbaseObjectType($docbaseType);
}

sub setFilePath {
	my ($self,$newFilePath) = @_;
	my $setFilePath = JPL::AutoLoader::getmeth('setFilePath',['java.lang.String'],[]);
	return $$self->$setFilePath($newFilePath);
}

sub setFormat {
	my ($self,$formatName) = @_;
	my $setFormat = JPL::AutoLoader::getmeth('setFormat',['java.lang.String'],[]);
	return $$self->$setFormat($formatName);
}

sub setKeepLocalFile {
	my ($self,$keepFile) = @_;
	my $setKeepLocalFile = JPL::AutoLoader::getmeth('setKeepLocalFile',['boolean'],[]);
	return $$self->$setKeepLocalFile($keepFile);
}

sub setNewObjectName {
	my ($self,$newObjectName) = @_;
	my $setNewObjectName = JPL::AutoLoader::getmeth('setNewObjectName',['java.lang.String'],[]);
	return $$self->$setNewObjectName($newObjectName);
}

sub setVersionLabels {
	my ($self,$newVersionLabels) = @_;
	my $setVersionLabels = JPL::AutoLoader::getmeth('setVersionLabels',['java.lang.String'],[]);
	return $$self->$setVersionLabels($newVersionLabels);
}


1;
#__EOF__