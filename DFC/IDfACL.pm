# ------------------------------------------------------------------- #
# IDfACL
# com.documentum.fc.client.IDfACL
# ------------------------------------------------------------------- #
package IDfACL;
@ISA = (IDfPersistentObject);


use JPL::AutoLoader;
use JPL::Class 'com::documentum::fc::client::IDfACL';


use constant DF_PERMIT_BROWSE       =>  2;
use constant DF_PERMIT_DELETE       =>  7;
use constant DF_PERMIT_NONE         =>  1;
use constant DF_PERMIT_NOTE         =>  4;
use constant DF_PERMIT_READ         =>  3;
use constant DF_PERMIT_RELATE       =>  5;
use constant DF_PERMIT_WRITE        =>  6;


sub destroyACL {
	my ($self,$force) = @_;
	my $destroyACL = JPL::AutoLoader::getmeth('destroyACL',['boolean'],[]);
	return $$self->$destroyACL($force);
}

sub getACLClass {
	my $self = shift;
	my $getACLClass = JPL::AutoLoader::getmeth('getACLClass',[],['int']);
	return $$self->$getACLClass();
}

sub getAccessorCount {
	my $self = shift;
	my $getAccessorCount = JPL::AutoLoader::getmeth('getAccessorCount',[],['int']);
	return $$self->$getAccessorCount();
}

sub getAccessorName {
	my ($self,$index) = @_;
	my $getAccessorName = JPL::AutoLoader::getmeth('getAccessorName',['int'],['java.lang.String']);
	return $$self->$getAccessorName($index);
}

sub getAccessorPermit {
	my ($self,$index) = @_;
	my $getAccessorPermit = JPL::AutoLoader::getmeth('getAccessorPermit',['int'],['int']);
	return $$self->$getAccessorPermit($index);
}

sub getAccessorXPermit {
	my ($self,$index) = @_;
	my $getAccessorXPermit = JPL::AutoLoader::getmeth('getAccessorXPermit',['int'],['int']);
	return $$self->$getAccessorXPermit($index);
}

sub getAccessorXPermitNames {
	my ($self,$index) = @_;
	my $getAccessorXPermitNames = JPL::AutoLoader::getmeth('getAccessorXPermitNames',['int'],['java.lang.String']);
	return $$self->$getAccessorXPermitNames($index);
}

sub getDescription {
	my $self = shift;
	my $getDescription = JPL::AutoLoader::getmeth('getDescription',[],['java.lang.String']);
	return $$self->$getDescription();
}

sub getDomain {
	my $self = shift;
	my $getDomain = JPL::AutoLoader::getmeth('getDomain',[],['java.lang.String']);
	return $$self->$getDomain();
}

sub getObjectName {
	my $self = shift;
	my $getObjectName = JPL::AutoLoader::getmeth('getObjectName',[],['java.lang.String']);
	return $$self->$getObjectName();
}

sub getPermit {
	my ($self,$accessorName) = @_;
	my $getPermit = JPL::AutoLoader::getmeth('getPermit',['java.lang.String'],['int']);
	return $$self->$getPermit($accessorName);
}

sub getXPermit {
	my ($self,$accessorName) = @_;
	my $getXPermit = JPL::AutoLoader::getmeth('getXPermit',['java.lang.String'],['int']);
	return $$self->$getXPermit($accessorName);
}

sub getXPermitList {
	my $self = shift;
	my $getXPermitList = JPL::AutoLoader::getmeth('getXPermitList',[],['java.lang.String']);
	return $$self->$getXPermitList();
}

sub getXPermitNames {
	my ($self,$accessorName) = @_;
	my $getXPermitNames = JPL::AutoLoader::getmeth('getXPermitNames',['java.lang.String'],['java.lang.String']);
	return $$self->$getXPermitNames($accessorName);
}

sub grant {
	my ($self,$accessorName,$accessorPermit,$extendedPermission) = @_;
	my $grant = JPL::AutoLoader::getmeth('grant',['java.lang.String','int','java.lang.String'],[]);
	return $$self->$grant($accessorName,$accessorPermit,$extendedPermission);
}

sub hasPermission {
	my ($self,$permission,$accessorName) = @_;
	my $hasPermission = JPL::AutoLoader::getmeth('hasPermission',['java.lang.String','java.lang.String'],['boolean']);
	return $$self->$hasPermission($permission,$accessorName);
}

sub isGloballyManaged {
	my $self = shift;
	my $isGloballyManaged = JPL::AutoLoader::getmeth('isGloballyManaged',[],['boolean']);
	return $$self->$isGloballyManaged();
}

sub isGroup {
	my ($self,$index) = @_;
	my $isGroup = JPL::AutoLoader::getmeth('isGroup',['int'],['boolean']);
	return $$self->$isGroup($index);
}

sub isInternal {
	my $self = shift;
	my $isInternal = JPL::AutoLoader::getmeth('isInternal',[],['boolean']);
	return $$self->$isInternal();
}

sub revoke {
	my ($self,$accessorName,$extendedPermission) = @_;
	my $revoke = JPL::AutoLoader::getmeth('revoke',['java.lang.String','java.lang.String'],[]);
	return $$self->$revoke($accessorName,$extendedPermission);
}

sub setACLClass {
	my ($self,$aclClass) = @_;
	my $setACLClass = JPL::AutoLoader::getmeth('setACLClass',['int'],[]);
	return $$self->$setACLClass($aclClass);
}

sub setDescription {
	my ($self,$description) = @_;
	my $setDescription = JPL::AutoLoader::getmeth('setDescription',['java.lang.String'],[]);
	return $$self->$setDescription($description);
}

sub setDomain {
	my ($self,$domain) = @_;
	my $setDomain = JPL::AutoLoader::getmeth('setDomain',['java.lang.String'],[]);
	return $$self->$setDomain($domain);
}

sub setObjectName {
	my ($self,$name) = @_;
	my $setObjectName = JPL::AutoLoader::getmeth('setObjectName',['java.lang.String'],[]);
	return $$self->$setObjectName($name);
}


1;
#__EOF__