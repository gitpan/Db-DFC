# ------------------------------------------------------------------- #
# IDfExportOperation
# com.documentum.operations.IDfExportOperation
# ------------------------------------------------------------------- #
package IDfExportOperation;
@ISA = (IDfOperation);


use JPL::AutoLoader;
use JPL::Class 'com::documentum::operations::IDfExportOperation';
use JPL::Class 'com::documentum::fc::common::IDfList';


use constant DONT_RECORD_IN_REGISTRY  =>    1;       # unknown
use constant RECORD_AS_LOCAL_FILE_IN_REGISTRY => 2;  # unknown
use constant RECORD_AS_VIEWED_FILE_IN_REGISTRY => 3; # unknown


sub getDefaultDestinationDirectory {
	my $self = shift;
	my $getDefaultDestinationDirectory = JPL::AutoLoader::getmeth('getDefaultDestinationDirectory',[],['java.lang.String']);
	return $$self->$getDefaultDestinationDirectory();
}

sub getDestinationDirectory {
	my $self = shift;
	my $getDestinationDirectory = JPL::AutoLoader::getmeth('getDestinationDirectory',[],['java.lang.String']);
	return $$self->$getDestinationDirectory();
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

sub getRecordInRegistry {
	my $self = shift;
	my $getRecordInRegistry = JPL::AutoLoader::getmeth('getRecordInRegistry',[],['int']);
	return $$self->$getRecordInRegistry();
}

sub setDestinationDirectory {
	my ($self,$dirPath) = @_;
	my $setDestinationDirectory = JPL::AutoLoader::getmeth('setDestinationDirectory',['java.lang.String'],[]);
	return $$self->$setDestinationDirectory($dirPath);
}

sub setRecordInRegistry {
	my ($self,$registryRecordingPreference) = @_;
	my $setRecordInRegistry = JPL::AutoLoader::getmeth('setRecordInRegistry',['int'],[]);
	return $$self->$setRecordInRegistry($registryRecordingPreference);
}


1;
#__EOF__