# ------------------------------------------------------------------- #
# IDfImportOperation
# com.documentum.operations.IDfImportOperation
# ------------------------------------------------------------------- #
package IDfImportOperation;
@ISA = (IDfOperation);


use JPL::AutoLoader;
use JPL::Class 'com::documentum::operations::IDfImportOperation';
use JPL::Class 'com::documentum::fc::common::IDfId';
use JPL::Class 'com::documentum::fc::common::IDfList';
use JPL::Class 'com::documentum::fc::client::IDfSession';


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

sub getKeepLocalFile {
	my $self = shift;
	my $getKeepLocalFile = JPL::AutoLoader::getmeth('getKeepLocalFile',[],['boolean']);
	return $$self->$getKeepLocalFile();
}

sub getNewObjects {
	my $self = shift;
	my $getNewObjects = JPL::AutoLoader::getmeth('getNewObjects',[],['com.documentum.fc.common.IDfList']);
	my $tmp = $$self->$getNewObjects();
	if ($tmp) {
		bless(\$tmp,IDfList);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getSession {
	my $self = shift;
	my $getSession = JPL::AutoLoader::getmeth('getSession',[],['com.documentum.fc.client.IDfSession']);
	my $tmp = $$self->$getSession();
	if ($tmp) {
		bless(\$tmp,IDfSession);
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

sub setKeepLocalFile {
	my ($self,$keepFile) = @_;
	my $setKeepLocalFile = JPL::AutoLoader::getmeth('setKeepLocalFile',['boolean'],[]);
	return $$self->$setKeepLocalFile($keepFile);
}

sub setSession {
	my ($self,$importSession) = @_;
	my $setSession = JPL::AutoLoader::getmeth('setSession',['com.documentum.fc.client.IDfSession'],[]);
	return $$self->$setSession($$importSession);
}

sub setVersionLabels {
	my ($self,$newVersionLabels) = @_;
	my $setVersionLabels = JPL::AutoLoader::getmeth('setVersionLabels',['java.lang.String'],[]);
	return $$self->$setVersionLabels($newVersionLabels);
}


1;
#__EOF__