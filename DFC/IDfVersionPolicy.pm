# ------------------------------------------------------------------- #
# IDfVersionPolicy
# com.documentum.fc.client.IDfVersionPolicy
# ------------------------------------------------------------------- #
package IDfVersionPolicy;


use JPL::AutoLoader;
use JPL::Class 'com::documentum::fc::client::IDfVersionPolicy';


sub canCheckinFromFile {
	my $self = shift;
	my $canCheckinFromFile = JPL::AutoLoader::getmeth('canCheckinFromFile',[],['boolean']);
	return $$self->$canCheckinFromFile();
}

sub canVersion {
	my ($self,$toVersion) = @_;
	my $canVersion = JPL::AutoLoader::getmeth('canVersion',['int'],['boolean']);
	return $$self->$canVersion($toVersion);
}

sub getBranchLabel {
	my $self = shift;
	my $getBranchLabel = JPL::AutoLoader::getmeth('getBranchLabel',[],['java.lang.String']);
	return $$self->$getBranchLabel();
}

sub getDefaultCheckinVersion {
	my $self = shift;
	my $getDefaultCheckinVersion = JPL::AutoLoader::getmeth('getDefaultCheckinVersion',[],['int']);
	return $$self->$getDefaultCheckinVersion();
}

sub getLogComment {
	my $self = shift;
	my $getLogComment = JPL::AutoLoader::getmeth('getLogComment',[],['java.lang.String']);
	return $$self->$getLogComment();
}

sub getNextMajorLabel {
	my $self = shift;
	my $getNextMajorLabel = JPL::AutoLoader::getmeth('getNextMajorLabel',[],['java.lang.String']);
	return $$self->$getNextMajorLabel();
}

sub getNextMinorLabel {
	my $self = shift;
	my $getNextMinorLabel = JPL::AutoLoader::getmeth('getNextMinorLabel',[],['java.lang.String']);
	return $$self->$getNextMinorLabel();
}

sub getSameLabel {
	my $self = shift;
	my $getSameLabel = JPL::AutoLoader::getmeth('getSameLabel',[],['java.lang.String']);
	return $$self->$getSameLabel();
}

sub getVersionSummary {
	my ($self,$separator) = @_;
	my $getVersionSummary = JPL::AutoLoader::getmeth('getVersionSummary',['java.lang.String'],['java.lang.String']);
	return $$self->$getVersionSummary($separator);
}

sub isDefaultRetainLockOnCheckin {
	my $self = shift;
	my $isDefaultRetainLockOnCheckin = JPL::AutoLoader::getmeth('isDefaultRetainLockOnCheckin',[],['boolean']);
	return $$self->$isDefaultRetainLockOnCheckin();
}


1;
#__EOF__