# ------------------------------------------------------------------- #
# IDfCopyOperation
# com.documentum.operations.IDfCopyOperation
# ------------------------------------------------------------------- #
package IDfCopyOperation;
@ISA = (IDfOperation);


use JPL::AutoLoader;
use JPL::Class 'com::documentum::operations::IDfCopyOperation';
use JPL::Class 'com::documentum::fc::common::IDfList';
use JPL::Class 'com::documentum::fc::common::IDfId';


use constant COPY_COPY                                              =>  1; #unknown
use constant COPY_OPTION_DONT_MARK_SYMBOLIC_LABELS                  =>  2; #unknown
use constant COPY_OPTION_PERFORM_MOVE                               =>  3; #unknown
use constant COPY_OPTIONS_PERFORM_MOVE_AND_DONT_MARK_SYMOLIC_LABELS =>  4; #unknown
use constant COPY_REFERENCE                                         =>  5; #unknown
use constant COPY_UNSPECIFIED                                       =>  6; #unknown


sub getCopyOptionsFlag {
	my $self = shift;
	my $getCopyOptionsFlag = JPL::AutoLoader::getmeth('getCopyOptionsFlag',[],['int']);
	return $$self->$getCopyOptionsFlag();
}

sub getCopyPreference {
	my $self = shift;
	my $getCopyPreference = JPL::AutoLoader::getmeth('getCopyPreference',[],['int']);
	return $$self->$getCopyPreference();
}

sub getDeepFolders {
	my $self = shift;
	my $getDeepFolders = JPL::AutoLoader::getmeth('getDeepFolders',[],['boolean']);
	return $$self->$getDeepFolders();
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

sub setDeepFolders {
	my ($self,$deepFolders) = @_;
	my $setDeepFolders = JPL::AutoLoader::getmeth('setDeepFolders',['boolean'],[]);
	return $$self->$setDeepFolders($deepFolders);
}

sub setDestinationFolderId {
	my ($self,$folderId) = @_;
	my $setDestinationFolderId = JPL::AutoLoader::getmeth('setDestinationFolderId',['com.documentum.fc.common.IDfId'],[]);
	return $$self->$setDestinationFolderId($$folderId);
}


1;
#__EOF__