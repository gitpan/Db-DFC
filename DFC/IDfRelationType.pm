# ------------------------------------------------------------------- #
# IDfRelationType
# com.documentum.fc.client.IDfRelationType
# ------------------------------------------------------------------- #
package IDfRelationType;
@ISA = (IDfPersistentObject);


use JPL::AutoLoader;
use JPL::Class 'com::documentum::fc::client::IDfRelationType';


sub getChildType {
	my $self = shift;
	my $getChildType = JPL::AutoLoader::getmeth('getChildType',[],['java.lang.String']);
	return $$self->$getChildType();
}

sub getDescription {
	my $self = shift;
	my $getDescription = JPL::AutoLoader::getmeth('getDescription',[],['java.lang.String']);
	return $$self->$getDescription();
}

sub getParentType {
	my $self = shift;
	my $getParentType = JPL::AutoLoader::getmeth('getParentType',[],['java.lang.String']);
	return $$self->$getParentType();
}

sub getRelationName {
	my $self = shift;
	my $getRelationName = JPL::AutoLoader::getmeth('getRelationName',[],['java.lang.String']);
	return $$self->$getRelationName();
}

sub getSecurityType {
	my $self = shift;
	my $getSecurityType = JPL::AutoLoader::getmeth('getSecurityType',[],['java.lang.String']);
	return $$self->$getSecurityType();
}

sub setChildType {
	my ($self,$child) = @_;
	my $setChildType = JPL::AutoLoader::getmeth('setChildType',['java.lang.String'],[]);
	return $$self->$setChildType($child);
}

sub setDescription {
	my ($self,$desc) = @_;
	my $setDescription = JPL::AutoLoader::getmeth('setDescription',['java.lang.String'],[]);
	return $$self->$setDescription($desc);
}

sub setParentType {
	my ($self,$parent) = @_;
	my $setParentType = JPL::AutoLoader::getmeth('setParentType',['java.lang.String'],[]);
	return $$self->$setParentType($parent);
}

sub setRelationName {
	my ($self,$rName) = @_;
	my $setRelationName = JPL::AutoLoader::getmeth('setRelationName',['java.lang.String'],[]);
	return $$self->$setRelationName($rName);
}

sub setSecurityType {
	my ($self,$sType) = @_;
	my $setSecurityType = JPL::AutoLoader::getmeth('setSecurityType',['java.lang.String'],[]);
	return $$self->$setSecurityType($sType);
}


1;
#__EOF__