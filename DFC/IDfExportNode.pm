# ------------------------------------------------------------------- #
# IDfExportNode
# com.documentum.operations.IDfExportNode
# ------------------------------------------------------------------- #
package IDfExportNode;
@ISA = (IDfOperationNode);


use JPL::AutoLoader;
use JPL::Class 'com::documentum::operations::IDfExportNode';
use JPL::Class 'com::documentum::fc::client::IDfSysObject';
use JPL::Class 'com::documentum::fc::common::IDfId';


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

sub getRecordInRegistry {
	my $self = shift;
	my $getRecordInRegistry = JPL::AutoLoader::getmeth('getRecordInRegistry',[],['int']);
	return $$self->$getRecordInRegistry();
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

sub setRecordInRegistry {
	my ($self,$registryRecordingPreference) = @_;
	my $setRecordInRegistry = JPL::AutoLoader::getmeth('setRecordInRegistry',['int'],[]);
	return $$self->$setRecordInRegistry($registryRecordingPreference);
}


1;
#__EOF__