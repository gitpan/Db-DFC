# ------------------------------------------------------------------- #
# IDfGroup
# com.documentum.fc.client.IDfGroup
# ------------------------------------------------------------------- #
package IDfGroup;
@ISA = (IDfPersistentObject);


use JPL::AutoLoader;
use JPL::Class 'com::documentum::fc::client::IDfGroup';
use JPL::Class 'com::documentum::fc::common::IDfId';
use JPL::Class 'com::documentum::fc::common::IDfTime';


sub getAliasSetId {
	my $self = shift;
	my $getAliasSetId = JPL::AutoLoader::getmeth('getAliasSetId',[],['com.documentum.fc.common.IDfId']);
	my $tmp = $$self->$getAliasSetId();
	if ($tmp) {
		bless(\$tmp,IDfId);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getAllUsersNames {
	my ($self,$index) = @_;
	my $getAllUsersNames = JPL::AutoLoader::getmeth('getAllUsersNames',['int'],['java.lang.String']);
	return $$self->$getAllUsersNames($index);
}

sub getAllUsersNamesCount {
	my $self = shift;
	my $getAllUsersNamesCount = JPL::AutoLoader::getmeth('getAllUsersNamesCount',[],['int']);
	return $$self->$getAllUsersNamesCount();
}

sub getDescription {
	my $self = shift;
	my $getDescription = JPL::AutoLoader::getmeth('getDescription',[],['java.lang.String']);
	return $$self->$getDescription();
}

sub getGroupAddress {
	my $self = shift;
	my $getGroupAddress = JPL::AutoLoader::getmeth('getGroupAddress',[],['java.lang.String']);
	return $$self->$getGroupAddress();
}

sub getGroupName {
	my $self = shift;
	my $getGroupName = JPL::AutoLoader::getmeth('getGroupName',[],['java.lang.String']);
	return $$self->$getGroupName();
}

sub getGroupsNames {
	my ($self,$index) = @_;
	my $getGroupsNames = JPL::AutoLoader::getmeth('getGroupsNames',['int'],['java.lang.String']);
	return $$self->$getGroupsNames($index);
}

sub getGroupsNamesCount {
	my $self = shift;
	my $getGroupsNamesCount = JPL::AutoLoader::getmeth('getGroupsNamesCount',[],['int']);
	return $$self->$getGroupsNamesCount();
}

sub getModifyDate {
	my $self = shift;
	my $getModifyDate = JPL::AutoLoader::getmeth('getModifyDate',[],['com.documentum.fc.common.IDfTime']);
	my $tmp = $$self->$getModifyDate();
	if ($tmp) {
		bless(\$tmp,IDfTime);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getOwnerName {
	my $self = shift;
	my $getOwnerName = JPL::AutoLoader::getmeth('getOwnerName',[],['java.lang.String']);
	return $$self->$getOwnerName();
}

sub getUsersNames {
	my ($self,$index) = @_;
	my $getUsersNames = JPL::AutoLoader::getmeth('getUsersNames',['int'],['java.lang.String']);
	return $$self->$getUsersNames($index);
}

sub getUsersNamesCount {
	my $self = shift;
	my $getUsersNamesCount = JPL::AutoLoader::getmeth('getUsersNamesCount',[],['int']);
	return $$self->$getUsersNamesCount();
}

sub isGloballyManaged {
	my $self = shift;
	my $isGloballyManaged = JPL::AutoLoader::getmeth('isGloballyManaged',[],['boolean']);
	return $$self->$isGloballyManaged();
}

sub isPrivate {
	my $self = shift;
	my $isPrivate = JPL::AutoLoader::getmeth('isPrivate',[],['boolean']);
	return $$self->$isPrivate();
}

sub setAliasSetId {
	my ($self,$aliasId) = @_;
	my $setAliasSetId = JPL::AutoLoader::getmeth('setAliasSetId',['com.documentum.fc.common.IDfId'],[]);
	return $$self->$setAliasSetId($$aliasId);
}


1;
#__EOF__
