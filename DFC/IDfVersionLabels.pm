# ------------------------------------------------------------------- #
# IDfVersionLabels
# com.documentum.fc.client.IDfVersionLabels
# ------------------------------------------------------------------- #
package IDfVersionLabels;


use JPL::AutoLoader;
use JPL::Class 'com::documentum::fc::client::IDfVersionLabels';
use JPL::Class 'com::documentum::fc::common::IDfId';


sub getImplicitVersionLabel {
	my $self = shift;
	my $getImplicitVersionLabel = JPL::AutoLoader::getmeth('getImplicitVersionLabel',[],['java.lang.String']);
	return $$self->$getImplicitVersionLabel();
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

sub getVersionLabel {
	my ($self,$index) = @_;
	my $getVersionLabel = JPL::AutoLoader::getmeth('getVersionLabel',['int'],['java.lang.String']);
	return $$self->$getVersionLabel($index);
}

sub getVersionLabelCount {
	my $self = shift;
	my $getVersionLabelCount = JPL::AutoLoader::getmeth('getVersionLabelCount',[],['int']);
	return $$self->$getVersionLabelCount();
}

sub hasSymbolicVersionLabel {
	my $self = shift;
	my $hasSymbolicVersionLabel = JPL::AutoLoader::getmeth('hasSymbolicVersionLabel',[],['boolean']);
	return $$self->$hasSymbolicVersionLabel();
}


1;
#__EOF__