# ------------------------------------------------------------------- #
# IDfVersionTreeLabels
# com.documentum.fc.client.IDfVersionTreeLabels
# ------------------------------------------------------------------- #
package IDfVersionTreeLabels;


use JPL::AutoLoader;
use JPL::Class 'com::documentum::fc::client::IDfVersionTreeLabels';
use JPL::Class 'com::documentum::fc::common::IDfId';


sub getChronicleId {
	my $self = shift;
	my $getChronicleId = JPL::AutoLoader::getmeth('getChronicleId',[],['com.documentum.fc.common.IDfId']);
	my $tmp = $$self->$getChronicleId();
	if ($tmp) {
		bless(\$tmp,IDfId);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getObjectIdFromVersionLabel {
	my ($self,$label) = @_;
	my $getObjectIdFromVersionLabel = JPL::AutoLoader::getmeth('getObjectIdFromVersionLabel',['java.lang.String'],['com.documentum.fc.common.IDfId']);
	my $tmp = $$self->$getObjectIdFromVersionLabel($label);
	if ($tmp) {
		bless(\$tmp,IDfId);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getVersion {
	my ($self,$index) = @_;
	my $getVersion = JPL::AutoLoader::getmeth('getVersion',['int'],['com.documentum.fc.client.IDfVersionLabels']);
	my $tmp = $$self->$getVersion($index);
	if ($tmp) {
		bless(\$tmp,IDfVersionLabels);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getVersionCount {
	my $self = shift;
	my $getVersionCount = JPL::AutoLoader::getmeth('getVersionCount',[],['int']);
	return $$self->$getVersionCount();
}

sub getVersionLabel {
	my ($self,$index) = @_;
	my $getVersionLabel = JPL::AutoLoader::getmeth('getVersionLabel',['int'],['java.lang.String']);
	return $$self->$getVersionLabel($index);
}

sub getVersionLabelCount {
	my ($self,$includeImplicit,$symbolicFirst) = @_;
	my $getVersionLabelCount = JPL::AutoLoader::getmeth('getVersionLabelCount',['boolean','boolean'],['int']);
	return $$self->$getVersionLabelCount($includeImplicit,$symbolicFirst);
}

sub invalidate {
	my $self = shift;
	my $invalidate = JPL::AutoLoader::getmeth('invalidate',[],[]);
	return $$self->$invalidate();
}


1;
#__EOF__