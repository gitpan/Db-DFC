# ------------------------------------------------------------------- #
# IDfCheckinNode
# com.documentum.operations.IDfCheckinNode
# ------------------------------------------------------------------- #
package IDfCheckinNode;
@ISA = (IDfOperationNode);

use JPL::AutoLoader;
use JPL::Class 'com::documentum::operations::IDfCheckinNode';
use JPL::Class 'com::documentum::fc::client::IDfSysObject';
use JPL::Class 'com::documentum::fc::common::IDfId';


sub getCheckinVersion {
	my $self = shift;
	my $getCheckinVersion = JPL::AutoLoader::getmeth('getCheckinVersion',[],['int']);
	return $$self->$getCheckinVersion();
}

sub getContentPageNumber {
	my $self = shift;
	my $getContentPageNumber = JPL::AutoLoader::getmeth('getContentPageNumber',[],['int']);
	return $$self->$getContentPageNumber();
}

sub getDefaultFormat {
	my $self = shift;
	my $getDefaultFormat = JPL::AutoLoader::getmeth('getDefaultFormat',[],['java.lang.String']);
	return $$self->$getDefaultFormat();
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

sub getRetainLock {
	my $self = shift;
	my $getRetainLock = JPL::AutoLoader::getmeth('getRetainLock',[],['boolean']);
	return $$self->$getRetainLock();
}

sub getVersionLabels {
	my $self = shift;
	my $getVersionLabels = JPL::AutoLoader::getmeth('getVersionLabels',[],['java.lang.String']);
	return $$self->$getVersionLabels();
}

sub setCheckinVersion {
	my ($self,$checkinVersion) = @_;
	my $setCheckinVersion = JPL::AutoLoader::getmeth('setCheckinVersion',['int'],[]);
	return $$self->$setCheckinVersion($checkinVersion);
}

sub setContentPageNumber {
	my ($self,$pageNumber) = @_;
	my $setContentPageNumber = JPL::AutoLoader::getmeth('setContentPageNumber',['int'],[]);
	return $$self->$setContentPageNumber($pageNumber);
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

sub setRetainLock {
	my ($self,$retainLock) = @_;
	my $setRetainLock = JPL::AutoLoader::getmeth('setRetainLock',['boolean'],[]);
	return $$self->$setRetainLock($retainLock);
}

sub setVersionLabels {
	my ($self,$newVersionLabels) = @_;
	my $setVersionLabels = JPL::AutoLoader::getmeth('setVersionLabels',['java.lang.String'],[]);
	return $$self->$setVersionLabels($newVersionLabels);
}


1;
#__EOF__

