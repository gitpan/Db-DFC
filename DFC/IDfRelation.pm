# ------------------------------------------------------------------- #
# IDfRelation
# com.documentum.fc.client.IDfRelation
# ------------------------------------------------------------------- #
package IDfRelation;
@ISA = (IDfPersistentObject);


use JPL::AutoLoader;
use JPL::Class 'com::documentum::fc::client::IDfRelation';
use JPL::Class 'com::documentum::fc::common::IDfId';
use JPL::Class 'com::documentum::fc::common::IDfTime';


sub getChildId {
	my $self = shift;
	my $getChildId = JPL::AutoLoader::getmeth('getChildId',[],['com.documentum.fc.common.IDfId']);
	my $tmp = $$self->$getChildId();
	if ($tmp) {
		bless(\$tmp,IDfId);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getChildLabel {
	my $self = shift;
	my $getChildLabel = JPL::AutoLoader::getmeth('getChildLabel',[],['java.lang.String']);
	return $$self->$getChildLabel();
}

sub getDescription {
	my $self = shift;
	my $getDescription = JPL::AutoLoader::getmeth('getDescription',[],['java.lang.String']);
	return $$self->$getDescription();
}

sub getEffectiveDate {
	my $self = shift;
	my $getEffectiveDate = JPL::AutoLoader::getmeth('getEffectiveDate',[],['com.documentum.fc.common.IDfTime']);
	my $tmp = $$self->$getEffectiveDate();
	if ($tmp) {
		bless(\$tmp,IDfTime);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getExpirationDate {
	my $self = shift;
	my $getExpirationDate = JPL::AutoLoader::getmeth('getExpirationDate',[],['com.documentum.fc.common.IDfTime']);
	my $tmp = $$self->$getExpirationDate();
	if ($tmp) {
		bless(\$tmp,IDfTime);
		return \$tmp;
	} else {
		return undef;
	}
}

sub getOrderNumber {
	my $self = shift;
	my $getOrderNumber = JPL::AutoLoader::getmeth('getOrderNumber',[],['int']);
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

sub getPermanentLink {
	my $self = shift;
	my $getPermanentLink = JPL::AutoLoader::getmeth('getPermanentLink',[],['boolean']);
	return $$self->$getPermanentLink();
}

sub getRelationName {
	my $self = shift;
	my $getRelationName = JPL::AutoLoader::getmeth('getRelationName',[],['java.lang.String']);
	return $$self->$getRelationName();
}

sub setChildId {
	my ($self,$child) = @_;
	my $setChildId = JPL::AutoLoader::getmeth('setChildId',['com.documentum.fc.common.IDfId'],[]);
	return $$self->$setChildId($$child);
}

sub setChildLabel {
	my ($self,$label) = @_;
	my $setChildLabel = JPL::AutoLoader::getmeth('setChildLabel',['java.lang.String'],[]);
	return $$self->$setChildLabel($label);
}

sub setDescription {
	my ($self,$desc) = @_;
	my $setDescription = JPL::AutoLoader::getmeth('setDescription',['java.lang.String'],[]);
	return $$self->$setDescription($desc);
}

sub setEffectiveDate {
	my ($self,$date) = @_;
	my $setEffectiveDate = JPL::AutoLoader::getmeth('setEffectiveDate',['com.documentum.fc.common.IDfTime'],[]);
	return $$self->$setEffectiveDate($$date);
}

sub setExpirationDate {
	my ($self,$date) = @_;
	my $setExpirationDate = JPL::AutoLoader::getmeth('setExpirationDate',['com.documentum.fc.commonIDfTime'],[]);
	return $$self->$setExpirationDate($$date);
}

sub setOrderNumber {
	my ($self,$no) = @_;
	my $setOrderNumber = JPL::AutoLoader::getmeth('setOrderNumber',['int'],[]);
	return $$self->$setOrderNumber($no);
}

sub setParentId {
	my ($self,$parent) = @_;
	my $setParentId = JPL::AutoLoader::getmeth('setParentId',['com.documentum.fc.common.IDfId'],[]);
	return $$self->$setParentId($$parent);
}

sub setPermanentLink {
	my ($self,$val) = @_;
	my $setPermanentLink = JPL::AutoLoader::getmeth('setPermanentLink',['boolean'],[]);
	return $$self->$setPermanentLink($val);
}

sub setRelationName {
	my ($self,$rName) = @_;
	my $setRelationName = JPL::AutoLoader::getmeth('setRelationName',['java.lang.String'],[]);
	return $$self->$setRelationName($rName);
}


1;
#__EOF__