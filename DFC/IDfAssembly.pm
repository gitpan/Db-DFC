# ------------------------------------------------------------------- #
# IDfAssembly
# com.documentum.fc.client.IDfAssembly
# ------------------------------------------------------------------- #
package IDfAssembly;
@ISA = (IDfPersistentObject);


use JPL::AutoLoader;
use JPL::Class 'com::documentum::fc::client::IDfAssembly';
use JPL::Class 'com::documentum::fc::common::IDfId';

sub getBookId {
	my $self = shift;
	my $getBookId = JPL::AutoLoader::getmeth('getBookId',[],['com.documentum.fc.common.IDfId']);
	my $tmp = $$self->$getBookId();
	if ($tmp) {
		bless(\$tmp,IDfId);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getComponentChronicleId {
	my $self = shift;
	my $getComponentChronicleId = JPL::AutoLoader::getmeth('getComponentChronicleId',[],['com.documentum.fc.common.IDfId']);
	my $tmp = $$self->$getComponentChronicleId();
	if ($tmp) {
		bless(\$tmp,IDfId);
		return \$tmp;
	} else {
		return undef;
	}
}

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

sub getDepth {
	my $self = shift;
	my $getDepth = JPL::AutoLoader::getmeth('getDepth',[],['int']);
	return $$self->$getDepth();
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

sub setBookId {
	my ($self,$parentObjectId) = @_;
	my $setBookId = JPL::AutoLoader::getmeth('setBookId',['com.documentum.fc.commonIDfId'],[]);
	return $$self->$setBookId($$parentObjectId);
}

sub setComponentChronicleId {
	my ($self,$chronId) = @_;
	my $setComponentChronicleId = JPL::AutoLoader::getmeth('setComponentChronicleId',['com.documentum.fc.common.IDfId'],[]);
	return $$self->$setComponentChronicleId($$chronId);
}

sub setComponentId {
	my ($self,$objectId) = @_;
	my $setComponentId = JPL::AutoLoader::getmeth('setComponentId',['com.documentum.fc.common.IDfId'],[]);
	return $$self->$setComponentId($$objectId);
}

sub setDepth {
	my ($self,$depth) = @_;
	my $setDepth = JPL::AutoLoader::getmeth('setDepth',['int'],[]);
	return $$self->$setDepth($depth);
}

sub setOrderNumber {
	my ($self,$orderNumber) = @_;
	my $setOrderNumber = JPL::AutoLoader::getmeth('setOrderNumber',['int'],[]);
	return $$self->$setOrderNumber($orderNumber);
}

sub setParentId {
	my ($self,$parentObjectId) = @_;
	my $setParentId = JPL::AutoLoader::getmeth('setParentId',['com.documentum.fc.common.IDfId'],[]);
	return $$self->$setParentId($$parentObjectId);
}


1;
#__EOF__