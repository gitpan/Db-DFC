# ------------------------------------------------------------------- #
# IDfContainment
# com.documentum.fc.client.IDfContainment
# ------------------------------------------------------------------- #
package IDfContainment;
@ISA = (IDfPersistentObject);


use JPL::AutoLoader;
use JPL::Class 'com::documentum::fc::client::IDfContainment';
use JPL::Class 'com::documentum::fc::common::IDfId';


sub getComponentId {
	my $self = shift;
	my $getComponentId = JPL::AutoLoader::getmeth('getComponentId',[],['com.documentum.fc.common.IDfId']);
	my $tmp = $$self->$getComponentId();
	if ($tmp) {
		bless(\$tmp,IDfId);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getCopyBehavior {
	my $self = shift;
	my $getCopyBehavior = JPL::AutoLoader::getmeth('getCopyBehavior',[],['int']);
	return $$self->$getCopyBehavior();
}

sub getFollowAssembly {
	my $self = shift;
	my $getFollowAssembly = JPL::AutoLoader::getmeth('getFollowAssembly',[],['boolean']);
	return $$self->$getFollowAssembly();
}

sub getOrderNumber {
	my $self = shift;
	my $getOrderNumber = JPL::AutoLoader::getmeth('getOrderNumber',[],['double']);
	return $$self->$getOrderNumber();
}

sub getParentId {
	my $self = shift;
	my $getParentId = JPL::AutoLoader::getmeth('getParentId',[],['com.documentum.fc.common.IDfId']);
	my $tmp = $$self->$getParentId();
	if ($tmp) {
		bless(\$tmp,IDfId);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getUseNodeVerLabel {
	my $self = shift;
	my $getUseNodeVerLabel = JPL::AutoLoader::getmeth('getUseNodeVerLabel',[],['boolean']);
	return $$self->$getUseNodeVerLabel();
}

sub getVersionLabel {
	my $self = shift;
	my $getVersionLabel = JPL::AutoLoader::getmeth('getVersionLabel',[],['java.lang.String']);
	return $$self->$getVersionLabel();
}


1;
#__EOF__