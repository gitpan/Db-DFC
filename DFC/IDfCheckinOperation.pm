# ------------------------------------------------------------------- #
# IDfCheckinOperation
# com.documentum.operations.IDfCheckinOperation
# ------------------------------------------------------------------- #
package IDfCheckinOperation;
@ISA = (IDfOperation);


use JPL::AutoLoader;
use JPL::Class 'com::documentum::operations::IDfCheckinOperation';
use JPL::Class 'com::documentum::fc::common::IDfList';


use constant DF_NEXT_MAJOR		=> 0;
use constant DF_NEXT_MINOR		=> 1;
use constant DF_SAME_VERSION	=> 2;
use constant DF_BRANCH_VERSION	=> 3;
use constant DF_CANNOT_VERSION	=> 4;
		

sub getCheckinVersion {
	my $self = shift;
	my $getCheckinVersion = JPL::AutoLoader::getmeth('getCheckinVersion',[],['int']);
	return $$self->$getCheckinVersion();
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