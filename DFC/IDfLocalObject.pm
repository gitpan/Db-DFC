# ------------------------------------------------------------------- #
# IDfLocalObject
# com.documentum.registry.IDfLocalObject
# ------------------------------------------------------------------- #
package IDfLocalObject;
@ISA = (IDfClientRegistryObject);


use JPL::AutoLoader;
use JPL::Class 'com::documentum::registry::IDfLocalObject';


sub getChronicleId {
	my $self = shift;
	my $getChronicleId = JPL::AutoLoader::getmeth('getChronicleId',[],['java.lang.String']);
	return $$self->$getChronicleId();
}

sub getDocbaseObjectModified {
	my $self = shift;
	my $getDocbaseObjectModified = JPL::AutoLoader::getmeth('getDocbaseObjectModified',[],['java.lang.String']);
	return $$self->$getDocbaseObjectModified();
}

sub getLocalFileCreated {
	my $self = shift;
	my $getLocalFileCreated = JPL::AutoLoader::getmeth('getLocalFileCreated',[],['java.lang.String']);
	return $$self->$getLocalFileCreated();
}

sub getUserName {
	my $self = shift;
	my $getUserName = JPL::AutoLoader::getmeth('getUserName',[],['java.lang.String']);
	return $$self->$getUserName();
}

sub getVersion {
	my $self = shift;
	my $getVersion = JPL::AutoLoader::getmeth('getVersion',[],['java.lang.String']);
	return $$self->$getVersion();
}

sub setChronicleId {
	my ($self,$chronicleId) = @_;
	my $setChronicleId = JPL::AutoLoader::getmeth('setChronicleId',['java.lang.String'],[]);
	return $$self->$setChronicleId($chronicleId);
}

sub setDocbaseObjectModified {
	my ($self,$docbaseObjectModified) = @_;
	my $setDocbaseObjectModified = JPL::AutoLoader::getmeth('setDocbaseObjectModified',['java.lang.String'],[]);
	return $$self->$setDocbaseObjectModified($docbaseObjectModified);
}

sub setLocalFileCreated {
	my ($self,$localFileCreated) = @_;
	my $setLocalFileCreated = JPL::AutoLoader::getmeth('setLocalFileCreated',['java.lang.String'],[]);
	return $$self->$setLocalFileCreated($localFileCreated);
}

sub setUserName {
	my ($self,$userName) = @_;
	my $setUserName = JPL::AutoLoader::getmeth('setUserName',['java.lang.String'],[]);
	return $$self->$setUserName($userName);
}

sub setVersion {
	my ($self,$version) = @_;
	my $setVersion = JPL::AutoLoader::getmeth('setVersion',['java.lang.String'],[]);
	return $$self->$setVersion($version);
}


1;
#__EOF__