# ------------------------------------------------------------------- #
# IDfAliasSet
# com.documentum.fc.client.IDfAliasSet
# ------------------------------------------------------------------- #
package IDfAliasSet;
@ISA = (IDfPersistentObject);

use JPL::AutoLoader;
use JPL::Class 'com::documentum::fc::client::IDfAliasSet';


use constant CATETORY_UNKNOWN		=>   0;
use constant CATETORY_USER			=>   1;
use constant CATETORY_GROUP			=>   2;
use constant CATETORY_USER_OR_GROUP =>   3;
use constant CATETORY_CABINET_PATH	=>   4;
use constant CATETORY_FOLDER_PATH	=>   5;
use constant CATETORY_ACL_NAME		=>   6;


sub findAliasIndex {
	my ($self,$name) = @_;
	my $findAliasIndex = JPL::AutoLoader::getmeth('findAliasIndex',['java.lang.String'],['int']);
	return $$self->$findAliasIndex($name);
}

sub getAliasCategory {
	my ($self,$index) = @_;
	my $getAliasCategory = JPL::AutoLoader::getmeth('getAliasCategory',['int'],['int']);
	return $$self->$getAliasCategory($index);
}

sub getAliasCount {
	my $self = shift;
	my $getAliasCount = JPL::AutoLoader::getmeth('getAliasCount',[],['int']);
	return $$self->$getAliasCount();
}

sub getAliasDescription {
	my ($self,$index) = @_;
	my $getAliasDescription = JPL::AutoLoader::getmeth('getAliasDescription',['int'],['java.lang.String']);
	return $$self->$getAliasDescription($index);
}

sub getAliasName {
	my ($self,$index) = @_;
	my $getAliasName = JPL::AutoLoader::getmeth('getAliasName',['int'],['java.lang.String']);
	return $$self->$getAliasName($index);
}

sub getAliasUserCategory {
	my ($self,$index) = @_;
	my $getAliasUserCategory = JPL::AutoLoader::getmeth('getAliasUserCategory',['int'],['int']);
	return $$self->$getAliasUserCategory($index);
}

sub getAliasValue {
	my ($self,$index) = @_;
	my $getAliasValue = JPL::AutoLoader::getmeth('getAliasValue',['int'],['java.lang.String']);
	return $$self->$getAliasValue($index);
}

sub getObjectDescription {
	my $self = shift;
	my $getObjectDescription = JPL::AutoLoader::getmeth('getObjectDescription',[],['java.lang.String']);
	return $$self->$getObjectDescription();
}

sub getObjectName {
	my $self = shift;
	my $getObjectName = JPL::AutoLoader::getmeth('getObjectName',[],['java.lang.String']);
	return $$self->$getObjectName();
}

sub getOwnerName {
	my $self = shift;
	my $getOwnerName = JPL::AutoLoader::getmeth('getOwnerName',[],['java.lang.String']);
	return $$self->$getOwnerName();
}

sub removeAlias {
	my ($self,$name) = @_;
	my $removeAlias = JPL::AutoLoader::getmeth('removeAlias',['java.lang.String'],[]);
	return $$self->$removeAlias($name);
}

sub removeAllAliases {
	my $self = shift;
	my $removeAllAliases = JPL::AutoLoader::getmeth('removeAllAliases',[],[]);
	return $$self->$removeAllAliases();
}

sub setAliasCategory {
	my ($self,$index,$aliasCategory) = @_;
	my $setAliasCategory = JPL::AutoLoader::getmeth('setAliasCategory',['int','int'],[]);
	return $$self->$setAliasCategory($index,$aliasCategory);
}

sub setAliasDescription {
	my ($self,$index,$aliasDescription) = @_;
	my $setAliasDescription = JPL::AutoLoader::getmeth('setAliasDescription',['int','java.lang.String'],[]);
	return $$self->$setAliasDescription($index,$aliasDescription);
}

sub setAliasName {
	my ($self,$index,$aliasName) = @_;
	my $setAliasName = JPL::AutoLoader::getmeth('setAliasName',['int','java.lang.String'],[]);
	return $$self->$setAliasName($index,$aliasName);
}

sub setAliasUserCategory {
	my ($self,$index,$aliasUserCategory) = @_;
	my $setAliasUserCategory = JPL::AutoLoader::getmeth('setAliasUserCategory',['int','int'],[]);
	return $$self->$setAliasUserCategory($index,$aliasUserCategory);
}

sub setAliasValue {
	my ($self,$index,$aliasValue) = @_;
	my $setAliasValue = JPL::AutoLoader::getmeth('setAliasValue',['int','java.lang.String'],[]);
	return $$self->$setAliasValue($index,$aliasValue);
}

sub setObjectDescription {
	my ($self,$objectDescription) = @_;
	my $setObjectDescription = JPL::AutoLoader::getmeth('setObjectDescription',['java.lang.String'],[]);
	return $$self->$setObjectDescription($objectDescription);
}

sub setObjectName {
	my ($self,$objectName) = @_;
	my $setObjectName = JPL::AutoLoader::getmeth('setObjectName',['java.lang.String'],[]);
	return $$self->$setObjectName($objectName);
}

sub setOwnerName {
	my ($self,$ownerName) = @_;
	my $setOwnerName = JPL::AutoLoader::getmeth('setOwnerName',['java.lang.String'],[]);
	return $$self->$setOwnerName($ownerName);
}


1;
#__EOF__