# ------------------------------------------------------------------- #
# IDfCheckedOutObject
# com.documentum.registry.IDfCheckedOutObject
# ------------------------------------------------------------------- #
package IDfCheckedOutObject;
@ISA = (IDfClientRegistryObject);


use JPL::AutoLoader;
use JPL::Class 'com::documentum::registry::IDfCheckedOutObject';
use JPL::Class 'com::documentum::fc::common::IDfList';


sub clearModifiedAttrs {
	my $self = shift;
	my $clearModifiedAttrs = JPL::AutoLoader::getmeth('clearModifiedAttrs',[],[]);
	return $$self->$clearModifiedAttrs();
}

sub getCreatedAsLocalCopy {
	my $self = shift;
	my $getCreatedAsLocalCopy = JPL::AutoLoader::getmeth('getCreatedAsLocalCopy',[],['boolean']);
	return $$self->$getCreatedAsLocalCopy();
}

sub getKeepLocalFile {
	my $self = shift;
	my $getKeepLocalFile = JPL::AutoLoader::getmeth('getKeepLocalFile',[],['boolean']);
	return $$self->$getKeepLocalFile();
}

sub getModified {
	my $self = shift;
	my $getModified = JPL::AutoLoader::getmeth('getModified',[],['java.lang.String']);
	return $$self->$getModified();
}

sub getModifiedAttr {
	my ($self,$name) = @_;
	my $getModifiedAttr = JPL::AutoLoader::getmeth('getModifiedAttr',['java.lang.String'],['java.lang.String']);
	return $$self->$getModifiedAttr($name);
}

sub getModifiedAttrs {
	my $self = shift;
	my $getModifiedAttrs = JPL::AutoLoader::getmeth('getModifiedAttrs',[],['com.documentum.fc.common.IDfList']);
	my $tmp = $$self->$getModifiedAttrs();
	if ($tmp) {
		bless(\$tmp,IDfList);
		return \$tmp;
	} else {
		return undef;
	}
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

sub setCreatedAsLocalCopy {
	my ($self,$createdAsLocalCopy) = @_;
	my $setCreatedAsLocalCopy = JPL::AutoLoader::getmeth('setCreatedAsLocalCopy',['boolean'],[]);
	return $$self->$setCreatedAsLocalCopy($createdAsLocalCopy);
}

sub setKeepLocalFile {
	my ($self,$keepLocalFile) = @_;
	my $setKeepLocalFile = JPL::AutoLoader::getmeth('setKeepLocalFile',['boolean'],[]);
	return $$self->$setKeepLocalFile($keepLocalFile);
}

sub setModified {
	my ($self,$modified) = @_;
	my $setModified = JPL::AutoLoader::getmeth('setModified',['java.lang.String'],[]);
	return $$self->$setModified($modified);
}

sub setModifiedAttr {
	my ($self,$name,$value) = @_;
	my $setModifiedAttr = JPL::AutoLoader::getmeth('setModifiedAttr',['java.lang.String','java.lang.String'],[]);
	return $$self->$setModifiedAttr($name,$value);
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