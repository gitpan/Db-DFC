# ------------------------------------------------------------------- #
# IDfDocbaseMap
# com.documentum.fc.client.IDfDocbaseMap
# ------------------------------------------------------------------- #
package IDfDocbaseMap;
@ISA = (IDfTypedObject);


use JPL::AutoLoader;
use JPL::Class 'com::documentum::fc::client::IDfDocbaseMap';
use JPL::Class 'com::documentum::fc::client::IDfTypedObject';


sub getDocbaseCount {
	my $self = shift;
	my $getDocbaseCount = JPL::AutoLoader::getmeth('getDocbaseCount',[],['int']);
	return $$self->$getDocbaseCount();
}

sub getDocbaseDescription {
	my ($self,$index) = @_;
	my $getDocbaseDescription = JPL::AutoLoader::getmeth('getDocbaseDescription',['int'],['java.lang.String']);
	return $$self->$getDocbaseDescription($index);
}

sub getDocbaseId {
	my ($self,$index) = @_;
	my $getDocbaseId = JPL::AutoLoader::getmeth('getDocbaseId',['int'],['java.lang.String']);
	return $$self->$getDocbaseId($index);
}

sub getDocbaseName {
	my ($self,$index) = @_;
	my $getDocbaseName = JPL::AutoLoader::getmeth('getDocbaseName',['int'],['java.lang.String']);
	return $$self->$getDocbaseName($index);
}

sub getHostName {
	my $self = shift;
	my $getHostName = JPL::AutoLoader::getmeth('getHostName',[],['java.lang.String']);
	return $$self->$getHostName();
}

sub getServerMap {
	my ($self,$index) = @_;
	my $getServerMap = JPL::AutoLoader::getmeth('getServerMap',['int'],['com.documentum.fc.client.IDfTypedObject']);
	my $tmp = $$self->$getServerMap($index);
	if ($tmp) {
		bless(\$tmp,IDfTypedObject);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getServerMapByName {
	my ($self,$docbaseName) = @_;
	my $getServerMapByName = JPL::AutoLoader::getmeth('getServerMapByName',['java.lang.String'],['com.documentum.fc.client.IDfTypedObject']);
	my $tmp = $$self->$getServerMapByName($docbaseName);
	if ($tmp) {
		bless(\$tmp,IDfTypedObject);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getServerVersion {
	my ($self,$index) = @_;
	my $getServerVersion = JPL::AutoLoader::getmeth('getServerVersion',['int'],['java.lang.String']);
	return $$self->$getServerVersion($index);
}


1;
#__EOF__