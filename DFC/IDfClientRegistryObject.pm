# ------------------------------------------------------------------- #
# IDfClientRegistryObject
# com.documentum.registry.IDfClientRegistryObject
# ------------------------------------------------------------------- #
package IDfClientRegistryObject;


use JPL::AutoLoader;
use JPL::Class 'com::documentum::registry::IDfClientRegistryObject';


sub getDocbaseId {
	my $self = shift;
	my $getDocbaseId = JPL::AutoLoader::getmeth('getDocbaseId',[],['java.lang.String']);
	return $$self->$getDocbaseId();
}

sub getDocbaseName {
	my $self = shift;
	my $getDocbaseName = JPL::AutoLoader::getmeth('getDocbaseName',[],['java.lang.String']);
	return $$self->$getDocbaseName();
}

sub getDocbroker {
	my $self = shift;
	my $getDocbroker = JPL::AutoLoader::getmeth('getDocbroker',[],['java.lang.String']);
	return $$self->$getDocbroker();
}

sub getDomainName {
	my $self = shift;
	my $getDomainName = JPL::AutoLoader::getmeth('getDomainName',[],['java.lang.String']);
	return $$self->$getDomainName();
}

sub getFilePath {
	my $self = shift;
	my $getFilePath = JPL::AutoLoader::getmeth('getFilePath',[],['java.lang.String']);
	return $$self->$getFilePath();
}

sub getFolderPath {
	my $self = shift;
	my $getFolderPath = JPL::AutoLoader::getmeth('getFolderPath',[],['java.lang.String']);
	return $$self->$getFolderPath();
}

sub getFormat {
	my $self = shift;
	my $getFormat = JPL::AutoLoader::getmeth('getFormat',[],['java.lang.String']);
	return $$self->$getFormat();
}

sub getFormatDescription {
	my $self = shift;
	my $getFormatDescription = JPL::AutoLoader::getmeth('getFormatDescription',[],['java.lang.String']);
	return $$self->$getFormatDescription();
}

sub getObjectId {
	my $self = shift;
	my $getObjectId = JPL::AutoLoader::getmeth('getObjectId',[],['java.lang.String']);
	return $$self->$getObjectId();
}

sub getObjectName {
	my $self = shift;
	my $getObjectName = JPL::AutoLoader::getmeth('getObjectName',[],['java.lang.String']);
	return $$self->$getObjectName();
}

sub getTitle {
	my $self = shift;
	my $getTitle = JPL::AutoLoader::getmeth('getTitle',[],['java.lang.String']);
	return $$self->$getTitle();
}

sub getType {
	my $self = shift;
	my $getType = JPL::AutoLoader::getmeth('getType',[],['java.lang.String']);
	return $$self->$getType();
}

sub getUser {
	my $self = shift;
	my $getUser = JPL::AutoLoader::getmeth('getUser',[],['java.lang.String']);
	return $$self->$getUser();
}

sub isDirty {
	my $self = shift;
	my $isDirty = JPL::AutoLoader::getmeth('isDirty',[],['boolean']);
	return $$self->$isDirty();
}

sub loadFromRegistry {
	my ($self,$objId) = @_;
	my $loadFromRegistry = JPL::AutoLoader::getmeth('loadFromRegistry',['java.lang.String'],[]);
	return $$self->$loadFromRegistry($objId);
}

sub setDocbaseId {
	my ($self,$docbaseId) = @_;
	my $setDocbaseId = JPL::AutoLoader::getmeth('setDocbaseId',['java.lang.String'],[]);
	return $$self->$setDocbaseId($docbaseId);
}

sub setDocbaseName {
	my ($self,$docbaseName) = @_;
	my $setDocbaseName = JPL::AutoLoader::getmeth('setDocbaseName',['java.lang.String'],[]);
	return $$self->$setDocbaseName($docbaseName);
}

sub setDocbroker {
	my ($self,$docbroker) = @_;
	my $setDocbroker = JPL::AutoLoader::getmeth('setDocbroker',['java.lang.String'],[]);
	return $$self->$setDocbroker($docbroker);
}

sub setDomainName {
	my ($self,$domainName) = @_;
	my $setDomainName = JPL::AutoLoader::getmeth('setDomainName',['java.lang.String'],[]);
	return $$self->$setDomainName($domainName);
}

sub setFilePath {
	my ($self,$filePath) = @_;
	my $setFilePath = JPL::AutoLoader::getmeth('setFilePath',['java.lang.String'],[]);
	return $$self->$setFilePath($filePath);
}

sub setFolderPath {
	my ($self,$folderPath) = @_;
	my $setFolderPath = JPL::AutoLoader::getmeth('setFolderPath',['java.lang.String'],[]);
	return $$self->$setFolderPath($folderPath);
}

sub setFormat {
	my ($self,$format) = @_;
	my $setFormat = JPL::AutoLoader::getmeth('setFormat',['java.lang.String'],[]);
	return $$self->$setFormat($format);
}

sub setFormatDescription {
	my ($self,$formatDesc) = @_;
	my $setFormatDescription = JPL::AutoLoader::getmeth('setFormatDescription',['java.lang.String'],[]);
	return $$self->$setFormatDescription($formatDesc);
}

sub setObjectId {
	my ($self,$objId) = @_;
	my $setObjectId = JPL::AutoLoader::getmeth('setObjectId',['java.lang.String'],[]);
	return $$self->$setObjectId($objId);
}

sub setObjectName {
	my ($self,$objName) = @_;
	my $setObjectName = JPL::AutoLoader::getmeth('setObjectName',['java.lang.String'],[]);
	return $$self->$setObjectName($objName);
}

sub setTitle {
	my ($self,$title) = @_;
	my $setTitle = JPL::AutoLoader::getmeth('setTitle',['java.lang.String'],[]);
	return $$self->$setTitle($title);
}

sub setType {
	my ($self,$type) = @_;
	my $setType = JPL::AutoLoader::getmeth('setType',['java.lang.String'],[]);
	return $$self->$setType($type);
}

sub setUser {
	my ($self,$user) = @_;
	my $setUser = JPL::AutoLoader::getmeth('setUser',['java.lang.String'],[]);
	return $$self->$setUser($user);
}

sub updateRegistry {
	my $self = shift;
	my $updateRegistry = JPL::AutoLoader::getmeth('updateRegistry',[],[]);
	return $$self->$updateRegistry();
}


1;
#__EOF__